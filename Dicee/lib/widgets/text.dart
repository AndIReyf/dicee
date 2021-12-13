import 'package:flutter/cupertino.dart';

class MyText extends StatelessWidget {
  final String text;
  final int num;

  MyText(this.text, this.num);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text $num ${num == 1 ? "time" : "times"}',
    );
  }
}
