import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> logoAnimation;
  Animation<Offset> curveAnimation;
  Widget logo;

  initState() {
    super.initState();
    logo = Image.asset("assets/images/wassal.png");
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    logoAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInCirc,
    );
    curveAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                FadeTransition(
                  opacity: logoAnimation,
                  child: logo,
                ),

                FittedBox(
                  child: GoogleSignInButton(
                    borderRadius: 40,
                    onPressed: () {},
                  ),
                )
                // RaisedButton(
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       Padding(
                //         padding: const EdgeInsets.only(right: 8.0),
                //         child: Icon(Icons.ac_unit),
                //       ),
                //       Text("SignIn with Gmail"),
                //     ],
                //   ),
                //   onPressed: () {},
                // ),
              ],
            ),
            SlideTransition(
              position: curveAnimation,
              child: Container(
                width: width,
                height: height,
                child: CustomPaint(
                  painter: CurvePainter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromRGBO(28, 179, 54, 1.0);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.850);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.775,
        size.width * 0.5, size.height * 0.850);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.925,
        size.width * 1.0, size.height * 0.850);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
