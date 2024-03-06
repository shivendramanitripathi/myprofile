import 'package:flutter/material.dart';
import 'package:myProfile/screenWidget/responsive.dart';
import 'package:provider/provider.dart';

import '../../../view model/responsive.dart';

class TitleController extends ChangeNotifier {
  bool _isHighlighted = false;

  bool get isHighlighted => _isHighlighted;

  void setHighlighted(bool value) {
    _isHighlighted = value;
    notifyListeners();
  }
}

class Title extends StatelessWidget {
  const Title({Key? key, required this.prefix, required this.title}) : super(key: key);

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    var titleController = Provider.of<TitleController>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$prefix ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontSize: !Responsive.isDesktop(context) ? 30 : 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            titleController.setHighlighted(!titleController.isHighlighted);
          },
          child: AnimatedDefaultTextStyle(
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: titleController.isHighlighted ? Colors.pink : Colors.white,
              fontSize: !Responsive.isDesktop(context) ? 30 : 50,
              fontWeight: FontWeight.bold,
            ),
            duration: const Duration(milliseconds: 300),
            child: Text(title),
          ),
        ),
      ],
    );
  }
}
