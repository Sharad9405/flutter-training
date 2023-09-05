import 'package:chetu_training/misc/form.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Row and Column',
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('Please Login'),
              Row(
                children: [
                  const Text('Username: '),
                  Expanded(
                    child: TextField(
                      controller: _userController,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Password: '),
                  Expanded(
                    child: TextField(
                      controller: _passController,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  child: const Text('Click Me'),
                  onPressed: () =>
                      debugPrint('Username = ${_userController.text}'),
                ),
              ),
            ],
          ),
        ),
        // child: Text(_value),
      ),
    );
  }
}
