import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gift_service_2/locator.dart';
import 'package:gift_service_2/models/chat_message.dart';
import 'package:gift_service_2/models/user.dart';
import 'package:gift_service_2/services/chat_service.dart';

part 'chat_room_event.dart';
part 'chat_room_state.dart';

class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  final User user;
  final String title;

  ChatRoomBloc({this.user, this.title}) : super(ChatRoomInitial());

  ChatService _chatService = locator<ChatService>();

  StreamSubscription chatRoom;

  @override
  Stream<ChatRoomState> mapEventToState(
      ChatRoomEvent event,
      ) async* {
    if (event is ChatRoomLoad) {
      yield ChatRoomLoading();
      chatRoom?.cancel();
      chatRoom = _chatService.getChatMessages(title).listen((messages) {
        add(ReceiveMessage(messages: messages));
      });
    } else if (event is ReceiveMessage) {
      yield ChatRoomLoadSuccess(messages: event.messages);
    } else if (event is SendMessage) {
      _chatService.sendChatMessage(title, event.chatMessage);
      _chatService.setChatRoomLastMessage(title, event.chatMessage);
    }
  }

  @override
  Future<void> close() {
    chatRoom?.cancel();
    return super.close();
  }
}
