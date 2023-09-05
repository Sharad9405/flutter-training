import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ContainerStyling extends StatelessWidget {
  const ContainerStyling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var id = 100;

    Location location = Location();
    location.getLocation();


    return CustomAppBar(
      title: 'Container Styling',
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 150, height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const AppText(
                title: 'Container Text',
              ),
            ),


            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                      colors: [Colors.black, Colors.blue]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.limeAccent,
                        blurRadius: 5.0,
                        offset: Offset(2.0, 2.0))
                  ]),
            ),

            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                //color: Colors.purple,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Text("Hello! $id",
                    style: const TextStyle(fontSize: 20)),
              ),
            ),

            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(30),
                transform: Matrix4.rotationZ(0.1),
                child: const Text("Hello! i am inside a container!",
                    style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
