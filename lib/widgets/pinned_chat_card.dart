import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fourth_pyramid_task/config/routes/magic_router.dart';
import 'package:fourth_pyramid_task/core/utils/media_query_values.dart';
import 'package:fourth_pyramid_task/features/chat/views/chat_room_view.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/font_manager.dart';
import '../core/utils/styles_manager.dart';

class PinnedChatCard extends StatelessWidget {
  const PinnedChatCard({
    Key? key,
    required this.name,
    required this.lastMsg,
    required this.isOnline,
    required this.isAvailable,
    this.lastMsgByMe = false,
    required this.imageLink,
    this.isSelected = false,
  }) : super(key: key);
  final String name;
  final String lastMsg;
  final bool isOnline;
  final bool isSelected;

  final bool isAvailable;
  final bool lastMsgByMe;
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
      margin: const EdgeInsets.all(8).r,
      width: context.width / 2.2,
      // height: 120.h,
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.primary.withOpacity(.1)
            : ColorManager.onBackGround,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ListTile(
                onTap: () => MagicRouter.navigateTo(const ChatRoomView()),
                contentPadding: EdgeInsets.zero,
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 24.r,
                      backgroundImage: NetworkImage(imageLink),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 14.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          shape: BoxShape.circle,
                          color: isOnline & isAvailable
                              ? Colors.green
                              : isOnline & !isAvailable
                                  ? Colors.yellow
                                  : Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  name,
                  style: getSemiBoldStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSize.s14.sp,
                  ),
                ),
              ),
              isSelected
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.primary,
                        ),
                        width: 12,
                        height: 12,
                      ),
                    )
                  : Container(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: SizedBox(
              width: context.width / 2.2,
              child: Row(
                children: [
                  lastMsgByMe
                      ? const Icon(
                          Icons.reply,
                          size: 18,
                          color: Colors.grey,
                        )
                      : Container(),
                  Flexible(
                    child: Text(
                      lastMsg,
                      style: getRegularStyle(
                        color: isSelected
                            ? ColorManager.textPrimary
                            : ColorManager.grey,
                        fontSize: 12.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                      // softWrap: false,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
