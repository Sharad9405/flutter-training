import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, this.userName}) : super(key: key);

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: '$userName',
    child: Container(),
    );
  }
}
