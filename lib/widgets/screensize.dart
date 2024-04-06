import 'package:flutter/widgets.dart';

double widthFactor(BuildContext context) =>
    MediaQuery.of(context).size.width / 360;

double heightFactor(BuildContext context) =>
    MediaQuery.of(context).size.height / 800;
