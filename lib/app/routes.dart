import 'package:hisob_roject/pages/home/index.dart';
import 'package:hisob_roject/pages/select_language/index.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/select-language',
      builder: (context, state) => const SelectLanguage(),
    ),
  ],
);
