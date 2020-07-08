import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
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
              title: Text("القائمة الرئيسية"),
            ),
            ListTile(
              leading: Icon(Icons.watch_later),
              title: Text("الطلبات السابقة"),
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("محفظتي"),
              trailing: Chip(
                backgroundColor: Colors.grey[800],
                labelStyle: TextStyle(color: Colors.white),
                label: Text("0 ج.م"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_membership),
              title: Text("قسيمة شراء"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("الإعدادات"),
            ),
          ],
        ),
      ),
    );
  }
}
