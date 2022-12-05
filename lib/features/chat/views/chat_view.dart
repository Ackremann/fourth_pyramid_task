import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fourth_pyramid_task/core/utils/assets_manager.dart';
import 'package:fourth_pyramid_task/core/utils/color_manager.dart';
import 'package:fourth_pyramid_task/core/utils/constants_manager.dart';
import 'package:fourth_pyramid_task/core/utils/font_manager.dart';
import 'package:fourth_pyramid_task/core/utils/media_query_values.dart';
import 'package:fourth_pyramid_task/core/utils/strings_manager.dart';
import 'package:fourth_pyramid_task/core/utils/styles_manager.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pinned Chats',
                        style: Theme.of(context).appBarTheme.titleTextStyle,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22.r,
                        backgroundImage:
                            const NetworkImage(AppStrings.personImageLink),
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
                      name: 'Mike Wazowski',
                      lastMsg: 'Thats Awesome',
                      isAvailable: false,
                      isOnline: true,
                      imageLink: AppStrings.personImageLink,
                      isSelected: true,
                    ),
                    PinnedChatCard(
                      name: 'Mike Wazowski',
                      lastMsg: 'Thats Awesome',
                      isAvailable: false,
                      isOnline: false,
                      imageLink: AppStrings.personImageLink,
                    ),
                    PinnedChatCard(
                      name: 'Mike Wazowski',
                      lastMsg: 'Thats Awesome',
                      isAvailable: true,
                      lastMsgByMe: true,
                      isOnline: true,
                      imageLink: AppStrings.personImageLink,
                    ),
                  ],
                ),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: .6,
              minChildSize: .5,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return DefaultTabController(
                  length: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorManager.onBackGround,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, -8),
                              blurRadius: 32,
                              spreadRadius: 0,
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: const Color(0xff4660871a).withOpacity(.1))
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomScrollView(
                      controller: scrollController,
                      // physics: const ClampingScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Container(
                                height: 4.h,
                                width: 24.w,
                                decoration: BoxDecoration(
                                    color: ColorManager.grey.withOpacity(.25),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 8).r,
                              ),
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recent Chats',
                                    style: Theme.of(context)
                                        .appBarTheme
                                        .titleTextStyle,
                                  ),
                                  SvgPicture.asset(
                                    width: 18,
                                    height: 18,
                                    ImageAssets.searchIcon,
                                  ),
                                ],
                              ),
                              SizedBox(height: 28.h),
                            ],
                          ),
                        ),
                        SliverAppBar(
                          toolbarHeight: 0.0,
                          pinned: false,
                          primary: false,
                          floating: true,
                          bottom: TabBar(
                            indicatorPadding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4)
                                .r,
                            indicatorSize: TabBarIndicatorSize.tab,
                            isScrollable: true,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: ColorManager.primary,
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor:
                                ColorManager.textPrimary.withOpacity(.5),
                            tabs: const [
                              Tab(text: 'All chats'),
                              Tab(text: 'Personal'),
                              Tab(text: 'Work'),
                              Tab(text: 'Groups'),
                            ],
                          ),
                        ),
                        SliverFillRemaining(
                          child: TabBarView(
                            children: [
                              ListView.builder(
                                controller: scrollController,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 20,
                                itemBuilder: (context, index) => const ChatTile(
                                    name: 'name',
                                    lastMsg: 'lastMsg',
                                    isOnline: true,
                                    isAvailable: true,
                                    imageLink: AppStrings.personImageLink,
                                    unReadMsg: '3'),
                              ),
                              ListView.builder(
                                // controller: scrollController,
                                physics: const ClampingScrollPhysics(),
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) => Container(
                                  color: Colors.primaries[index % 10],
                                  height: 25.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(ImageAssets.fabMsgIcon),
      ),
      bottomNavigationBar: Container(
        height: 86.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, -8),
              blurRadius: 32,
              spreadRadius: 0,
              // ignore: use_full_hex_values_for_flutter_colors
              color: const Color(0xff4660871a).withOpacity(.1))
        ]),
        child: BottomNavigationBar(
          currentIndex: 0,
          elevation: 0,
          showSelectedLabels: false,
          selectedIconTheme: const IconThemeData(color: ColorManager.primary),
          unselectedIconTheme: const IconThemeData(color: ColorManager.grey),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageAssets.msgIcon,
                color: ColorManager.grey,
              ),
              label: '',
              activeIcon: SvgPicture.asset(
                ImageAssets.msgIcon,
                color: ColorManager.primary,
              ),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.watch_later), label: ''),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageAssets.callIcon,
                color: ColorManager.grey,
              ),
              label: '',
              activeIcon: SvgPicture.asset(
                ImageAssets.callIcon,
                color: ColorManager.primary,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ''),
          ],
        ),
      ),
    );
  }
}

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
  final String unReadMsg;

  final bool isOnline;
  final bool isSelected;

  final bool isAvailable;
  final bool lastMsgByMe;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16).r,
      margin: const EdgeInsets.symmetric(horizontal: 8).r,
      // width: context.width / 2.2,
      // height: 120.h,
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.primary.withOpacity(.1)
            : ColorManager.onBackGround,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6).r,
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 28.r,
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
            ),
            trailing: Column(
              children: [
                Text(
                  '18.31',
                  style: getRegularStyle(color: ColorManager.darkGrey),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: ColorManager.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    unReadMsg,
                    style: getBoldStyle(color: ColorManager.white),
                  ),
                )
              ],
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
    );
  }
}

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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16).r,
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
                contentPadding: EdgeInsets.zero,
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 28.r,
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
            child: Row(
              children: [
                lastMsgByMe
                    ? const Icon(
                        Icons.reply,
                        size: 18,
                        color: Colors.grey,
                      )
                    : Container(),
                Text(
                  lastMsg,
                  style: getRegularStyle(
                    color: isSelected
                        ? ColorManager.textPrimary
                        : ColorManager.grey,
                    fontSize: 12.sp,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
