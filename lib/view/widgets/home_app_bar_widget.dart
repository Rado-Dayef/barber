import 'package:barberr_application/constants/app_imports.dart';

class HomeAppBarWidget extends StatelessWidget {
  final bool isHome;
  final HomeController controller;

  const HomeAppBarWidget(this.isHome, this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return isHome
        ? FutureBuilder<UserModel>(
            future: controller.fetchUserData(),
            builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return AppShimmers.homeAppBarShimmer();
              } else if (snapshot.hasError) {
                return Icon(
                  Icons.error_outline,
                  color: AppColors.petrol,
                  size: 50.sp,
                );
              } else {
                return Obx(
                  () {
                    UserModel? user = snapshot.data;
                    return Row(
                      children: [

                        const GapWidget(15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.welcomeText,
                              style: AppFonts.fontLight14grey,
                            ),
                            const GapWidget(3),
                            Text(
                              user!.name.value,
                              style: AppFonts.fontHeavy17black,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }
            },
          )
        : Obx(
            () {
              return Row(
                children: [

                  const GapWidget(15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.welcomeText,
                        style: AppFonts.fontLight14grey,
                      ),
                      const GapWidget(3),
                      Text(
                        controller.currentUser.value.name.value,
                        style: AppFonts.fontHeavy17black,
                      ),
                    ],
                  ),
                ],
              );
            },
          );
  }
}
