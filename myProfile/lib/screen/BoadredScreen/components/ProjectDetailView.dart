import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view model/responsive.dart';
import 'package:provider/provider.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var projectDetailController = Provider.of<ProjectDetailController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[projectDetailController.currentIndex].name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(height: defaultPadding / 2)
            : const SizedBox(height: defaultPadding),
        Text(
          projectList[projectDetailController.currentIndex].description,
          style: const TextStyle(color: Colors.grey, height: 1.5),
          maxLines: size.width > 700 && size.width < 750
              ? 3
              : size.width < 470
              ? 2
              : size.width > 600 && size.width < 700
              ? 6
              : size.width > 900 && size.width < 1060
              ? 6
              : 4,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        ProjectLinks(),
        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}