import 'package:clean_architecture/src/constants/constants.dart';
import 'package:clean_architecture/src/presentation/views/chat_page.dart';
import 'package:flutter/material.dart';


class AppRoutes {
///Routes of application stand here
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder:((context) => ChatPage(id: '1')));
}

/// good food is good
static gg(){}

}