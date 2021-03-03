import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/theme/palette.dart';

Widget showCircleProgress({double size = 30}) => Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          backgroundColor: Palette.primaryColor,
          valueColor:
              new AlwaysStoppedAnimation<Color>(Palette.darkPrimaryColor),
        ),
      ),
    );
