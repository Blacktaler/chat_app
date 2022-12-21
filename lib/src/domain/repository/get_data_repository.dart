import 'package:clean_architecture/src/data/dto/chat_dto.dart';
import 'package:clean_architecture/src/domain/entities/get_data_entity.dart';

///  ApiManager ruler Class

abstract class GetDataRepository<T,P>{
  Future<List<GetDataEntity>> getMessages(String params);
}