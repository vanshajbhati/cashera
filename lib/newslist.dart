import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frentic/Home_page.dart';
import 'news.dart';
class News_list extends StatefulWidget {
  @override
  _News_listState createState() => _News_listState();
}

class _News_listState extends State<News_list> {
  String userkey;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: [
              SingleChildScrollView(
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
                                  icon: Hero(
                                    tag: 1,
                                      child: Icon(Icons.arrow_back_ios)),
                                  label: Text(
                                    "News",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                  }),
                            ),
                          ],
                        )),
                ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 7,
                  itemBuilder:
                      (BuildContext context, int index) =>
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Info()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top:20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('assets/Face.png'),
                                          radius: 34,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 7,bottom: 8,),
                                            child: Container(
                                                width: size.width/1.30,
                                                child: Text("Covid:Over 81.7 crore vaccine doses administered in India so far.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 6,right: 9),
                                            child: Row(
                                              children: [
                                                Text('21 sep 2021'),
                                                SizedBox(
                                                  width: size.width/2.6,
                                                ),
                                                Text('2:30 pm')
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 5),
                                    child: SizedBox(
                                      width: size.width/1.1,
                                      height: 1,
                                      child: Container(
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Face.png'),
              radius: 34,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7,bottom: 8,),
                child: Container(
                    width: size.width/1.30,
                    child: Text("Covid:Over 81.7 crore vaccine doses administered in India so far.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6,right: 9),
                child: Row(
                  children: [
                    Text('21 sep 2021'),
                    SizedBox(
                      width: size.width/2.6,
                    ),
                    Text('2:30 pm')
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20,top: 5),
        child: SizedBox(
          width: size.width/1.1,
          height: 1,
          child: Container(
            color: Colors.black,
          ),
        ),
      )
    ],
  )*/