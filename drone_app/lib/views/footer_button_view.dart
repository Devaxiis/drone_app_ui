import 'package:drone_app/library.dart';

class FooterButtonView extends StatelessWidget {
  const FooterButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: GestureDetector(
        onTap: () => debugPrint('bosilmoqda'),
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: width,
          decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  CustomColors.oxFF0069C7,
                  CustomColors.oxFF58EEFF,
                  CustomColors.oxFF58EEFF,
                ],
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CustomStrings.buyNow,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: CustomFonts.circularStd,
                  fontSize: width * 0.052,
                  letterSpacing: 1.4
                ),
              ),
             const SizedBox(
                width: 5,
              ),
              Image(
                image: CustomIcons.signInSquare,
                width: width * 0.06,
              )
            ],
          ),
        ),
      ),
    );
  }
}
