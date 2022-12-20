class ChatDto {
  String id;
  String text;
  ChatDto(this.id, this.text);
  factory ChatDto.fromMap(Map<String, dynamic> map) {
    return ChatDto(
      map['id'],
      map['text'],
    );
    
  }
}
