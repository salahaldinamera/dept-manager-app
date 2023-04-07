import 'package:easy_localization/easy_localization.dart';
import 'package:dept_manager/l10n/locale_keys.g.dart';
import 'package:dept_manager/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/logo/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 5),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: LocaleKeys.USER_INFO_FIRST_NAME.tr(),
                            hintText: LocaleKeys.USER_INFO_FIRST_NAME.tr()),
                      ),
                    ),
                    Expanded(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: LocaleKeys.USER_INFO_LAST_NAME.tr(),
                            hintText: LocaleKeys.USER_INFO_LAST_NAME.tr()),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.USER_INFO_USERNAME.tr(),
                      hintText: LocaleKeys.USER_INFO_USERNAME.tr()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 5),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.USER_INFO_PASSWORD.tr(),
                      hintText: LocaleKeys.USER_INFO_PASSWORD.tr()),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.USER_INFO_MOBILE_NUMBER.tr(),
                      hintText: LocaleKeys.USER_INFO_MOBILE_NUMBER.tr()),
                ),
              ),
              FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  LocaleKeys.FORGOT_PASSWORD.tr(),
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MyHomePage(title: "HI")));
                  },
                  child: Text(
                    LocaleKeys.SIGNUP.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // Text('New User? Create Account')
            ],
          ),
        ),
      ),
    );
  }
}