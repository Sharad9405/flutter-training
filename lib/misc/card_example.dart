import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Card Example',
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: ListView.separated(
              itemCount: 1,
              itemBuilder: (context, i) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurple,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 60,
                        ),
                        title: Text(
                          'Mohammad Rafi',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        subtitle: Text(
                          'Best of Mohammad Rafi songs',
                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                      ),
                      ButtonBar(
                        children: [
                          ElevatedButton(
                            child: const Text('Play'),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            child: const Text('Pause'),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            child: const Text('Stop'),
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
          separatorBuilder: (context, i) => const SizedBox(height: 10,),
          )
          // child: Text(_value),
          ),
    );
  }
}
