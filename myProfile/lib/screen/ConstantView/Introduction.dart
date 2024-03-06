import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../../../../res/constants.dart';
import '../../../../view model/responsive.dart';
import '../../../CombineSutro.dart';
import 'Description.dart';
import 'FilledButton.dart';
import '../../../HeadLine.dart';
class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.06,
                ),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.23,
                    ),
                    const AnimatedImageContainer(
                      width: 150,
                      height: 200,
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.1,
                ),
              const Responsive(
                  desktop: PortfoloWidget(start: 40, end: 50),
                  largeMobile: PortfoloWidget(start: 40, end: 35),
                  mobile: PortfoloWidget(start: 35, end: 30),
                  tablet: PortfoloWidget(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSutro(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: DescriptionText(start: 14, end: 15),
                largeMobile: DescriptionText(start: 14, end: 12),
                mobile: DescriptionText(start: 14, end: 12),
                tablet: DescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const FilledButton(),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
