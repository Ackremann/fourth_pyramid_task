import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fourth_pyramid_task/core/utils/assets_manager.dart';
import 'package:fourth_pyramid_task/core/utils/color_manager.dart';
import 'package:fourth_pyramid_task/core/utils/strings_manager.dart';
import 'package:fourth_pyramid_task/core/utils/styles_manager.dart';
import '../../../core/data/chat_tile_model.dart';
import '../../../widgets/chat_tile.dart';
import '../../../widgets/pinned_chat_card.dart';
part '../units/bottom_nav_bar.dart';
part '../units/new_chat_fab.dart';
part '../units/recent_chats.dart';
part '../units/pinned_chats.dart';
class MainChatView extends StatelessWidget {
  const MainChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            _PinnedChat(),
            _RecentChat(),
          ],
        ),
      ),
      floatingActionButton: const _NewChatFAB(),
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}


