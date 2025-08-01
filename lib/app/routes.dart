import 'package:hisob_roject/pages/home/index.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())],
);
