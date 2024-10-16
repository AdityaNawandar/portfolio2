import 'package:flutter/material.dart';
import 'package:portfolio/widgets/common_scaffold.dart';
import 'package:provider/provider.dart';
import '../providers/projects_provider.dart';
import '../utils/responsive_layout.dart';
import '../utils/size_config.dart';
import '../widgets/project_widget.dart';

class ProjectsScreen extends StatelessWidget {
  ///
  const ProjectsScreen({Key? key}) : super(key: key);

  ///
  static const routeName = 'projects_screen';

  ///
  @override
  Widget build(BuildContext context) {
    //
    SizeConfig().init(context);
    var projects = Provider.of<ProjectsProvider>(context).projects;
    //
    return //
        CommonScaffold(
      bodyContent: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveLayout.isMobile(context) ? 1 : 2,
            mainAxisExtent:
                SizeConfig.screenHeight * 0.5, // Adjust height based on screen
          ),
          itemBuilder: (_, index) => ProjectWidget(
            project: projects[index],
            bgColor: projects[index].bgColor1,
          ),
          itemCount: projects.length,
        ),
      ),
    );
  }

  ///
}
