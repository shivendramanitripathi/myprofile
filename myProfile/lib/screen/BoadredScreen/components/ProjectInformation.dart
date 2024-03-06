import 'package:flutter/material.dart';
import 'package:myProfile/screen/BoadredScreen/components/ProjectDetailView.dart';
import 'package:myProfile/utils/constants.dart';
import 'package:provider/provider.dart';
import '../../../res/constants.dart';
import '../../../view model/info_controllers/projects_info.dart';

class ProjectInformation extends StatefulWidget {
  const ProjectInformation({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<ProjectInformation> createState() => _ProjectInformationState();
}

class _ProjectInformationState extends State<ProjectInformation> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProjectsInfo(),
      child: Consumer<ProjectsInfo>(
        builder: (context, projectsInfo, _) {
          return InkWell(
            onHover: (value) {
              projectsInfo.onHover(widget.index, value);
            },
            onTap: () {
              // Handle onTap event if needed
            },
            borderRadius: BorderRadius.circular(30),
            child: AnimatedContainer(
              padding: const EdgeInsets.only(left: defaultPadding, right: defaultPadding, top: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgColor,
              ),
              duration: const Duration(milliseconds: 500),
              child: ProjectDetail(index: widget.index),
            ),
          );
        },
      ),
    );
  }
}