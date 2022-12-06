part of '../views/main_chat_view.dart';

class _RecentChat extends StatelessWidget {
  const _RecentChat({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .5,
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
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        height: 4.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                            color: ColorManager.grey.withOpacity(.25),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        margin: const EdgeInsets.symmetric(vertical: 8).r,
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Chats',
                            style: Theme.of(context).appBarTheme.titleTextStyle,
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
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
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
                      AllChats(controller: scrollController),
                      AllChats(controller: scrollController),
                      AllChats(controller: scrollController),
                      AllChats(controller: scrollController),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class AllChats extends StatelessWidget {
  const AllChats({
    Key? key,
    this.controller,
  }) : super(key: key);
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      physics: const ClampingScrollPhysics(),
      itemCount: chatTileData.length,
      itemBuilder: (context, index) => ChatTile(
        name: chatTileData[index]['name'],
        lastMsg: chatTileData[index]['lastMsg'],
        isOnline: chatTileData[index]['isOnline'],
        isAvailable: chatTileData[index]['isAvailable'],
        imageLink: chatTileData[index]['imageLink'],
        unReadMsg: chatTileData[index]['unReaddMsg'],
      ),
    );
  }
}
