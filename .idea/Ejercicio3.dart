import 'dart:io';

void Ejercicio3(){
  Map<int ,Estudiante> listaEstudiantes = {
    1: Estudiante('Marta', [4.6, 7, 8.9])
  };
  bool salir = false;

  while(!salir){
    print("\n****** ESTUDIANTES ******" +
        "\n\t1. Añadir notas" +
        "\n\t2. Listar alumno" +
        "\n\t3. Listar todos los alumnos" +
        "\n\t0. Salir");

    var opcion = stdin.readLineSync().toString();
    switch (opcion) {

      case "1":
        print("Nombre del estudiante -> ");
        var nombre = stdin.readLineSync().toString();

        print("Añade las notas (ejemplo: 2, 4.5, 6, etc) -> ");
        var notasStr = stdin.readLineSync().toString().split(", ");
        List<double> notas = notasStr.map((e) => double.parse(e)).toList();

        int lastStud = listaEstudiantes.keys.last;

        listaEstudiantes[lastStud + 1] = Estudiante(nombre, notas);

        print("Estudiante añadido.");
        break;

      case "2":
        if (listaEstudiantes.isEmpty) {
          print("No hay géneros añadidos.\n");
        } else {
          print("id del estudiante -> ");
          var id = stdin.readLineSync().toString();

          if (listaEstudiantes.containsKey(id)){
            listaEstudiantes[id]?.mostrar();
          }else{
            print("Estudiante no encontrado.\n");
          }
        }
        break;


      case "3":
        if (listaEstudiantes.isEmpty) {
          print("No hay géneros añadidos.\n");
        } else {
          listaEstudiantes.forEach((id, estudiante){
            print("ID: $id -> ${estudiante.mostrar()}");
          });
        }
        break;

      case "0":
        salir = true;
        break;

      default:
        print("Opción inválida.");
        break;
    }
  }
}

class Estudiante{
  String _nombre;
  List<double> _notas;

  Estudiante(this._nombre, this._notas);

  String mostrar() => "$_nombre : $_notas";

}