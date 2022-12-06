part of '../views/chat_room_view.dart';
class _BottomBarToSendMsg extends StatelessWidget {
  const _BottomBarToSendMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: BottomAppBar(
          elevation: 0,
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: Color(0xffEDEDED)))),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.tag_faces_outlined,
                      color: ColorManager.grey,
                    ),
                    SizedBox(width: 16.w),
                    SizedBox(
                      width: 200.w,
                      child: const TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Write Message'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                        )),
                    Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: const ShapeDecoration(
                        color: ColorManager.primary,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.transparent)),
                      ),
                      child: IconButton(
                        splashRadius: 20.r,
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.keyboard_voice_rounded,
                          color: ColorManager.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
