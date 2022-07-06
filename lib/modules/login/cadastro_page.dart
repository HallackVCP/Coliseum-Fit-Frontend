import 'package:flutter/material.dart';

import '../../shared/widgets/input_text_widget.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  TextEditingController _nome = TextEditingController();
  TextEditingController _cpf = TextEditingController();
  TextEditingController _telefone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();
  TextEditingController _confirmarSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(backgroundColor: AppColors.background, foregroundColor: AppColors.primary, title: Text("Cadastro"),),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/planos');
          },
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          label: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(width: 16),Text("Escolher plano"), Icon(Icons.arrow_right)],
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
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

            inputText("Nome", _nome),
            inputText("Email", _email),
            inputText("CPF", _cpf, numericInput: true),
            inputText("Telefone", _telefone, numericInput: true),
            inputText("Senha", _senha, password: true),
            inputText("Confirmar senha", _confirmarSenha, password: true),
            //inputText("Senha", , password: true),
            
            // OPCAO DE CADASTRO
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Já possui uma conta? Faça",
                    style: AppTextStyles.loginSimple,
                  ),
                  TextButton(
                    child: Text(
                      "login",
                      style: AppTextStyles.loginButtonSelected,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(".", style: AppTextStyles.loginSimple),
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