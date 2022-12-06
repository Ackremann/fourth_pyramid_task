part of '../views/main_chat_view.dart';

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ''),
        ],
      ),
    );
  }
}
