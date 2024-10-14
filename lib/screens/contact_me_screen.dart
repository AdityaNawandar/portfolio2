import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widgets/common_scaffold.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({Key? key}) : super(key: key);

  static const routeName = 'contact_me_screen';
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyContent: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get in Touch',
                style: TextStyle(
                  fontSize: getFontSize(context, 32),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                'Phone: 8888894352',
                style: TextStyle(
                  fontSize: getFontSize(context, 20),
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                'Email: adityanawandar@gmail.com',
                style: TextStyle(fontSize: getFontSize(context, 20)),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: []),
            ]),
      ),
    );
  }
}
