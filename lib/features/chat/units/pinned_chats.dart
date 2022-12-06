part of '../views/main_chat_view.dart';

class _PinnedChat extends StatelessWidget {
  const _PinnedChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pinned Chats',
                style: getSemiBoldStyle(
                  color: ColorManager.textPrimary,
                  fontSize: 18.sp,
                ),
              ),
              CircleAvatar(
                radius: 18.r,
                backgroundImage:
                    const NetworkImage(AppStrings.person5ImageLink),
              )
            ],
          ),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.end,
          children: const [
            PinnedChatCard(
              name: 'Mike Wazowski',
              lastMsg: 'Thats Awesome',
              isAvailable: false,
              isOnline: true,
              lastMsgByMe: true,
              imageLink: AppStrings.personImageLink,
            ),
            PinnedChatCard(
              name: 'Darlene Steward',
              lastMsg: 'Pls take a look a the code cleeean',
              isAvailable: false,
              isOnline: true,
              imageLink: AppStrings.person2ImageLink,
              isSelected: true,
            ),
            PinnedChatCard(
              name: 'Gregory Roberson',
              lastMsg: 'Preparing for next Vaccination',
              isAvailable: false,
              isOnline: false,
              imageLink: AppStrings.person3ImageLink,
            ),
            PinnedChatCard(
              name: 'Dwight Wilson',
              lastMsg: 'i\'d like to watch the clean code',
              isAvailable: true,
              lastMsgByMe: true,
              isOnline: true,
              imageLink: AppStrings.person4ImageLink,
            ),
          ],
        ),
      ],
    );
  }
}
