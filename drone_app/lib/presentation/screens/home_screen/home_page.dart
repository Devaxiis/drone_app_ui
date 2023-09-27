import 'package:drone_app/library.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.oxFF16182C,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: y * 0.075),

            /// #AppBar
            Row(
              children: [
                SizedBox(width: x * 0.05),
                const Image(
                  image: CustomIcons.logo,
                  height: 33,
                  width: 33,
                ),
                SizedBox(width: x * 0.05),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: CustomStrings.drone,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w500,
                          color: CustomColors.oxFF33BBF5,
                        ),
                      ),
                      TextSpan(
                        text: CustomStrings.kart,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: x * 0.42),
                const Image(
                    image: CustomIcons.userCircle, height: 33, width: 33),
              ],
            ),
            SizedBox(height: y * 0.04),

            /// #Horizontal Containers
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  /// First Horizontal Container
                  HorizontalContainersWidget(
                    image: Image(image: CustomImages.djAir2S),
                    headerText: CustomStrings.djiAir2S,
                    descriptionText: CustomStrings.djiAir2SDescription,
                  ),

                  /// Second Horizontal Container
                  HorizontalContainersWidget(
                    image: Image(image: CustomImages.djMatric30Series),
                    headerText: CustomStrings.djiMatrice30Series,
                    descriptionText:
                        CustomStrings.djiMatrice30SeriesDescription,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),

            /// #Header Text
            SizedBox(height: y * 0.03),
            Row(
              children: [
                SizedBox(width: x * 0.06),
                const Text(
                  CustomStrings.newHeaderText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontFamily: 'Circular Std',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: x * 0.03),
                const Image(image: CustomIcons.bubble, height: 34, width: 34),
              ],
            ),
            // SizedBox(height: y * 0.03),
            /// #Second Header Text
            Row(
              children: [
                SizedBox(width: x * 0.06),
                const Text(
                  CustomStrings.arrivals,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontFamily: 'Circular Std',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: x * 0.58),
                const Image(image: CustomIcons.full, height: 34, width: 34),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: x * 0.05),

                  /// #Sub Drone First Images
                  SizedBox(height: y * 0.03),
                  SubDroneCard(image: CustomImages.djMavicRed, imageLogo: CustomIcons.djiLogo),

                  /// #Sub Drone Second Image
                  SizedBox(width: x * 0.05),
                  SubDroneCard(image: CustomImages.djMavicSecond, imageLogo: CustomIcons.djiLogo),

                  /// #Sub Drone Third Image
                  SizedBox(width: x * 0.05),
                  SubDroneCard(image: CustomImages.djMatric30Series, imageLogo: CustomIcons.djiLogo),

                  SizedBox(width: x * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
