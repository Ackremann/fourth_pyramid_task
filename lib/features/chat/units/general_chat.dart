part of '../views/chat_room_view.dart';
class _GeneralChat extends StatelessWidget {
  const _GeneralChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          // height: 40.h,
          color: ColorManager.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '# General',
                style:
                    getBoldStyle(color: ColorManager.primary, fontSize: 12.sp),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.expand_less_rounded,
                      color: ColorManager.primary,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: ColorManager.primary,
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
