import 'package:flutter/material.dart';
import 'Signup.dart';
import 'Screeens/Login/login.dart';
class SignInWith extends StatefulWidget {
  @override
  _SignInWithState createState() => _SignInWithState();
}

class _SignInWithState extends State<SignInWith> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                  height: 66, width: 200, image: AssetImage('assets/logo.JPG')),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                child:
                Container(
                  width: 280,
                  child:Text(
                  "Delight your users with Flutter's built-in beautiful Material Design & Cupertino widgets.",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 250,
                  child: Row(
                    children: [
                      Image(
                          height: 24,
                          color: Colors.white,
                          image: AssetImage(
                            "assets/google.png",
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 12, 26, 12),
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              Container(
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: 250,
                      child: Row(
                        children: [
                          Image(
                              height: 40,
                              image: AssetImage(
                                "assets/facebook.png",
                              )),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                            child: Text(
                              'Continue with Facebook',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Text(
                "-----------------------OR-------------------------",
                style: TextStyle(fontSize: 20, color: Colors.black26),
              ),
              SizedBox(
                height: 34,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.green[800],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 12, 12, 12),
                      child: Text(
                        'Sign up Email or Phone',
                        style: TextStyle(color: Colors.green[800], fontSize: 14),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.green[800],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 12, 26, 12),
                          child: Text(
                            'Login Email or Phone',
                            style:
                                TextStyle(color: Colors.green[800], fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  width: 300,
                  child: Text(
                      "By signing up,you agree to our privacy policy and Terms & Conditions.",
                      textAlign: TextAlign.center))

            ],
          )
        ],

      ),
    ));
  }
}
