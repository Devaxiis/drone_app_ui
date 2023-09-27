import 'package:drone_app/presentation/screens/home_screen_description/description_screen.dart';
import 'package:drone_app/services/constants/strings.dart';
import 'package:flutter/material.dart';
import '../../../../services/constants/colors.dart';


class HorizontalContainersWidget extends StatelessWidget {
  final Widget image;
  final String headerText;
  final String descriptionText;

  const HorizontalContainersWidget({
    super.key,
    required this.image,
    required this.headerText,
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DescriptionPage(),
        ),
      );
    }

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: 320,
          height: 250,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(-1.2, 0),
              end: Alignment(1.2, -0),
              colors: [
                CustomColors.oxFF424161,
                CustomColors.oxFF16182C,
              ],
            ),
            shape: RoundedRectangleBorder(
              side:
                  const BorderSide(width: 0.61, color: CustomColors.oxFF424161),
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
          child: Column(
            children: [
              /// #Image
              SizedBox(
                height: 100,
                width: 200,
                child: Transform.scale(
                  scaleX: 2.5,
                  scaleY: 2.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: image,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// #HederText
              Padding(
                padding: const EdgeInsets.only(right: 125),
                child: Text(
                  headerText,
                  style: const TextStyle(
                    fontSize: 18,
                    color: CustomColors.oxFFFFFFFF,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              /// # Description Text
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  descriptionText,
                  style: const TextStyle(
                    color: Color(0xFF666490),
                    fontSize: 14.66,
                    fontFamily: 'Circular Std',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SizedBox(width: 30),
            ],
          ),
        ),

        /// # Button Buy Now
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 124.59,
            height: 50,
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [
                  CustomColors.oxFF0069C7,
                  CustomColors.oxFF58EEFF,
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(29.93),
                  bottomRight: Radius.circular(29.93),
                ),
              ),
            ),
            child: const Center(
              child: Text(
                CustomStrings.buyNow,
                style: TextStyle(
                  color: Color(0xFF16182C),
                  fontSize: 15.88,
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
