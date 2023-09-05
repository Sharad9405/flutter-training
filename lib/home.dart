import 'package:chetu_training/navigation/route_paths.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Flutter',
          style: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w800
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 50),
        children: [
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.visibleInvisibleWidget),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '1. Visible-Invisible Widget',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.layoutWidget),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '2. Widget Layout',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.stateFulWidgetExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '3. Stateful Widget Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.rowAndColumn),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '4. Row And Column',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.listviewExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '5. Listview Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.cardExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '6. Card Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.customWidgetExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '7. Custom Widget Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.constructorExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '8. Constructor Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.functionsWithCallback),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '9. Functions with Callback Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.dynamicListview),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '10. Dynamic Listview',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.loginForm),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '11. Login Form',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.containerStyling),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '12. Container Styling',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.dateFormatting),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '13. Date Formatting',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.appBarExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '14. AppBar Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.chatWidget),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '15. Chat Widget',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 2, color: Colors.grey,),
          ),
          Container(
            color: Colors.amberAccent.withOpacity(0.2),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, RoutePaths.orientationExample),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple, size: 15,),
              title: const Text(
                '15. Orientation Builder Example',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
