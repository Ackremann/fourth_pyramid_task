part of '../views/main_chat_view.dart';

class _NewChatFAB extends StatelessWidget {
  const _NewChatFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: SvgPicture.asset(ImageAssets.fabMsgIcon),
    );
  }
}
