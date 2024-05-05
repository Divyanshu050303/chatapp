import 'package:chatapp/feature/auth/screen/auth.dart';
import 'package:chatapp/feature/chat_detail/screen/chat_details.dart';

import 'package:chatapp/navbar/navbar.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter routes = GoRouter(initialLocation: "/home", routes: [
    GoRoute(path: "/home", builder: (context, state) => const NavBar()),
    GoRoute(path: "/auth", builder: (context, state) => const AuthScreen()),
    GoRoute(
        path: "/chatDetail", builder: (context, state) => const ChatDetails()),
  ]);
}