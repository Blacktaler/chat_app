import 'package:clean_architecture/src/data/datasource/remote/fire_messages.dart';
import 'package:clean_architecture/src/features/blocs/messaging/messaging_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  ChatPage({required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Scaffold(body:
        BlocBuilder<MessagingBloc, MessagingState>(builder: ((context, state) {
      if (state is LoadMessages) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  child: ListView.builder(
                      itemCount: (state.messages ?? []).length,
                      itemBuilder: (_, __) {
                        return Text(state.messages![__].text);
                      })),
            ),
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: state.isLoading!
                          ? null
                          : () {
                              context
                                  .read<MessagingBloc>()
                                  .add(SendMessage(id, textController.text));
                            },
                      icon: state.isLoading!
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Icon(Icons.message))),
            ),
          ],
        );
      } else if (state is MessagingInitial) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Text("");
      }
    })));
  }
}
