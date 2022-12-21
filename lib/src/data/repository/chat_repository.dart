import 'package:clean_architecture/src/data/datasource/remote/fire_messages.dart';
import 'package:clean_architecture/src/data/dto/chat_dto.dart';
import 'package:clean_architecture/src/domain/entities/get_data_entity.dart';
import 'package:clean_architecture/src/domain/repository/get_data_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/// Api Manager class
class ChatRepository extends GetDataRepository {
  
  @override
  Future<List<GetDataEntity>> getMessages(String params) async {
    final fireStore = FirebaseFirestore.instance;
    final messages = await fireStore.collection('messages').get();

    List<ChatDto> messagesList = messages.docs.map((element) {
      return ChatDto.fromMap(element.data());
    }).toList();

    // List<GetDataEntity> datas =
    //     messagesList.map((e) => GetDataEntity(id: e.id, text: e.text)).toList();
    
    List<GetDataEntity> datas = [];

    List<GetDataEntity> list = [];
    for (ChatDto element in messagesList) {
      list.add(GetDataEntity(id: element.id, text: element.text));
    }
    datas = list;

    return datas;
  }
  
}
