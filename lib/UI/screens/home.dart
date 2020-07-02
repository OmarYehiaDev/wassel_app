import 'package:flutter/material.dart';
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
              vertical: height * 0.05,
            ),
            child: Text(
              "Our services",
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
                          alignment: Alignment.centerRight,
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
                                      left: width * 0.07,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(28, 179, 54, 1.0),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: height * 0.038,
                                      width: width * 0.2,
                                      padding: EdgeInsets.only(
                                        right: width * 0.032,
                                      ),
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        "Send",
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
                                      left: width * 0.145,
                                    ),
                                    child: Text(
                                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
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
                          alignment: Alignment.centerRight,
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
                                      left: width * 0.07,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(28, 179, 54, 1.0),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: height * 0.038,
                                      width: width * 0.2,
                                      padding: EdgeInsets.only(
                                        right: width * 0.032,
                                      ),
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        "Buy",
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
                                      left: width * 0.145,
                                    ),
                                    child: Text(
                                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
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
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.green[700],
                width: width,
                height: height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person_pin_circle,
                        size: 80,
                        color: Color.fromRGBO(28, 179, 54, 1.0),
                      ),
                      maxRadius: 40,
                    ),
                    Text(
                      "Saher Samir",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.orange[300],
                          ),
                          SizedBox(
                            width: width * 0.005,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Main Menu"),
              ),
              ListTile(
                leading: Icon(Icons.watch_later),
                title: Text("Previous Trips"),
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("My Wallet"),
                trailing: Chip(
                  backgroundColor: Colors.grey[800],
                  labelStyle: TextStyle(color: Colors.white),
                  label: Text("0 EGP"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.card_membership),
                title: Text("Promo Code"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
