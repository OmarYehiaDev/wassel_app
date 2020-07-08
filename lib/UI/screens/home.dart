import 'package:flutter/material.dart';
import 'package:wassel_app/UI/widgets/myDrawer.dart';
import 'uploadOrderScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
        centerTitle: true,
        title: Text(
          "وصل",
          style: TextStyle(
            fontFamily: "Blue-Ocean",
            fontSize: 23,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: height * 0.09,
            ),
            child: Text(
              "خدماتنا",
              style: TextStyle(
                fontFamily: "Blue-Ocean",
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Card(
                            elevation: 5,
                            child: Container(
                              height: height * 0.20,
                              width: width * 0.75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * 0.07,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(28, 179, 54, 1.0),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: height * 0.038,
                                      width: width * 0.2,
                                      padding: EdgeInsets.only(
                                        left: width * 0.032,
                                      ),
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        "إرسال",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.025,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * 0.145,
                                    ),
                                    child: Text(
                                      "لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: height * 0.16,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage("assets/images/cargo.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UploadOrderScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Card(
                            elevation: 5,
                            child: Container(
                              height: height * 0.20,
                              width: width * 0.75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * 0.07,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(28, 179, 54, 1.0),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: height * 0.038,
                                      width: width * 0.2,
                                      padding: EdgeInsets.only(
                                        left: width * 0.032,
                                      ),
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        "شراء",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.025,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * 0.145,
                                    ),
                                    child: Text(
                                      "لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم لوريم ايبسوم",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: height * 0.16,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/buying.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
