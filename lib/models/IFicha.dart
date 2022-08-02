import 'ficha.dart';
import 'exercicios.dart';
import 'treino.dart';

int getNumeroTreinos(){
  return ficha.listaTreinos.length;
}

Ficha getFicha(){
  return ficha;
}

List<Exercicio> getExerciciosFromList(int i){
  return ficha.listaTreinos[i].listaExercicios;
}