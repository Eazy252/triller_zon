part of 'controller.dart';

class SeeMoreView extends StatelessView<SeeMoreScreen, SeeMoreController> {
  const SeeMoreView(SeeMoreController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/back-icon.svg"),
            SizedBox(
              width: 30.h,
            ),
            ReusableText(
              text: "SeeMore",
              fontWeight: FontWeight.w700,
              size: 30.sp,
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => const SeeMoreCardVerticalView(),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}

class SeeMoreCardVerticalView extends StatelessWidget {
  const SeeMoreCardVerticalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class MovieCardHorizontalView extends StatelessWidget {
  const MovieCardHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset('assets/images/placeholder.jpg'),
              )
            ],
          ),
          SizedBox(height: 12.h),
          ReusableText(
            text: 'Hitman\'s Wife\'s Bodyguard',
            size: 12.sp,
            fontWeight: FontWeight.w700,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableText(
                text: '3.5',
                size: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 9.w),
              Icon(
                Icons.star,
                color: yellow,
              ),
              Icon(
                Icons.star,
                color: yellow,
              ),
              Icon(
                Icons.star,
                color: yellow,
              ),
              Icon(
                Icons.star,
                color: yellow,
              ),
              Icon(
                Icons.star,
                color: grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MovieCardVerticalView extends StatelessWidget {
  const MovieCardVerticalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 172.w,
          height: 273.h,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset('assets/images/tor.jpg'),
              )
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 197.w,
          height: 273.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableText(
                text: 'Hitman\'s Wife\'s\nBodyguard',
                size: 12.sp,
                fontWeight: FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ReusableText(
                    text: '3.5',
                    size: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 9.w),
                  Icon(
                    Icons.star,
                    color: yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: grey,
                  ),
                ],
              ),
              ReusableText(
                text: 'Action, Comedy, Crime',
                fontWeight: FontWeight.w400,
                size: 8.sp,
              ),
              SizedBox(height: 10.h),
              const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
