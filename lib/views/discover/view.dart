part of 'controller.dart';

class DiscoverView extends StatelessView<DiscoverScreen, DiscoverController> {
  const DiscoverView(DiscoverController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableText(
          text: 'Discover',
          size: 30.sp,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const MovieCardHorizontalView(),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: 20,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
              text: 'Latest',
              size: 20.sp,
              fontWeight: FontWeight.w700,
            ),
            ReusableText(
              text: 'SEE MORE',
              size: 12.sp,
              color: yellow,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 345.h,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => const MovieCardVerticalView(),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: 20,
          ),
        ),
      ],
    );
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
