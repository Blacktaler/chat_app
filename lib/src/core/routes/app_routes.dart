import 'package:clean_architecture/src/constants/constants.dart';
import 'package:clean_architecture/src/presentation/views/auth_page.dart';
import 'package:clean_architecture/src/presentation/views/chat_page.dart';
import 'package:flutter/material.dart';


class AppRoutes {
///Routes of application stand here
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
   switch (settings.name) {
     case '/home':
       return pageNavi(ChatPage(id: '1'));  

     default:
      return pageNavi(AuthPage());
   }
}

static PageRoute pageNavi(Widget page){
  return MaterialPageRoute(builder: (_)=>page);
}
}