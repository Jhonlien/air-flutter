part of 'page.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  Widget buildContent() {
    return HomePage();
  }

  Widget customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container( 
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30, 
          right: defaultMargin, 
          left: defaultMargin
        ),
        decoration: BoxDecoration(
          color : kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomBottomNavigationItem(
              imgUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavigationItem(
              imgUrl: 'assets/icon_transaction.png',
              isSelected: false,
            ),
            CustomBottomNavigationItem(
              imgUrl: 'assets/icon_card.png',
              isSelected: false,
            ),
            CustomBottomNavigationItem(
              imgUrl: 'assets/icon_settings.png',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation()
        ],
      ),
    );
  }
}