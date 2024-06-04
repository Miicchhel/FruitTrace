import 'package:flutter/material.dart';
import 'package:fruittrace/src/models/order_model.dart';
import 'package:fruittrace/src/services/utils_services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentDialog extends StatelessWidget {

  final OrderModel order;

  PaymentDialog({
    super.key,
    required this.order,
  });

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [

          // conteúdo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // título
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Pagamento com Pix',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
            
                // qr code
                QrImageView(
                  data: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQHRILbk7s7_0_YF2b8Zwopper1q2kfk6Lw&s',
                  version: QrVersions.auto,
                  size: 200.0,
                ),
            
                // vencimento
                Text(
                  'Vencimento: ${utilsServices.formatDataTime(order.overdueDateTime)}',
                  style: const TextStyle(fontSize: 12.0),
                ),
            
                // total
                Text(
                  'Total: ${utilsServices.priceToCurrency(order.total)}',
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          
                // btn copia e cola
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: const BorderSide(width: 2.0, color: Colors.green),
                    ),
                    icon: const Icon(
                      Icons.copy_all,
                      size: 15.0,
                    ),
                    label: const Text('Copia e cola'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),

          // botão de fechar
          Positioned(
            top: 0.0,
            right: 0.0,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}