import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String text;
  final Function onPresset;

  const ButtonBlue({
    Key key,
    @required this.text,
    @required this.onPresset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: this.onPresset,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
