import 'package:flutter/material.dart';
import '../../models/user.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

Widget inputText(String title, TextEditingController _controller, {bool password = false, bool numericInput = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 26.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title + ":",
            style: AppTextStyles.loginTitleField,
          ),
          TextField(
            style: AppTextStyles.loginInputField,
            keyboardType: numericInput ? TextInputType.number : TextInputType.text,
            controller: _controller,
            obscureText: password,
            
            decoration: InputDecoration(
              
              focusColor: AppColors.primary,
              disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.backgroundButton),
                   ),  
              enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                   ),  
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.warningRed)
              ),
              ),
            
          )
        ],
      ),
    );
  }

Widget inputTextGeneric({required RegExp regex, required TextEditingController controller, required String title, TextInputType inputType = TextInputType.text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28),
    child: TextFormField(
      keyboardType: inputType,
      controller: controller,
      validator: (value){
        if(!regex.hasMatch(value!))
          return "Insira um " + title.toLowerCase() +" valido!";
      },
      style: AppTextStyles.loginInputField,
      decoration: InputDecoration(
        label: Text(title),
        labelStyle: AppTextStyles.loginTitleField,
        border: OutlineInputBorder(),
      ),
    ),
  );
}

class inputPassword extends StatefulWidget {
  TextEditingController controller;
  inputPassword({Key? key, required this.controller}) : super(key: key);

  @override
  State<inputPassword> createState() => _inputPasswordState();
}

class _inputPasswordState extends State<inputPassword> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28),
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return "Digite sua senha";
          }
        },
        controller: widget.controller,
      obscureText: visible,
      style: AppTextStyles.loginInputField,
      decoration: InputDecoration(
        suffixIcon: visible ?
        IconButton(icon: Icon(Icons.visibility, color: AppColors.primary,), onPressed: (){
          setState(() {
            visible = !visible;
          });
        },) : 
        IconButton(icon: Icon(Icons.visibility_off, color: AppColors.primary,), onPressed: (){
          setState(() {
            visible = !visible;
          });
        }) ,
        label: Text("Senha", style: AppTextStyles.loginTitleField,)
      ),

  ),
    );
  }
}

Widget drawerHeader({required User user}){
  return Padding(
    padding: const EdgeInsets.only(top: 70.0, bottom: 16),
    child: Column(children: [
      CircleAvatar(
              radius: 75,
              backgroundColor: AppColors.primary,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/usuario.png"),
              ),
            ), 
            Text(user.nome,style: AppTextStyles.titleDrawer),
            
            Padding(
              padding: const EdgeInsets.only(top:8.0, bottom: 22),
              child: Text("Matricula vence dia: " +
                        DateTime.now().day.toString() +
                        " / " +
                        DateTime.now().month.toString(),
                    style: AppTextStyles.subtitleDrawer,
                  ),
            ),
  
        Divider(),
        ]
    ),
  );
}
  
Widget drawerOption({required String title, required IconData icon}){
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
              child: ListTile(
          leading: CircleAvatar(radius: 26, backgroundColor: AppColors.background, child: Icon(icon, size: 26),),
          title: Text(title, style: AppTextStyles.titleDrawer,),
          
          ),
     );
  }
