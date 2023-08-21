import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: 'Listview Example',
      child: ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: const Icon(Icons.list),
              trailing: const Text(
                "GFG",
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              title: Text("List item $index"));
        },
      separatorBuilder: (context, index){
          return const Divider(height: 10,);
      },

    );
  }
}

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                  leading: const Icon(Icons.list),
                  trailing: const Text(
                    "GFG",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item $index"));
        },
        childCount: 5, // Total number of items
      ),
    );
  }
}
