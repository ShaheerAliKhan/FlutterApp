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
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}