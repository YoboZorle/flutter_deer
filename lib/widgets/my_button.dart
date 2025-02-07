
import 'package:flutter/material.dart';
import 'package:flutter_deer/res/resources.dart';
import 'package:flutter_deer/util/theme_utils.dart';

class MyButton extends StatelessWidget {

  const MyButton({
    Key key,
    this.text = '',
    @required this.onPressed,
  }): super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final bool isDark = context.isDark;
    return FlatButton(
      onPressed: onPressed,
      textColor: isDark ? Colours.dark_button_text : Colors.white,
      color: isDark ? Colours.dark_app_main : Colours.app_main,
      disabledTextColor: isDark ? Colours.dark_text_disabled : Colours.text_disabled,
      disabledColor: isDark ? Colours.dark_button_disabled : Colours.button_disabled,
      height: 48,
      //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: Dimens.font_sp18),),
      ),
    );
  }
}
