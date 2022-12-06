import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fourth_pyramid_task/config/routes/magic_router.dart';
import 'package:fourth_pyramid_task/config/theme/theme.dart';
import 'features/chat/views/main_chat_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 699),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: appTheme(),
          home: const MainChatView(),
          onGenerateRoute: onGenerateRoute,
          navigatorKey: navigatorKey,
        );
      },
    );
  }
}
