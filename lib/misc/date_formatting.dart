import 'dart:io';
import 'dart:math';

import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/app_text_field.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:chetu_training/navigation/route_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormattingPage extends StatefulWidget {
  const DateFormattingPage({Key? key}) : super(key: key);

  @override
  State<DateFormattingPage> createState() => _DateFormattingPageState();
}

class _DateFormattingPageState extends State<DateFormattingPage> {

  final TextEditingController dateController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Login',
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          const AppText(title: 'Login',
            color: Colors.blue, size: 16,
            fontWeight: FontWeight.w600,
          ),

          const SizedBox(height: 20,),


            AppTextField(controller: dateController,
            color: Colors.blue,
              readOnly: true,
              fontWeight: FontWeight.w800,
              hintText: 'Date',
              onChanged: (value){
              },
              suffixIcon: InkWell(
                  onTap: () async {
                    if(Platform.isAndroid){
                      var datePicked = await selectDate(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2025),
                      );
                      if (datePicked != null) {
                        print("Date::$datePicked");
                        // String formatter = DateFormat.EEEE().format(datePicked);
                        String formatter = DateFormat('dd/MM/yyyy').format(datePicked);
                        dateController.text = formatter;
                      }
                    }else  if(Platform.isIOS){
                      showModalBottomSheet(context: context, builder: (context){
                        return  CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          mode: CupertinoDatePickerMode.date,
                          use24hFormat: true,
                          // This shows day of week alongside day of month
                          showDayOfWeek: true,
                          // This is called when the user changes the date.
                          onDateTimeChanged: (DateTime newDate) {
                          },
                        );
                      });
                    }


                  },
                  child: const Icon(Icons.calendar_month)),
            ),
          const SizedBox(height: 20,),


          ElevatedButton(onPressed: () async {
            final result = await Navigator.pushNamed(context, RoutePaths.dashboard, arguments: dateController.text);
            print('Result = $result');
          },
          child: const Text('Login',)),
          const SizedBox(height: 20,),

        ],
      ),
    ),
    );
  }
  static Future<DateTime?> selectDate(
      {required BuildContext context,
        required DateTime initialDate,
        required DateTime firstDate,
        required DateTime lastDate}) async {
    final DateTime? picked = await showDatePicker(
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      locale: const Locale('en', 'IN'),
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );


    return picked;
  }
}
