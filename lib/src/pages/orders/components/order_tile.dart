import 'package:flutter/material.dart';
import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/models/order_model.dart';
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
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        20.0,
      )),
      child: Theme(
        // para excluir o divisor da expansão
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

        child: ExpansionTile(
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
            SizedBox(
              height: 150,
              // divisor
              child: Row(
                children: [
                  // lado esquerdo
                  Expanded(
                    flex: 3,
                    child: ListView(
                      children: order.items.map((orderItem) {
                        return _OrderItemWidget(
                          utilsServices: utilsServices,
                          orderItem: orderItem,
                        );
                      }).toList(),
                    ),
                  ),

                  // lado direito
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
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