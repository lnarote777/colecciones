import 'dart:io';

void ejercicio1() {
  Set<String> generos = {};
  Set<String> favoritos = {};
  bool salir = false;

  while (!salir) {
    print("\n****** MIS GÉNEROS MUSICALES ******" +
        "\n\t1. Añadir género" +
        "\n\t2. Listar géneros" +
        "\n\t3. Listar favoritos" +
        "\n\t0. Salir");

    var opcion = stdin.readLineSync().toString();
    switch (opcion) {
      case "1":
        print("Indique el género -> ");
        var genero = stdin.readLineSync().toString();
        generos.add(genero);

        print("¿Quieres añadirlo a favoritos? (s/n) -> ");
        var agregar = stdin.readLineSync().toString();

        if (agregar == "s") {
          if (favoritos.isEmpty || favoritos.length < 5) {
            favoritos.add(genero);
          } else {
            print("Su lista de favoritos está completa.");
          }
        } else if (agregar != "n") {
          print("Carácter no válido. '$genero' no se agregará a favoritos");
        }


      case "2":
        if (generos.isEmpty){
          print("No hay géneros añadidos. Puede agregar un nuevo género en el menu principal.\n");
        }else{
          for (var genero in generos) {
            print(genero);
          }
        }


      case "3":
        if (favoritos.isEmpty){
          print("No hay géneros añadidos. Puede agregar un nuevo género en el menu principal.\n");
        }else{
          for (var genero in favoritos) {
            print(genero);
          }
        }

      case "0":
        salir = true;

      default: print("Opción inválida.");
    }
  }
}

