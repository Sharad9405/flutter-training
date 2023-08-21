import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final uNameController = TextEditingController();
    final passController = TextEditingController();
    return Container(
      height: MediaQuery.sizeOf(context).height,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Please Login',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              const Text(
                'Username:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Expanded(
                child: TextFormField(
                  controller: uNameController,
                  onChanged: (value){
                    debugPrint('value: $value');
                  },

                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Password:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Expanded(
                child: TextFormField(
                  controller: passController,
                  onChanged: (value){
                    debugPrint('value: $value');
                  },

                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: (){

            }, child: Text(
              'Submit'
            )),
          )
        ],
      ),
    );
  }
}
