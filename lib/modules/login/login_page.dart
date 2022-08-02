import 'package:flutter/material.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';
import '../../shared/widgets/custom_widgets.dart';
import 'login_controller.dart';
import 'matricula_page.dart';

bool _isFuncionario = false;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _senhaController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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

            Form(
              key: _formKey,
              child: Column(
                children: [
                  
                   inputTextGeneric(
                      regex: RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                      title: "Email",
                      controller:_emailController,
                      inputType: TextInputType.emailAddress,
                      ),
                  
                    inputPassword(controller: _senhaController,),
                  
                  
                ],
              ),
            ),
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  setState(() {
                    if(_isFuncionario)
                    _isFuncionario = !_isFuncionario;
                  });
                },
                child: Text("Cliente",
                  style: _isFuncionario ? AppTextStyles.loginButtonUnselected : AppTextStyles.loginButtonSelected,)),
                TextButton(onPressed: (){
                  setState(() {
                    if(!_isFuncionario)
                    _isFuncionario = !_isFuncionario;
                  });
                },
                child: Text("Funcionário",
                  style: _isFuncionario ? AppTextStyles.loginButtonSelected : AppTextStyles.loginButtonUnselected,)),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CadastroPage())));
                    },
                  ),
                  Text("agora!", style: AppTextStyles.loginSimple),
                ],
              ),
            ),

            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget loginButton() {
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
            children: [Text("Login"), Icon(Icons.arrow_right)],
          )),
        ),
        onPressed: () {
          if(_formKey.currentState!.validate()){
            loginRedirect(
              email: _emailController,
              senha: _senhaController,
              context: context,
              funcionario: _isFuncionario,
              );
          }
        },
      ),
    );
  }
}
