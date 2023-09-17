import 'dart:io';

import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({Key? key}) : super(key: key);

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Image Picker',
    child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        if(file != null)
        Image.file(File(file!.path)),

          ElevatedButton(onPressed: () async {
            final ImagePicker picker = ImagePicker();
            try{
              final XFile? image = await picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = image;
              });

            } catch(e){
              debugPrint('$e');
            }
          },
            child: const Text('Pick Image'),

          ),
        ],
      ),
    ),
    );
  }
}
