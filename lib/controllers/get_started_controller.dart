import 'package:barberr_application/constants/app_imports.dart';

class GetStartedController extends GetxController {
  /// Go to login screen from get started screen by the Get Started button.
  void getStartedOnClick() {
    Get.offNamed(AppStrings.loginRoute);
  }
}
