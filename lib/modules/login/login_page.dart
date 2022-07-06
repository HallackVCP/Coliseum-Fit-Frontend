import 'package:coliseum_fit/shared/themes/app_colors.dart';
import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/custom_widgets.dart';
import 'login_controller.dart';

//  ListBody()

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isFuncionario = false;
TextEditingController _emailController = TextEditingController();
TextEditingController _senhaController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushReplacementNamed(context, loginRedirectHelper(_isFuncionario, _emailController.text, _senhaController.text));
          },
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          label: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(width: 16),Text("Login"), Icon(Icons.arrow_right)],
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset("assets/images/logo_sem_fundo.png"),
            ),
            Text(
              "Coliseum Fit",
              style: AppTextStyles.logoFont,
            ),
            Text(
              "a academia dos deuses",
              style: AppTextStyles.logoSubtitleFont,
            ),
            inputText("Email", _emailController),
            inputText("Senha", _senhaController, password: true),
            
            // SELECIONA FUNCIONARIO OU CLIENTE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: Text(
                    "Cliente",
                    style: _isFuncionario
                        ? AppTextStyles.loginButtonUnselected
                        : AppTextStyles.loginButtonSelected,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFuncionario = false;
                    });
                  },
                ),
                TextButton(
                  child: Text(
                    "Funcionario",
                    style: _isFuncionario
                        ? AppTextStyles.loginButtonSelected
                        : AppTextStyles.loginButtonUnselected,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFuncionario = true;
                    });
                  },
                ),
              ],
            ),
            
            // OPCAO DE CADASTRO
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não tem cadastro?",
                    style: AppTextStyles.loginSimple,
                  ),
                  TextButton(
                    child: Text(
                      "Cadastre-se",
                      style: AppTextStyles.loginButtonSelected,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cadastro');
                    },
                  ),
                  Text("agora!", style: AppTextStyles.loginSimple),
                ],
              ),
            ),
            
            Container(height: 70),
          ],
        ),
      ),
    );
  }

  
}
