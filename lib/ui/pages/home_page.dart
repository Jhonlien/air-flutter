part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize : 16
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png')
                )
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin : EdgeInsets.symmetric(vertical: 30),
        child : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imageUrl: "assets/image_destination_1.png",
                name: "Lake Ciliwung",
                city: "Tangerang",
                rating: 0,
              ),
              DestinationCard(
                imageUrl: "assets/image_destination_2.png",
                name: "White Houses",
                city: "Spain",
                rating: 0,
              ),
              DestinationCard(
                imageUrl: "assets/image_destination_3.png",
                name: "Hill Heyo",
                city: "Monaco",
                rating: 0,
              ),
            ],
          ),
        )
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "New this Year",
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 18
              ),
            ),
            DestinationTile(
              imageUrl: "assets/image_destination_1.png",
              name: "Danau Ciliwung",
              city: "Singaraja",
              rating: 1.0,
            ),
            DestinationTile(
              imageUrl: "assets/image_destination_2.png",
              name: "Danau Ciliwung",
              city: "Singaraja",
              rating: 1.0,
            ),
            DestinationTile(
              imageUrl: "assets/image_destination_3.png",
              name: "Danau Ciliwung",
              city: "Singaraja",
              rating: 1.0,
            ),
            DestinationTile(
              imageUrl: "assets/image_destination_4.png",
              name: "Danau Ciliwung",
              city: "Singaraja",
              rating: 1.0,
            ),
            DestinationTile(
              imageUrl: "assets/image_destination_5.png",
              name: "Danau Ciliwung",
              city: "Singaraja",
              rating: 1.0,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations()
      ],
    );
  }
}
