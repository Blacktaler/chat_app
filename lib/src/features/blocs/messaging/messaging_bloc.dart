import 'package:bloc/bloc.dart';
import 'package:clean_architecture/src/data/datasource/remote/fire_messages.dart';
import 'package:clean_architecture/src/data/dto/chat_dto.dart';
import 'package:meta/meta.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  MessagingBloc() : super(MessagingInitial()) {
    on<InitialMessages>((event, emit) async {
      final messages = await FireMessages.getChats();
      await Future.delayed(Duration(milliseconds: 500));
      emit(LoadMessages(messages: messages, isLoading: false));
    });

    on<GetMessages>((event, emit) async {
      emit(LoadMessages(isLoading: true));

      final messages = await FireMessages.getChats();

      emit(LoadMessages(messages: messages, isLoading: false));
    });

    on<SendMessage>((event, emit) async {
      emit(LoadMessages(isLoading: true));

      await FireMessages.senMessage(event.id, event.text);

      final messages = await FireMessages.getChats();
      
      emit(LoadMessages(messages: messages,isLoading: false));
    });
  }
}
