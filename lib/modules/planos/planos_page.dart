import 'package:coliseum_fit_aluno/modules/ficha/ficha_page.dart';
import 'package:coliseum_fit_aluno/modules/home/home_page.dart';
import 'package:coliseum_fit_aluno/shared/themes/app_colors.dart';
import 'package:coliseum_fit_aluno/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class PlanosPage extends StatelessWidget {
  const PlanosPage({Key? key}) : super(key: key);

  Widget planOption(String nomePlano, double valorPlano, {required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
      child: InkWell(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.backgroundButton,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10), right: Radius.circular(10)),
          ),
          child: ListTile(
            title: Text(
              nomePlano,
              style: AppTextStyles.titleHome,
            ),
            trailing: Text(
              "RS " + valorPlano.toStringAsFixed(2),
              style: AppTextStyles.titleHomeSecondary,
            ),
          ),
        ),
        onTap: () {
          showDialog(context: context, builder: (BuildContext context) => alertPlan(nomePlano, valorPlano, context: context));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            planOption("Semanal", 25.00, context: context),
            planOption("Mensal", 69.90, context: context),
            planOption("Trimestral", 179.90, context: context),
            planOption("Semestral", 349.90, context: context),
          ],
        ),
      ),
    );
  }
}

Widget alertPlan(String nomePlano, double valorPlano, {required BuildContext context}){
    return AlertDialog(
      title: Text("Verifique as informações."),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Plano: " + nomePlano),
          Text(valorPlano.toStringAsFixed(2)),
        ],
      ),
      actions: [
       
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancelar", style: AppTextStyles.cancelAlert,)),
         TextButton(onPressed: (){
          Navigator.pop(context);
          showDialog(context: context, builder: (context) => confirmAlert(context));
        },
          child: Text("Confirmar", style: AppTextStyles.confirmAlert,)),
      ],
    );
  }
    

  Widget confirmAlert(BuildContext context){
    return AlertDialog(
      title: Text("Plano comprado com sucesso."),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Ok", style: AppTextStyles.confirmAlert,)),
      ],
    );
  
  }