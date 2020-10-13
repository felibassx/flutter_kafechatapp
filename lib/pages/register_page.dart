import 'package:flutter/material.dart';
import 'package:kafechat/widgets/button_blue.dart';
import 'package:kafechat/widgets/custom_input.dart';
import 'package:kafechat/widgets/labels.dart';
import 'package:kafechat/widgets/logo.dart';

class RegisterPage extends StatelessWidget {
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
                    title: 'Registro',
                  ),
                  _From(),
                  Labels(
                    infoText: '¿Ya tienes un cuenta?',
                    navigatorTex: 'Ingresa ahora!',
                    route: 'login',
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
  final nameCtrl = TextEditingController();
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
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            controller: nameCtrl,
          ),
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
            text: 'CrearCuenta',
            onPresset: () {
              print('object ${emailCtrl.text} ${passwordCtrl.text}');
            },
          )
        ],
      ),
    );
  }
}
