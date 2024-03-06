import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class UrlLauncherController extends ChangeNotifier {
  Future<void> launchUrl(String url) async {
    await launch(url);
  }
}

class ProjectLinks extends StatelessWidget {
  final int index;

  const ProjectLinks({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var urlLauncherController = Provider.of<UrlLauncherController>(context);

    return Row(
      children: [
        Row(
          children: [
            const Text('PlayStore', style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis),
            IconButton(
              onPressed: () {
                urlLauncherController.launchUrl(projectList[index].link);
              },
              icon: SvgPicture.asset('assets/images/playStore.png'),
            ),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            urlLauncherController.launchUrl(projectList[index].link);
          },
          child: const Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
