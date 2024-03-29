// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/diamond.png',
                ),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            AccentColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: "Username"),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            AccentColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("CANCEL"),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                ),
                RaisedButton(
                  elevation: 8.0,
                  child: Text("NEXT"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      child: child,
      data: Theme.of(context)
          .copyWith(accentColor: color, brightness: Brightness.dark),
    );
  }
}
