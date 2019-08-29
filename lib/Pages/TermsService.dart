import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class TermsService extends StatefulWidget {
  @override

  TermsServiceState createState() => TermsServiceState();
}

class TermsServiceState extends State<TermsService> {
  @override

  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black54,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Terms of Service",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Gotik"),
        ),
        iconTheme: IconThemeData(
          color: const Color(0xFF1DBF73),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        width: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(height: 5.0),
            Padding(padding: EdgeInsets.only(top: 50.0)),

          Text(
            "HOME KITCHEN",
            style: _txtCustomSub.copyWith(
                fontWeight: FontWeight.w600),
          ),
            Padding(padding: EdgeInsets.only(top: 10.0)),

            Text(
            "Online Food Order App",
            style: _txtCustomSub,
          ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
                    "industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and "
                    "scrambled it to make a type specimen book. \n\n\n It has survived not only five centuries, but also "
                    "the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the "
                    "1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with "
                    "desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: _txtCustomSub,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
                    "industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and "
                    "scrambled it to make a type specimen book. \n\n\n It has survived not only five centuries, but also "
                    "the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the "
                    "1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with "
                    "desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: _txtCustomSub,
                textAlign: TextAlign.justify,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
