import 'package:barberr_application/constants/app_imports.dart';

class BarberCardWidget extends StatelessWidget {
  final BarberModel barber;

  const BarberCardWidget(this.barber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.sp),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.sp, 4.sp),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 9.sp,
            spreadRadius: 0.0.sp,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 100.w,
            decoration: BoxDecoration(
              color: AppColors.petrol,
              borderRadius: BorderRadius.circular(20.sp),
            ),
            child: Hero(
              tag: barber.name + barber.email,
              child: Card(
                elevation: 0.sp,
                margin: EdgeInsets.all(0.sp),
                color: AppColors.transparent,
                child: CachedNetworkImageWidget(
                  imageUrl: "https://thebarbershop-waterford.ie/wp-content/uploads/2023/06/barber-shop-kilbarry.jpg",
                  placeholderColor: AppColors.white,
                ),
              ),
            ),
          ),
          GapWidget(10),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.sp,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: barber.name + barber.email,
                  child: Card(
                    elevation: 0.sp,
                    margin: EdgeInsets.all(0.sp),
                    color: AppColors.transparent,
                    child: Text(
                      barber.name,
                      style: AppFonts.fontHeavy17black,
                    ),
                  ),
                ),
                GapWidget(5),
                Text(
                  barber.phone,
                  style: AppFonts.fontLight14grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
