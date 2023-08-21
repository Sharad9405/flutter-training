import 'package:chetu_training/home.dart';
import 'package:chetu_training/misc/card_example.dart';
import 'package:chetu_training/misc/constructor_types.dart';
import 'package:chetu_training/misc/custom_widget.dart';
import 'package:chetu_training/misc/functions_with_callback.dart';
import 'package:chetu_training/misc/layout_widget.dart';
import 'package:chetu_training/misc/listview_example.dart';
import 'package:chetu_training/misc/row_and_column.dart';
import 'package:chetu_training/misc/stateful_widget.dart';
import 'package:chetu_training/misc/widget/listview_data_binding.dart';
import 'package:chetu_training/navigation/route_paths.dart';
import 'package:chetu_training/misc/visible_invisible_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.home:
        return CupertinoPageRoute(
          builder: (context) => const Home(),
          settings: const RouteSettings(name: RoutePaths.home),
        );
      case RoutePaths.visibleInvisibleWidget:
        return CupertinoPageRoute(
          builder: (context) => const VisibleInvisibleWidget(),
          settings: const RouteSettings(name: RoutePaths.visibleInvisibleWidget),
        );
      case RoutePaths.layoutWidget:
        return CupertinoPageRoute(
          builder: (context) => const WidgetLayout(),
          settings: const RouteSettings(name: RoutePaths.layoutWidget),
        );

      case RoutePaths.stateFulWidgetExample:
        return CupertinoPageRoute(
          builder: (context) => const StatefulWidgetExample(),
          settings: const RouteSettings(name: RoutePaths.stateFulWidgetExample),
        );
      case RoutePaths.listviewExample:
        return CupertinoPageRoute(
          builder: (context) => const ListViewExample(),
          settings: const RouteSettings(name: RoutePaths.listviewExample),
        );
      case RoutePaths.rowAndColumn:
        return CupertinoPageRoute(
          builder: (context) => RowAndColumn(),
          settings: const RouteSettings(name: RoutePaths.rowAndColumn),
        );

      case RoutePaths.cardExample:
        return CupertinoPageRoute(
          builder: (context) => const CardExample(),
          settings: const RouteSettings(name: RoutePaths.cardExample),
        );
      case RoutePaths.customWidgetExample:
        return CupertinoPageRoute(
          builder: (context) => const CustomWidgetExample(title: 'Sharad'),
          settings: const RouteSettings(name: RoutePaths.customWidgetExample),
        );

      case RoutePaths.constructorExample:
        return CupertinoPageRoute(
          builder: (context) => SettingsIcon(iconColor: Colors.redAccent,
              tooltip: 'Settings', (){}, iconSize: 20,),
          settings: const RouteSettings(name: RoutePaths.constructorExample),
        );

      case RoutePaths.functionsWithCallback:
        return CupertinoPageRoute(
          builder: (context) => const FunctionWithCallBack(),
          settings: const RouteSettings(name: RoutePaths.functionsWithCallback),
        );

      case RoutePaths.dynamicListview:
        return CupertinoPageRoute(
          builder: (context) => const DynamicListview(),
          settings: const RouteSettings(name: RoutePaths.dynamicListview),
        );

      default:
        return CupertinoPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
