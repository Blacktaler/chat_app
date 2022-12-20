part of 'messaging_bloc.dart';

@immutable
abstract class MessagingEvent {}

class SendMessage extends MessagingEvent{
  String id;
  String text;
  SendMessage(this.id,this.text);
}

class GetMessages extends MessagingEvent{}

class InitialMessages extends MessagingEvent{}