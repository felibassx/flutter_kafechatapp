import 'package:kafechat/pages/chat_page.dart';
import 'package:kafechat/pages/loading_page.dart';
import 'package:kafechat/pages/login_page.dart';
import 'package:kafechat/pages/register_page.dart';
import 'package:kafechat/pages/usuarios_page.dart';

final appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
