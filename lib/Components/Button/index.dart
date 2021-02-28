import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
class Button extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;

  const Button(
    {
      Key key, 
      this.text : "Enter Button Name", 
      this.color : Colors.blue, 
      this.onPress,
    }
  ) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return TouchableOpacity(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}