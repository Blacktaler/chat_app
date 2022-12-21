import 'package:clean_architecture/src/constants/constants.dart';
import 'package:clean_architecture/src/presentation/views/chat_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder:((context) => ChatPage(id: '1')));
  }
}