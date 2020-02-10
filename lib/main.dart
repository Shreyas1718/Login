import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text('LOGIN',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25.0,
            ),),
            new Form(child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ('Email'),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ('Password'),
                  ),
                ),
              ],
            )),
            SizedBox(height: 15,),
            Text('Forgot Password?',textAlign: TextAlign.right,),
            SizedBox(height: 15,),
            MaterialButton(
              height: 43.0,
              color: Color(0xff5c49e0),
              textColor: Colors.white,
              onPressed: ()=>{},
              child: Text('Log in'),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Don\'t have an account?'),
                Text('Sign Up',style: TextStyle(
                  color: Color(0xff5c49e0),
                ),),

              ],

            ),
            SizedBox(height: 25,),
            new Container(

              child: new RaisedButton(

                  color: const Color(0xFFde5246),
                  onPressed: () {},
                  child: new Row(

                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: new Image.asset(

                          'assets/google.png',
                          height: 43.0,


                        ),
                      ),
                      Center(
                        child: new Container(
                            padding: EdgeInsets.only(left: 60.0,right: 10.0),
                            child: new Text("Sign in with Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ),
                      ),

                    ],
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
