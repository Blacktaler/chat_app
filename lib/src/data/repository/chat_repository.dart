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
    final chats = await FireMessages.getChats();
    final List<GetDataEntity> datas =
        chats.map((e) => GetDataEntity(id: e.id, text: e.text)).toList();
    return datas;
  }
}
