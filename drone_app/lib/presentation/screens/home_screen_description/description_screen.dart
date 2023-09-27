import 'package:drone_app/library.dart';


class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CustomColors.oxFF16182C,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.05),

            /// #appBar items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///# icon arrow back
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: CustomIcons.arrowBack,
                      width: width * 0.1,
                    ),
                  ),

                  ///# icon time progress
                  Image(
                    image: CustomIcons.logo,
                    width: width * 0.1,
                  )
                ],
              ),
            ),

            /// #center images and icons

            Stack(
              alignment: const Alignment(0, 0.55),
              children: [
                ///# icon background oval
                Image(
                  image: CustomIcons.backgroundOval,
                  width: width * 0.85,
                ),
                Stack(
                  alignment: const Alignment(0, 0.71),
                  children: [
                    ///image drone
                    Image(
                      image: CustomImages.djMavicAirGrey,
                      width: width * 0.85,
                    ),

                    ///# icon 3d box
                    Image(
                      image: CustomIcons.box3d,
                      width: width * 0.085,
                    )
                  ],
                ),
              ],
            ),

            ///# button best seller
            Row(
              children: [
                SizedBox(width: width * 0.05),
                Container(
                  width: 110,
                  height: 25,
                  decoration: BoxDecoration(
                    color: CustomColors.oxFFFFFFFF.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(11.934),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(image: CustomIcons.lightningFill),
                      Text(
                        CustomStrings.bestSeller,
                        style:
                            CustomFonts.customContainerViewHeaderItemTextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.oxFFEAD776,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),

                /// #drone name - dji Matrices 30 Series
                Text(
                  CustomStrings.djiMatrice30Series,
                  style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.w800,
                      color: CustomColors.oxFFFFFFFF,
                      fontFamily: CustomFonts.circularStd),
                ),
              ],
            ),

            ///# drone about description
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.045, vertical: 5),
              child: Row(
                children: [
                  Text(
                    CustomStrings.descriptionSubText,
                    style: TextStyle(
                        fontFamily: CustomFonts.circularStd,
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.oxFF666590),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// #Container items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// #first container
                CustomContainerView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  gradient: null,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          /// #icon video fill
                          const Image(
                            image: CustomIcons.videoFill,
                            width: 30,
                          ),

                          ///Text description
                          Text(
                            CustomStrings.videoQuality,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(),
                          )
                        ],
                      ),

                      /// #subText
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Text(CustomStrings.videoQualitySubText,
                              style: CustomFonts
                                  .customContainerViewHeaderItemTextStyle(
                                color: CustomColors.oxFFFFFFFF,
                                fontSize: 18,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),

                ///# second container
                CustomContainerView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF191B32),
                      const Color(0xFF191B32),
                      const Color(0xFF16182C).withOpacity(0.2),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///# icon time attack fill
                          const Image(
                            image: CustomIcons.timeAttackFill,
                            width: 25,
                          ),
                          const SizedBox(width: 5),

                          ///# flight time text
                          Text(
                            CustomStrings.flightTime,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(),
                          )
                        ],
                      ),

                      ///# flight time subText
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            CustomStrings.flightTimeSubText,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(
                              color: CustomColors.oxFFFFFFFF,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///# third container
                CustomContainerView(
                  gradient: null,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ///# icon lighting
                          const Image(
                            image: CustomIcons.lightning,
                            width: 35,
                          ),

                          ///# text max speed
                          Text(
                            CustomStrings.maxSpeed,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///# max speed subText
                          Text(
                            CustomStrings.maxSpeedSubText,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(
                                    fontSize: 18,
                                    color: CustomColors.oxFFFFFFFF),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                ///# fourth container
                CustomContainerView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),

                  /// TODO : gradient yemagan to'g'rilash kerkak
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF191B32),
                      const Color(0xFF191B32),
                      const Color(0xFF16182C).withOpacity(0.2),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ///icon nfs
                          const Image(
                            image: CustomIcons.nfc,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),

                          ///# text connectivity
                          Text(
                            CustomStrings.connectivity,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),

                          ///# connectivity subText
                          Text(
                            CustomStrings.connectivitySubText,
                            style: CustomFonts
                                .customContainerViewHeaderItemTextStyle(
                                    fontSize: 18,
                                    color: CustomColors.oxFFFFFFFF),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            ///# buy now button
            const FooterButtonView(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
