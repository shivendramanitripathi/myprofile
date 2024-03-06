import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/info_controllers/projects_info.dart';

class ProjectWrapView extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ProjectWrapView({Key? key, this.crossAxisCount = 3, this.ratio = 1.3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(
            vertical: defaultPadding,
            horizontal: defaultPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [Colors.pinkAccent, Colors.blue],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                offset: const Offset(-2, 0),
                blurRadius: Provider.of<ProjectsInfo>(context).hovers[index]
                    ? 20
                    : 10,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: const Offset(2, 0),
                blurRadius: Provider.of<ProjectsInfo>(context).hovers[index]
                    ? 20
                    : 10,
              ),
            ],
          ),
          child: ProjectInformation(index: index),
        );
      },
    );
  }
}
