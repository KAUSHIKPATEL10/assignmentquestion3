import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedassignment/Homepage.dart';
import 'package:sharedassignment/main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Loginpage(),);
  }
}

    class Loginpage extends StatefulWidget{
    @override
    State<Loginpage>createState()=>LoginpageState();}
    class LoginpageState extends State<Loginpage> {

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(height: 100, width: 200
                  ,
                  image: AssetImage(
                      'image/login.png'),

                ),

                SizedBox(
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(

                    margin:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                        title: Text('Email.',
                        )

                    )),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      title: Text('Password.',
                      )
                  ),
                ),
                Text('Forgot Password', textAlign: TextAlign.center,
                  selectionColor: Colors.blue,),
                SizedBox(
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0)
                    ),
                    child:
                    ElevatedButton(
                        onPressed: () async {
                          var sharedpref = await SharedPreferences
                              .getInstance();
                          sharedpref.setBool(SplashPageState.KEYLOGIN, true);
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>
                              Homepage(),));
                        }, child: Text('Login')
                    )

                ),


              ],
            ),
          ),
        );
      }

    }


