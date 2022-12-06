part of '../views/chat_room_view.dart';
class _SentMsg extends StatelessWidget {
  const _SentMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 200.w,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 8, 18, 8),
                decoration: const BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thats very nice place! you guys made a very good decision.\n Cant wait to go on vacation!',
                      style: getRegularStyle(
                          color: ColorManager.white, fontSize: 12.sp),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '16.04',
                        style: getRegularStyle(
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Stack(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: const NetworkImage(AppStrings.personImageLink),
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
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
