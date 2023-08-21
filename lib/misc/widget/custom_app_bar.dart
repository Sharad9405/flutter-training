import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key, required this.title, this.child}) : super(key: key);

  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 18)),
        centerTitle: true,
        leading: InkWell(
          onTap: ()=> Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
      body: child,
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(60);
}
