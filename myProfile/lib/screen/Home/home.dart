import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'introduction_profile_view.dart';
import 'project_view_screen.dart';
import 'certifications_view_screen.dart';
import 'certifications_view_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => IntroductionProfileController()),
        ChangeNotifierProvider(create: (context) => ProjectController()),
        ChangeNotifierProvider(create: (context) => CertificationsController()),
        ChangeNotifierProvider(create: (context) => CertificationsController()),
      ],
      child: Scaffold(
        body: PageView(
          children: [
            const IntroductionProfileView(),
            const ProjectViewScreen(),
            const CertificationsViewScreen(),
            const CertificationsViewScreen(),
          ],
        ),
      ),
    );
  }
}
