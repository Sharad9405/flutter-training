import 'package:flutter/material.dart';

class AppBarFloatingActionButton extends StatelessWidget {
  const AppBarFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('App Bar',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        centerTitle: true,
        leading: InkWell(
          onTap: ()=> Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 15,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.chat,
              color: Colors.white,
              size: 15,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.call,
              color: Colors.white,
              size: 15,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.amber,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          debugPrint('onFab Tap');
         _openBottomSheet(context,).then((value) {
           debugPrint('result: $value');
         });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.red,
      ),
    );
  }

  Future<String?> _openBottomSheet(BuildContext context) async {
  return await showModalBottomSheet<String?>(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        isDismissible: false,
        // backgroundColor: Colors.white,
        // isScrollControlled: true,
        // enableDrag: false,
        // useSafeArea: true,
        elevation: 10,
        builder: (BuildContext context){
            return Container(
              // height: 200,
              margin: const EdgeInsets.all(20),
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context, 'bottom sheet Return Data');
                    },
                    child: const Text('Bottom sheet')),
              ),
            );
        }
    );
  }



}
