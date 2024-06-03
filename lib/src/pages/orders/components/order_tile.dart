import 'package:flutter/material.dart';
import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/models/order_model.dart';
import 'package:fruittrace/src/pages/orders/components/order_status_widget.dart';
import 'package:fruittrace/src/services/utils_services.dart';

class OrderTile extends StatelessWidget {

  final OrderModel order;

  OrderTile({
    super.key,
    required this.order,
  });

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    
    final checkIsOverdue = order.overdueDateTime.isBefore(DateTime.now());
    
    return Card(

      color: order.status == 'pending_payment' && checkIsOverdue ? Colors.red[50] : 
              order.status == 'refunded' ? Colors.orange[50] : Colors.greenAccent[50],

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        20.0,
      )),
      child: Theme(
        // para excluir o divisor da expansão
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

        child: ExpansionTile(
          // initiallyExpanded: order.status == 'pending_payment',
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pedido: ${order.id}, '),
              Text(
                utilsServices.formatDataTime(order.createdDateTime),
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  // lado esquerdo: lista dos peidos
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 150,
                      child: ListView(
                        children: order.items.map((orderItem) {
                          return _OrderItemWidget(
                            utilsServices: utilsServices,
                            orderItem: orderItem,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              
                  // divisória
                  VerticalDivider(
                    color: Colors.grey.shade300,
                    thickness: 2.0,
                    width: 10.0,
                  ),
              
                  // lado direito: status dos pedidos
                  Expanded(
                    flex: 2,
                    child: OrderStatusWidget(
                      status: order.status,
                      isOverdue: checkIsOverdue,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OrderItemWidget extends StatelessWidget {
  const _OrderItemWidget({
    super.key,
    required this.utilsServices, required this.orderItem,
  });

  final UtilsServices utilsServices;
  final CartItemModel orderItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Text(
            '${orderItem.quantity} ${orderItem.item.unit} ',
            style:
                const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(orderItem.item.itemName)),
          Text(utilsServices.priceToCurrency(orderItem.totalPrice()),),
        ],
      ),
    );
  }
}