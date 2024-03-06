import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/constants.dart';
import '../../view model/responsive.dart';

class AnimationControllerProvider extends ChangeNotifier {
  late AnimationController _controller;

  AnimationController get controller => _controller;

  void initializeController() {
    _controller = AnimationController(
      vsync: SingleTickerProviderStateMixin(),
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _controller.addListener(() {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatedImageContainer extends StatelessWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    var controllerProvider = Provider.of<AnimationControllerProvider>(context);
    if (controllerProvider.controller == null) {
      controllerProvider.initializeController();
    }

    return AnimatedBuilder(
      animation: controllerProvider.controller,
      builder: (context, child) {
        final value = controllerProvider.controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: height!,
            width: width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                'assets/images/image.png',
                height: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                    ? MediaQuery.sizeOf(context).width * 0.14
                    : 200,
                width: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                    ? MediaQuery.sizeOf(context).width * 0.14
                    : 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
