import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fourth_pyramid_task/core/utils/color_manager.dart';
import 'package:fourth_pyramid_task/core/utils/media_query_values.dart';
import 'package:fourth_pyramid_task/core/utils/strings_manager.dart';
import 'package:fourth_pyramid_task/core/utils/styles_manager.dart';
part '../units/general_chat.dart';
part '../units/sent_msg_bottom_bar.dart';
part '../units/chat_room_appbar.dart';
part '../units/other_typing.dart';
part '../units/receive_msg.dart';
part '../units/sent_msg.dart';
class ChatRoomView extends StatelessWidget {
  const ChatRoomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _ChatRoomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).r,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8).r,
                child: Column(
                  children: [
                    const _ReceivedMsg(),
                    SizedBox(height: 24.h),
                    const _SentMsg(),
                    SizedBox(height: 16.h),
                    const _OtherTyping(), 
                  ],
                ),
              ),
            ),
            const _GeneralChat()
          ],
        ),
      ),
      bottomNavigationBar: const _BottomBarToSendMsg(),
    );
  }
}
