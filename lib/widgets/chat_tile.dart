import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fourth_pyramid_task/config/routes/magic_router.dart';
import 'package:fourth_pyramid_task/features/chat/views/chat_room_view.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/font_manager.dart';
import '../core/utils/styles_manager.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.name,
    required this.lastMsg,
    required this.isOnline,
    required this.isAvailable,
    this.lastMsgByMe = false,
    required this.imageLink,
    this.isSelected = false,
    required this.unReadMsg,
  }) : super(key: key);
  final String name;
  final String lastMsg;
  final String? unReadMsg;
  final bool isOnline;
  final bool isSelected;
  final bool isAvailable;
  final bool lastMsgByMe;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8).r,
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.primary.withOpacity(.1)
            : ColorManager.onBackGround,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: () => MagicRouter.navigateTo(const ChatRoomView()),
        contentPadding: const EdgeInsets.symmetric(vertical: 6).r,
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
        subtitle: Text(
          lastMsg,
          style: getRegularStyle(
            color: ColorManager.secondary,
            fontSize: FontSize.s14.sp,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          children: [
            Text(
              '18.31',
              style: getRegularStyle(color: ColorManager.darkGrey),
            ),
            unReadMsg != null
                ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: ColorManager.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      unReadMsg!,
                      style: getBoldStyle(color: ColorManager.white),
                    ),
                  )
                : Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '0',
                      style: getBoldStyle(color: Colors.transparent),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
