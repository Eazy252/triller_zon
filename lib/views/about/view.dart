part of 'controller.dart';

class AboutView extends StatelessView<AboutScreen, AboutController> {
  const AboutView(AboutController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/back-gray-icon.svg"),
                SvgPicture.asset("assets/icons/bookmark_unselected.svg"),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 400.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset('assets/images/tor.jpg'),
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ReusableText(
              text: 'Hitman\'s Wife\'s Bodyguard',
              size: 12.sp,
              fontWeight: FontWeight.w700,
            ),
            const Icon(
              Icons.play_circle,
              color: Colors.red,
              size: 50.0,
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          ReusableText(
            text: '3.5',
            size: 14.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(width: 9.w),
          RatingBar.builder(
            unratedColor: white,
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            onRatingUpdate: (rating) {},
          ),
        ]),
        SizedBox(
          height: 120.h,
          child: const ReusableText(
              text:
                  "The world's most lethal odd couple - bodyguard Michael Bryce and Darius Kincaid - are back on anoth most lethal odd couple - bodyguard Michael Bryce anan Darius Kincaid.... Read More"),
        ),
        SizedBox(
          height: 50.h,
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              onPressed: () {},
              child: ReusableText(
                text: "Download",
                color: black,
              )),
        ),
      ],
    );
  }
}
