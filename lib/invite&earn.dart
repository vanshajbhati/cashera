import 'package:flutter/material.dart';

class Invite extends StatefulWidget {
  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                    width: size.width,
                    height: size.height /3,
                    child: Container(
                      color: Color.fromRGBO(126, 126, 237, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image(
                          image: AssetImage('assets/family.png'),
                        ),
                      ),
                    )),
                Column(
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
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      )),
                                  label: Text(
                                    "Invite & Earn",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 3.4),
                      child: SizedBox(
                          width: size.width / 1.2,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 26, left: 34),
                                child: SizedBox(
                                  width: size.width / 1.7,
                                  height: 2,
                                  child: Container(
                                    color: Colors.black26,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.yellow,
                                            radius: 30,
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                              width: size.width / 5,
                                              child: Text(
                                                "You invited a friend",
                                                textAlign: TextAlign.center,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.yellow,
                                            radius: 30,
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                              width: size.width / 4,
                                              child: Text(
                                                "They register & topup",
                                                textAlign: TextAlign.center,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.yellow,
                                            radius: 30,
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                              width: size.width / 5,
                                              child: Text(
                                                "You both getxx",
                                                textAlign: TextAlign.center,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height / 12,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.green[800],
                                        radius: 28,
                                        child: Icon(
                                          Icons.group_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text(
                                                "People signed up",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              "This puts you in the top x%",
                                              style: TextStyle(
                                                  color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "15",
                                          style: TextStyle(
                                              fontSize: 31,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black26,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height / 22,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.green[800],
                                        radius: 28,
                                        child: Icon(
                                          Icons.group_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "Money Earnd",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width / 12),
                                        child: Text(
                                          "₹200",
                                          style: TextStyle(
                                              fontSize: 31,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black26,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height / 12,
                                  ),

                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
            SizedBox(
              width: size.width / 1.2,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Share link and earn Money',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green[800],
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(0))),
              ),
            )
    ],
        ),
      ),
    );
  }
}
