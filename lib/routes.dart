import 'package:flutter/widgets.dart';
import 'package:flutter_application_master/ui/pages/detail/detail-page.dart';
import 'package:flutter_application_master/ui/pages/home/home-page.dart';

final Map<String, WidgetBuilder> routes = {
 HomePage.routeName: (context) => HomePage(),
 DetailPage.routeName: (context) => DetailPage(),

};
