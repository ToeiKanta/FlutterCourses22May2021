import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("getImagePathLanguage", () {
    var controller = LoginController();
    test("should return flag th", () {
      var actual = controller.getImagePathLanguage(Language.th);
      expect(actual, "assets/thai-flag.png");
    });

    test("should return flag en", () {
      var actual = controller.getImagePathLanguage(Language.en);
      expect(actual, "assets/eng-flag.png");
    });
  });

  group("setLanguageSelected", () {
    test("should language selected as th", () {
      var controller = LoginController();
      controller.setLanguageSelected(Language.th);
      expect(controller.languageSelected.value, Language.th);
    });

    test("should language selected as en", () {
      var controller = LoginController();
      controller.setLanguageSelected(Language.en);
      expect(controller.languageSelected.value, Language.en);
    });
  });
}
