part of '../views/chat_room_view.dart';

class _ChatRoomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _ChatRoomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorManager.grey),
      leadingWidth: 30.w,
      title: ListTile(
        minLeadingWidth: 0,
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 18.r,
          backgroundImage: const NetworkImage(AppStrings.personImageLink),
        ),
        title: Text(
          'Fullsnack Designer',
          style: getSemiBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: 16.sp,
          ),
        ),
        subtitle: Text(
          '7 Online, from 12 peoples',
          style: getRegularStyle(
            color: ColorManager.grey,
            fontSize: 12.sp,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          iconSize: 20.r,
          icon: const Icon(Icons.videocam),
          color: ColorManager.grey,
        ),
        IconButton(
          onPressed: () {},
          iconSize: 20.r,
          icon: const Icon(Icons.more_vert),
          color: ColorManager.grey,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}
