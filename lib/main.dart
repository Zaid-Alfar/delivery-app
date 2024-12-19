import 'package:delivery_app/routes/app_router.dart';
import 'package:delivery_app/screens/navigation_bar_screen.dart';
import 'package:delivery_app/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) =>  DeleveryApp(), // Wrap your app
        ),
      );
    },
  );
}

class DeleveryApp extends StatelessWidget {
   DeleveryApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(

            routerConfig: _appRouter.config(),
             
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
           );
        });
  }
}
