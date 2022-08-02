import 'package:coliseum_fit_aluno/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../../models/user.dart';
import '../../shared/themes/app_colors.dart';

class MinhaSaudePage extends StatefulWidget {
  final User user;
  const MinhaSaudePage({Key? key, required this.user}) : super(key: key);

  @override
  State<MinhaSaudePage> createState() => _MinhaSaudePageState();
}

class _MinhaSaudePageState extends State<MinhaSaudePage> {
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        Divider(
          color: AppColors.primary,
        ),
        listTileSaude(
            nomeMedida: "Peso", valorMedido: widget.user.peso, unidadeMedida: "kg"),
        listTileSaude(
            nomeMedida: "Altura", valorMedido: widget.user.altura, unidadeMedida: "m"),
        
        Divider(
          color: AppColors.primary,
        ),
        
        listTileSaude(
            nomeMedida: "IMC", valorMedido: widget.user.peso / (widget.user.altura * widget.user.altura)),
        
        Divider(
          color: AppColors.primary,
        ),
      ],
    );
  }

  Widget listTileSaude(
      {required String nomeMedida,
      required double valorMedido,
      String unidadeMedida = ""}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22),
      child: ListTile(
        onTap: (){
          showDialog(
            context: context,
            builder:(context) => alteraValor(valor: valorMedido, suff: unidadeMedida));
        },
        title: Text(
          nomeMedida,
          style: AppTextStyles.titleHomeSecondary,
        ),
        trailing: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: valorMedido.toStringAsFixed(2),
                style: AppTextStyles.titleHome),
            TextSpan(
                text: "  " + unidadeMedida, style: AppTextStyles.loginSimple),
          ]),
        ),
      ),
    );
  }

  AlertDialog alteraValor({
    required double valor,
    required String suff,
  }) {
    return AlertDialog(
      title: Text(
        "Alterar dados de saúde",
        style: AppTextStyles.titleHome,
      ),
      backgroundColor: AppColors.background,
      content: HorizontalPicker(
        initialPosition: InitialPosition.center,
        minValue: 0,
        maxValue: 150,
        divisions: 1500,
        height: 220,
        suffix: "kg",
        showCursor: false,
        backgroundColor: AppColors.background,
        activeItemTextColor: AppColors.primary,
        passiveItemsTextColor: AppColors.border.withOpacity(0.5),
        onChanged: (value) {
          valor = value;
        },
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancelar",
              style: AppTextStyles.cancelAlert,
            )),
        TextButton(
            onPressed: () {
              setState(() {
                valor = 10;
                Navigator.pop(context);
              });
            },
            child: Text(
              "Salvar",
              style: AppTextStyles.confirmAlert,
            )),
      ],
    );
  }
}
