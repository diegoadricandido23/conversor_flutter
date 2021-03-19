import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    switch(fromCurrency.name) {
      case 'Real' :
        returnValue = value * toCurrency.real;
        break;
      case 'Dolar' :
        returnValue = value * toCurrency.dolar;
        break;
      case 'Euro' :
        returnValue = value * toCurrency.euro;
        break;
      case 'Bitcoin' :
        returnValue = value * toCurrency.bitcoin;
        break;
      }

      fromText.text = returnValue.toStringAsFixed(2);
  }
}
