



struct Articulo {
  let nombre: String?
  let precio: Double?
  var stock: Int?
}


var articulos = [
  Articulo(nombre: "Zapatos", precio: 700, stock: 20),
  Articulo(nombre: "Playeras", precio: 200, stock: 30),
  Articulo(nombre: "Pantalones", precio: 450, stock: 40),
  Articulo(nombre: "Sombrero", precio: 200, stock: 10),
  Articulo(nombre: "Calcetines", precio: 75, stock: 60)
]

var aux: String = ""
var opcionIngresada: String = aux
var cuenta: Double = 0.0

while opcionIngresada != "2" {
    print("****** Bienvenidos a mi tienda online ********")
    print("****** ARTICULOS ********")
    print("****** --------- ********")

    print("______________________________________")
    print(" Articulo 1 \(articulos[0].nombre!)")
    print(" Precio \(articulos[0].precio!)")
    print(" Stock: \(articulos[0].stock!)")
    print("______________________________________")

    print(" Articulo 2 \(articulos[1].nombre!)")
    print(" Precio \(articulos[1].precio!)")
    print(" Stock: \(articulos[1].stock!)")
    print("______________________________________")

    print(" Articulo 3 \(articulos[2].nombre!)")
    print(" Precio \(articulos[2].precio!)")
    print(" Stock: \(articulos[2].stock!)")
    print("______________________________________")

    print(" Articulo 4 \(articulos[3].nombre!)")
    print(" Precio \(articulos[3].precio!)")
    print(" Stock: \(articulos[3].stock!)")
    print("______________________________________")

    print(" Articulo 5 \(articulos[4].nombre!)")
    print(" Precio \(articulos[4].precio!)")
    print(" Stock: \(articulos[4].stock!)")
    print("______________________________________")

    print("1.- Comprar articulo")
    print("2.- Salir")
    print("______________________________________")

    aux = readLine()!
    opcionIngresada = aux

    switch opcionIngresada {
    case "1":
        print("______________________________________")
        print("Ingresa el numero de articulo a comprar: ")
        aux = readLine()!
        opcionIngresada = aux

        switch opcionIngresada {
        case "1":
            print("Ingresa la cantidad de zapatos que desea comprar: ")
            aux = readLine()!
            opcionIngresada = aux

            let cantidadIngresada = Int(opcionIngresada)!
            if cantidadIngresada <= articulos[0].stock! {
                /// Se puede comprar
                articulos[0].stock! = articulos[0].stock! - cantidadIngresada
                cuenta = Double(cantidadIngresada) * articulos[0].precio!
                print("Total a pagar: \(cuenta)")
                print("********* \nGRACIAS POR SU VALIOSA COMPRA, ESPERO VUELVA PRONTO A COPPEL ***********")
            } else {
                print("No hay suficiente stock, lo sentimos!")
            }

        case "2":
            print("Ingresa la cantidad de playeras que desea comprar: ")
            aux = readLine()!
            opcionIngresada = aux

            let cantidadIngresada = Int(opcionIngresada)!
            if cantidadIngresada <= articulos[1].stock! {

                articulos[1].stock! = articulos[1].stock! - cantidadIngresada
                cuenta = Double(cantidadIngresada) * articulos[1].precio!
                print("Total a pagar: \(cuenta)")
                print("********* \nGRACIAS POR SU VALIOSA COMPRA, ESPERO VUELVA PRONTO A COPPEL ***********")
            } else {
                print("No hay suficiente stock, lo sentimos!")
            }

        case "3":
            print("Ingresa la cantidad de pantalones que desea comprar: ")
            aux = readLine()!
            opcionIngresada = aux

            let cantidadIngresada = Int(opcionIngresada)!
            if cantidadIngresada <= articulos[2].stock! {

                articulos[2].stock! = articulos[2].stock! - cantidadIngresada
                cuenta = Double(cantidadIngresada) * articulos[2].precio!
                print("Total a pagar: \(cuenta)")
                print("********* \nGRACIAS POR SU VALIOSA COMPRA, ESPERO VUELVA PRONTO A COPPEL ***********")
            } else {
                print("No hay suficiente stock, lo sentimos!")
            }


        default:
            print("Opción no válida")
        }


    case "2":
        //Salir
        print("Hasta pronto!")
        aux = readLine()!

    default:
        print("Opcion inválida")
        aux = readLine()!
    }
}