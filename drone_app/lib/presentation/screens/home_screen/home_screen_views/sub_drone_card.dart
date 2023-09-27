import 'package:drone_app/services/constants/colors.dart';
import 'package:flutter/material.dart';

class SubDroneCard extends StatelessWidget {
  AssetImage image;
  AssetImage imageLogo;
   SubDroneCard({super.key,required this.image,required this.imageLogo});

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    return Container(
      width: 169,
      height: 280,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.00, -1.00),
          end: const Alignment(0, 1),
          colors: [
            CustomColors.oxFF292D4E,
            CustomColors.oxFF292D4E,
            CustomColors.oxFF292D4E,
            CustomColors.oxFF424161,
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: y * 0.025),
           Image(
            image: imageLogo,
            width: 45,
            height: 26,
          ),
          SizedBox(height: y * 0.025),
          Transform.scale(
            scale: 1.2,
            child:  Image(
              image: image,
            ),
          ),
        ],
      ),
    );
  }
}
