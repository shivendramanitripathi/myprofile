import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  _launchEmail() async {
    const url =
        'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=shivendramanitripathi549@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  _launchPhone() async {
    const url = 'tel:+917081263332';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error
      print('Could not launch $url');
    }
  }
  _launchLinkedIn() async {
    const url = 'https://www.linkedin.com/in/shivendra-mani-tripathi-689373194/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        GestureDetector(
          onTap: _launchPhone,
          child: const AreaInfoText(title: 'Contact', text: '+91 7081263332'),
        ),
        GestureDetector(
          onTap: _launchEmail,
          child:  const AreaInfoText(
              title: 'Email', text: 'shivendra@gmail.com',),
        ),
        GestureDetector(
            onTap: _launchLinkedIn,
            child: const AreaInfoText(title: 'LinkedIn', text: '@shivendra-mani')),
        const AreaInfoText(title: 'Github', text: '@shivendra-mani'),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
