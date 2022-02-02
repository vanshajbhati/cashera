import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height / 20,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width / 0.5,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      })),
              SizedBox(
                height: size.height / 55,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "FAQ",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.green[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 7,
                  itemBuilder:
                      (BuildContext context, int index) =>lst()
              ),
            ],
          ),
      ),
      )
    );
  }
}
Widget lst(){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Column(
      children: <Widget>[
        SizedBox(height:22.0,),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ExpansionTile(
            title: Text(
              "What is Cash Era?",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20
                ),
                child: Text("Best way to indicate L.H over in piano. Is it unprofessional to join a Microsoft Teams Meeting (audio) without saying hello until I speak?"),
              )
            ],
          ),
        ),
      ],
    ),
  );
}