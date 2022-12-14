import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/logoutcard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';

import '../reusable/screentitle.dart';

class adminusersadd extends StatefulWidget {
  @override
  State<adminusersadd> createState() => _adminusersadd();
}

class _adminusersadd extends State<adminusersadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const screentitle(title: 'ADMIN'),
                const logoutbtn(),
              ],
            ),
        Column(
          children: const <Widget>[
            imagecard(),
          ],
        ),
        Container(
          color: const Color(0xFFc3eaf0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  menuoption(
                    menutext: 'Users',
                    padlef: 10.0,
                    autofocus: true,
                    des: adminusersadd(),
                  ),
                  // menuoption(menutext: 'Stocks', des: adminstocklist(),),
                  // menuoption(menutext: 'Orders', des: adminorderlist(),),
                ],
              )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'List Stock',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )
          ],
        ),
        Column(
          children: const <Widget>[
            textformfield(
              Textfieldtitle: 'User Id',
            ),
            textformfield(
              Textfieldtitle: 'First Name',
            ),
            textformfield(
              Textfieldtitle: 'Last Name',
            ),
            textformfield(
              Textfieldtitle: 'Email',
            ),
            textformfield(
              Textfieldtitle: 'Phone Number',
            ),
            textformfield(
              Textfieldtitle: 'Password',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(50.0, 15.0, 30.0, 0.0),
                child: SizedBox(
                  height: 40.0,
                  width: 90.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFe6ea80),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.black87, fontSize: 15.0),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(50.0, 15.0, 30.0, 0.0),
                child: SizedBox(
                  height: 40.0,
                  width: 110.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFe6ea80),
                    ),
                    child: const Text(
                      'List User',
                      style: TextStyle(color: Colors.black87, fontSize: 15.0),
                    ),
                  ),
                ))
          ],
        )
      ])),
    );
  }
}
