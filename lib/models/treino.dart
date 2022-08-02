

import 'exercicios.dart';

class Treino{
  String nome = "";
  List<Exercicio> listaExercicios = [];

  Treino({required String nome, required List<Exercicio> listaExercicios}){
    this.nome = nome;
    this.listaExercicios = listaExercicios;
  }
}

Treino peito = Treino(nome: "Peito", listaExercicios: [sup_reto_barra, sup_reto_haltere, crossover, sup_declinado_haltere]);
Treino costas = Treino(nome: "Costas", listaExercicios: [barra_fixa_aberta, remada_curvada, remada_serrote, pull_over_barra, remada_cavalinho, puxada_pulley, remada_cabo]);
Treino perna = Treino(nome: "Perna", listaExercicios: [agachamento_barra, agachamento_frontal_barra, agachamento_halteres, step_unilateral,rosca_perna,elevacao_panturrilha_step,avanco_invertido]);
Treino biceps = Treino(nome: "Biceps", listaExercicios: [rosca_biceps, biceps_halteres, biceps_ez, biceps_cabo, rosca_concentrada]);
Treino triceps = Treino(nome: "Triceps", listaExercicios: [triceps_testa, triceps_supino, halteres_sob_cabeca, triceps_maquina, triceps_corda]);