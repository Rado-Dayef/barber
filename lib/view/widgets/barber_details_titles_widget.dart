import 'package:barberr_application/constants/app_imports.dart';

class BarberDetailsTitlesWidget extends StatelessWidget {
  final BarberModel? barber;
  final Widget? subTitle;
  final String title;

  const BarberDetailsTitlesWidget(
    this.title, {
    this.subTitle,
    this.barber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GapWidget(20),
        Row(
          children: [
            Text(
              title,
              style: AppFonts.fontHeavy16White.copyWith(
                color: AppColors.petrol,
              ),
            ),
          ],
        ),
        GapWidget(10),
        subTitle ??

        Divider(
          height: 25.sp,
          color: AppColors.petrol,
          thickness: 3.sp,
          indent: 25.w,
          endIndent: 25.w,
        ),
      ],
    );
  }
}
