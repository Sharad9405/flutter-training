import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsIcon extends StatelessWidget {
  final double iconSize;
  final Color iconColor;
  final VoidCallback callback;
  final String tooltip;

  // Parameterized & const Constructor
 const SettingsIcon(this.callback,
      {Key? key,
        required this.iconSize,
        this.iconColor = Colors.white,
        this.tooltip = "Settings"})
      : super(key: key);


  // Named Constructor
  const SettingsIcon.dark(this.callback,
      {Key? key, this.iconSize = 18, this.tooltip = "Settings"})
      : iconColor = Colors.black,
        super(key: key);

  const SettingsIcon.light(this.callback,
      {Key? key, this.iconSize = 20, this.tooltip = "Settings"})
      : iconColor = Colors.black,
        super(key: key);


  // Factory Constructor
  factory SettingsIcon.create(VoidCallback callback,
      {double iconSize = 18, String tooltip = "Settings"}) {
    return UiConfiguration.dark == UiConfiguration.dark
        ? SettingsIcon.dark(() {}, iconSize: iconSize, tooltip: tooltip)
        : SettingsIcon(() {}, iconColor: Colors.white, iconSize: iconSize, tooltip: tooltip);
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Constructor Types',
      child: Center(
        child: IconButton(
            icon: Icon(Icons.settings, color: iconColor),
            iconSize: iconSize,
            tooltip: tooltip,
            onPressed: callback),
      ),
    );
  }
}

enum UiConfiguration{
  dark, light, none
}

