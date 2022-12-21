part of 'messaging_bloc.dart';

@immutable
abstract class MessagingEvent {}

class SendMessage extends MessagingEvent{
  String id;
  String text;
  int index;
  SendMessage(this.id,this.text,this.index);
}

class GetMessages extends MessagingEvent{}

class InitialMessages extends MessagingEvent{}