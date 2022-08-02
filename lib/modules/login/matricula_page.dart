import 'package:coliseum_fit_aluno/modules/home/home_page.dart';
import 'package:coliseum_fit_aluno/modules/planos/planos_page.dart';
import 'package:flutter/material.dart';
import '../../models/IUser.dart';

import '../../shared/widgets/custom_widgets.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}


class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();


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

            Container(height: 50,),

            Form(
              key: _formKey,
              child: Column(
                children: [

                  
                  inputTextGeneric(
                    title: "Nome completo",
                    regex: RegExp("^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}"),
                    controller: _nome,),

                  inputTextGeneric(
                    title: "Email",
                    regex: RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                    inputType: TextInputType.emailAddress,
                    controller: _email,),

                    inputTextGeneric(
                    title: "Telefone",
                    regex: RegExp(r'(^(?:[+0]9)?[0-9]{11,11}$)'),
                    inputType: TextInputType.number,
                    controller: _telefone,),

                    
                    inputTextGeneric(
                    title: "CPF",
                    regex: RegExp('([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})'),
                    inputType: TextInputType.number,
                    controller: _cpf,),

                    inputPassword(controller: _senha),

                    inputPassword(controller: _confirmarSenha),
                ]),
            ),
            
            // OPCAO DE LOGIN
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

            
            escolherPlanoButton(),
          ],
        ),
      ),
      
    );
    
  }
   
  Widget escolherPlanoButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 56),
      child: RaisedButton(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 60,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Cadastrar"), Icon(Icons.arrow_right)],
          )),
        ),
        onPressed: () {
          if(_formKey.currentState!.validate()){
            registerUser(
              nome: _nome.text,
              email: _email.text,
              senha: _senha.text,
              cpf: _cpf.text,
              telefone: _telefone.text,
            );
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}