import 'package:flutter/cupertino.dart';
import 'package:flutter_first_app/components/button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, element) {
          list.isEmpty
              ? list.add(element)
              : list.addAll([SizedBox(width: 1), element]);
          return list;
        }),
      ),
    );
  }
}
