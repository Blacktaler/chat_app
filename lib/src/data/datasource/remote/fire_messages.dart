import 'package:clean_architecture/src/data/dto/chat_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireMessages{
 static Future<List<ChatDto>>  getChats()async{
    final fireStore = FirebaseFirestore.instance;
    final messages = await fireStore.collection('messages').get();
    
    List<ChatDto> messagesList =  messages.docs.map((element) {
      return ChatDto.fromMap(element.data());
     }).toList();
     return messagesList;
  }

  static Future senMessage(String id,String text,int index)async{
    final fireStore = FirebaseFirestore.instance;
    Map<String,dynamic> map = {'id':id,'text':text};
    await fireStore.collection('messages').doc();
  }
}