part of 'widget.dart';

class DestinationCard extends StatelessWidget {
  final String name, city, imageUrl;
  final double rating;

  const DestinationCard({
    Key? key,
    required this.name,
    required this.city,
    required this.imageUrl,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: 323,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(left: defaultMargin),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                    image: AssetImage(imageUrl)
                )
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 54.5,
                height: 30,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(defaultRadius))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icon_star.png")
                          )
                      ),
                    ),
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                    // AssetImage("assets/icon_star.png")
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
