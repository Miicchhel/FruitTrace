import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {

  // R$ valor formatado
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price);
  }

  // data formatada
  String formatDataTime(DateTime dataTime) {
    // return DateFormat('dd/MM/yyyy H:mm').format(dataTime);
    
    initializeDateFormatting();
    return DateFormat.yMd('pt_BR').add_Hm().format(dataTime);
  }

}