import 'package:flutter/material.dart';
import 'newslist.dart';
class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}
class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 40,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width / 0.5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: TextButton.icon(
                            icon: Icon(Icons.arrow_back_ios),
                            label: Text("Flutter combines ease of development",style: TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.bold),),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),

                    ],
                  )),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 4),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Hero(
                          tag:1,
                          child: Image(
                              height: 200,
                              width: 200,
                              image: AssetImage('assets/meeting.jpg')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 0, 10),
                        child: Row(
                          children: [
                            Icon(Icons.access_time,
                                color: Colors.black, size: 25),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "11:14 PM",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.calendar_today_outlined,
                                color: Colors.black, size: 25),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "13/09/2021",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Flutter combines ease of development with performance similar to native performance while maintaining visual consistency between platforms. Flutter’s programming language, Dart, was initially intended as a replacement for JavaScript. Most importantly, Flutter is open-source and completely free. At the moment, Flutter has equal popularity with React Native on both GitHub and Stack Overflow. Speaking of which, we contrasted Flutter’s and React Native’s pros and cons using nine criteria in a recent article. Google uses Flutter for various Google Assistant modules and the Google Home Hub user interface. Moreover, there are already 50,000 Flutter apps available in the Google Play Store, and this number is increasing at a high rate. Alibaba Group, eBay, Groupon, and other popular e-commerce providers use Flutter as well to give their web and mobile applications uniform looks."
                        ,textAlign: TextAlign.start,),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
