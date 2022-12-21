part of 'messaging_bloc.dart';

@immutable
abstract class MessagingState {}

class MessagingInitial extends MessagingState {}

class LoadMessages extends MessagingState{
  List<GetDataEntity>? messages;
  bool? isLoading;
  LoadMessages({this.messages,this.isLoading});
}