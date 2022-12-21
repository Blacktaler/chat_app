import 'package:equatable/equatable.dart';

class GetDataEntity extends Equatable{
  String text;
  String id;
  GetDataEntity({required this.id,required this.text});

  @override
  List<Object?> get props => [text,id];
}