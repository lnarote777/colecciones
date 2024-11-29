import 'dart:io';
import 'Ejercicio1.dart';
import 'Ejercicio2.dart';
import 'Ejercicio3.dart';

void main(){
  bool salir = false;

  while(!salir){
    print("\n****** MENÚ EJERCICIOS ******" +
        "\n\t1. Ejercicio 1" +
        "\n\t2. Ejercicio 2" +
        "\n\t3. Ejercicio 3" +
        "\n\t0. Salir");

    var opcion = stdin.readLineSync().toString();

    switch(opcion){
      case "1":
        ejercicio1();
        break;

      case "2":
        ejercicio2();
        break;

      case "3":
        ejercicio3();
        break;

      default:
        salir = true;
        break;
    }
  }
}