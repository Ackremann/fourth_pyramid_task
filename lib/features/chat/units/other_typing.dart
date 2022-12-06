part of '../views/chat_room_view.dart';

class _OtherTyping extends StatelessWidget {
  const _OtherTyping({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.more_horiz,
            color: ColorManager.grey,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 40.w,
            child: Stack(
              children: [
                SizedBox(
                  child: CircleAvatar(
                    radius: 8.r,
                    backgroundImage:
                        const NetworkImage(AppStrings.personImageLink),
                  ),
                ),
                Positioned(
                  left: 8,
                  child: CircleAvatar(
                    radius: 8.r,
                    backgroundImage:
                        const NetworkImage(AppStrings.personImageLink),
                  ),
                ),
                Positioned(
                  left: 16,
                  child: CircleAvatar(
                    radius: 8.r,
                    backgroundImage:
                        const NetworkImage(AppStrings.personImageLink),
                  ),
                ),
              ],
            ),
          ),
          const Text('+2 others are typing')
        ],
      ),
    );
  }
}
