import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("test getImagePathLanguage function", () {
    var controller = LoginController();
    test("should retrun flag th", () {
      var actual = controller.getImagePathLanguage(Language.th);
      expect(actual, "assets/thai-flag.png");
    });
    test("should retrun flag en", () {
      var actual = controller.getImagePathLanguage(Language.en);
      expect(actual, "assets/eng-flag.png");
    });
  });
  group("test setLanguageSelected function", () {
    var controller = LoginController();
    test("check languageSelected.value = th", () {
      controller.setLanguageSelected(Language.th);
      expect(controller.languageSelected.value, Language.th);
    });
    test("check languageSelected.value = en", () {
      controller.setLanguageSelected(Language.en);
      expect(controller.languageSelected.value, Language.en);
    });
  });
}
