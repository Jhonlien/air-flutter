part of 'widget.dart';

class DestinationTile extends StatelessWidget {
  final String imageUrl, name, city;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.city,
    this.rating = 0.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl)
              )
            ),
          ),
          Expanded(
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
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
          Row(
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
        ],
      ),
    );
  }
}
