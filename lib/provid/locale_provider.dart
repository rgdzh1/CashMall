import 'package:CashMall/cashmall.dart';

class LocaleProvider with ChangeNotifier {
  LanguageModel _languageModel;

  get languageModel => _languageModel;

  setLocale(LanguageModel languageModel) {
    _languageModel = languageModel;
    notifyListeners();
  }
}
