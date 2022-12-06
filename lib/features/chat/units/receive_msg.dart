part of '../views/chat_room_view.dart';
class _ReceivedMsg extends StatelessWidget {
  const _ReceivedMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
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
        const SizedBox(width: 8),
        SizedBox(
          width: context.width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 8, 18, 8),
                decoration: BoxDecoration(
                    color: ColorManager.onBackGround,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mike Mazowski',
                          style: getSemiBoldStyle(
                              color: ColorManager.orange, fontSize: 14.sp),
                        ),
                        Text(
                          'admin',
                          style: getRegularStyle(
                            color: ColorManager.lightGrey,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Thats very nice place! you guys made a very good decision.\n Cant wait to go on vacation!',
                      style: getRegularStyle(
                          color: ColorManager.textPrimary, fontSize: 12.sp),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '16.04',
                        style: getRegularStyle(
                          color: ColorManager.lightGrey,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                height: 100.h,
                width: 204.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/099b/addc/db456ade8eca683db38d220909f84dac?Expires=1671408000&Signature=WOSTezY3qJAtrwfyd80tLMjk~0B~~afiiLTXWd1D7sLPZrdI5UDJRZZ7SaCj~vtv8~nuOTipfG9cAgnDqwnxIVOHl8zuDV5~CkEDl0JDORyWQOm5PRDgTmF~Q-zVQwC9IHgWa6d4m~Yzvk0m2H-Sp7opIu75Wu9HXFznA3N2rKQf4xet2axtW8859Lx0tBwLwXCnHc8AIVsQ01t-DqQpklp2a7dpuf9I2U7C0ml4JsXy~fx~7sRI0DMeVIazq867q8aMeYJL8cNMqtdnEjO6-ed8HwKpYCOS6Oqg8ygAtHJC7lt9F3GBZTW8FIDe1~EHhv4nAuqbo7WnG27FDShmAw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: 204.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/cfb0/0e39/c5e5f4f65d23cf45464339819f7dc275?Expires=1671408000&Signature=GZOOC2e9QYAy2BK0pUdf9L-kzZlUeoPav3jkzkoPWfuv18KNXOFBb3idKxj5OfMoeQZVjBbRI-oqWkVQmMWW20HwR83927~9Rad40vmm-eKsweLWA51It9YQ9msjv00LCUy5QV4-7m9TYvxay~NKQGSSPg0C8bcBcvhYQfbr0m4f0Kq-bMJoJgis88Qt2lCMCjNBdUPNNosr~SqkWFVpUbNwjNM4vR0Otmk3f-b9n4wLuy5YYIma5BS7qW7QMuufrk14l5I7k~rNiqhAHNdHrritzQ7QlQMQvwZ9QwALG-zG5jdVCQ3iRSeY4rsqNKwWR3~n076buL0JX~oUt8fYMA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
                    ),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/f5a5/1cba/450d4142e2ac171ad1c863dcb49cc5a2?Expires=1671408000&Signature=TDHRpfHZ4PWO4EOExV0k~nPlD0SOS49OAJWxuTrGevfZeYuCc8~jKWGQusSwAOP2fcSHY3gqezKr10FkhLPAOehR1E5kDqSj4-o97MGQdBdL3B5flst6RDXXMebxObP2Llm4PPo7JnHFFqez2XSpWxsRm6heih5XjQzpVUKAi2-574R3UZAVO7d6ALkr0gDwXrgTAiZICJi6M2Lo-MJ-SiAC-IyfBF618I3xXUDFdP8nmhoc25Brf94EBC3YUNNSyD9xgkkp8yBykFO1fAG~SsPYwzW3AslnLSM8y02N~SK2wlyrKVwUwojOsiJx5Z3Y7hiIusS2RV~pNWsFXfVHGw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
