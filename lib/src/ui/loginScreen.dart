import 'dart:ui';
import 'package:adventure_login/src/res/app_colors.dart';
import 'package:adventure_login/src/res/strings.dart';
import 'package:flutter/material.dart';


/**
 * Nikhil Soni
 * https://github.com/nikhilsonimlv
 */

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: 1.0,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/travelcut.png"),
                        fit: BoxFit.cover)),child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
              ),
            ),
            SafeArea(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding:
                        EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(Strings.next,
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          Strings.yourAdventureStartsNow,
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          Strings.onlineCheckIn,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          Strings.startCheckInText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                           fullNameInputField(),
                            emailInputField(),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          Strings.or,
                          style: TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        bookingNumberInputField(),
                        SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: new RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            padding: EdgeInsets.all(20.0),
                            child:  Text(
                              Strings.startCheckIn,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            color: Colors.orange,
                            elevation: 4.0,
                            splashColor: Colors.blueGrey,
                            onPressed: () {
                              // Perform some action
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                            child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      Strings.bottomText,
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(
                                  text: Strings.terms,
                                  style: TextStyle(color: Colors.orange)),
                              TextSpan(
                                  text: Strings.and,
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(
                                  text: Strings.privacy,
                                  style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ))
                      ],
                    ),
                  );
                },
                itemCount: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Full Name Input Field
Widget fullNameInputField(){
  return  new Container(
    padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    height: 60.0,
    decoration: new BoxDecoration(
        color: AppColors.blackWithOpacity,
        border: new Border.all(
            color: Colors.grey, width: 0.0),
        borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0))),
    child: Padding(
      padding: const EdgeInsets.only(left :15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              Strings.fullName,
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: new TextFormField(keyboardType: TextInputType.text,style: TextStyle(color: Colors.orange,fontSize: 15.0),
              decoration: InputDecoration.collapsed(),
            ),
          ),
        ],
      ),
    ),
  );
}

//Email Input Field
Widget emailInputField() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      height: 60.0,
      decoration: new BoxDecoration(
          color: AppColors.blackWithOpacity,
          border: new Border.all(
              color: Colors.grey, width: 0.0),
          borderRadius: new BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      child: Padding(
        padding: const EdgeInsets.only(left :15.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                Strings.email,
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0),
              ),
            ),
            Expanded(
              child: new TextFormField(keyboardType: TextInputType.emailAddress,style: TextStyle(color: Colors.orange,fontSize: 15.0),
                decoration: InputDecoration.collapsed(),
              ),
            ),
          ],
        ),
      ),
    );
}

//Booing Number Input Field
Widget bookingNumberInputField(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    height: 60.0,
    decoration: new BoxDecoration(
        color: AppColors.blackWithOpacity,
        border: new Border.all(
            color: Colors.grey, width: 0.0),
        borderRadius: new BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )),
    child: Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              Strings.bookingNumber,
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: new TextFormField(keyboardType: TextInputType.text,style: TextStyle(color: Colors.orange,fontSize: 15.0),
              decoration: InputDecoration.collapsed(),
            ),
          ),
        ],
      ),
    ),
  );
}
