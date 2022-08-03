part of 'page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/image_destination_1.png'
          ) 
        )
      ),
    );
  }

  Widget customShadow() {
    return Container(
      width: double.infinity,
      height: 214,
      margin: EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors : [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ]
        )
      ),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin
      ),
      child: Column(
        children: [
          // Emblem
          Container(
            width: 108,
            height: 24,
            margin : EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_emblem.png'
                )
              )
            )
          ),

          // Title 
          Container(
            margin: EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung Lake Ciliwung Lake Ciliwung Lake Ciliwung",
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 24
                        )
                      ),
                      Text(
                        "Tanggerang",
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 16
                        )
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
                      "5.5",
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                    // AssetImage("assets/icon_star.png")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content()
        ],
      ),
    );
  }
}
