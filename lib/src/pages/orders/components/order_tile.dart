import 'package:flutter/material.dart';
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
          children: [SizedBox(height: 100,)],
        ),
      ),
    );
  }
}