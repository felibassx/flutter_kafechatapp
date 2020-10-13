import 'package:flutter/material.dart';
import 'package:kafechat/widgets/button_blue.dart';
import 'package:kafechat/widgets/custom_input.dart';
import 'package:kafechat/widgets/labels.dart';
import 'package:kafechat/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    title: 'Messenger',
                  ),
                  _From(),
                  Labels(
                    infoText: '¿No tienes un cuenta?',
                    navigatorTex: 'Crea una ahora!',
                    route: 'register',
                  ),
                  Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _From extends StatefulWidget {
  _From({Key key}) : super(key: key);

  @override
  __FromState createState() => __FromState();
}

class __FromState extends State<_From> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            controller: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            keyboardType: TextInputType.visiblePassword,
            controller: passwordCtrl,
            isPassword: true,
          ),
          ButtonBlue(
            text: 'Ingresar',
            onPresset: () {
              print('object ${emailCtrl.text} ${passwordCtrl.text}');
            },
          )
        ],
      ),
    );
  }
}
