import 'package:get/get.dart';

class MyTranslations extends Translations {
  final Map<String, Map<String, String>> translations;

  MyTranslations(this.translations);

  @override
  Map<String, Map<String, String>> get keys => translations;
}
