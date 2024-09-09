import 'package:flutter/cupertino.dart';
import 'package:meditation_app/services/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig: AppRouter.router,
    );
  }
}
