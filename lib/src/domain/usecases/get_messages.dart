import 'package:clean_architecture/src/core/usecases/use_case.dart';
import 'package:clean_architecture/src/data/repository/chat_repository.dart';
import 'package:clean_architecture/src/domain/entities/get_data_entity.dart';

/// Api Managerlardan foydalanadigan class

class GetMessagesCase extends UseCase{
  GetMessagesCase({required this.chatRepo});
  ChatRepository chatRepo;
  
  @override
  Future<List<GetDataEntity>> call(dynamic params) async{

    final result = await chatRepo.getMessages(params);

    return result;
}

}
