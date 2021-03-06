import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int=0

func impuseto(arreglo:[Float])->Float{
    var resultado:[Float] = []
    for i in arreglo{
        resultado.append(i+(i * 0.16))
    }
    return 0
}
    
impuseto(arreglo: costo_referencia)
costo_referencia
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
    let Suma = {(x:Int, y:Int)->Int in return x+y}
    
    func SumaTres(a:Int, b:Int, c:Int)->Int{
        return Suma(a,b)+c
    }

    SumaTres(a: 2, b: 2, c: 2)
/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func Intercambio( v1: Int, v2: Int) -> (Int,Int) {
   var v1 = v1
   var v2 = v2
   let temp = v1
   v1 = v2
   v2 = temp
   return (v1,v2)
}
var var1=10
var var2=15
Intercambio(v1: var1, v2: var2)
print(var1, var2)
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
extension Array{
    func transformar<T> (inicial:T, acumula:(T, Element)->T)->T{
        var respuesta:T = inicial
        for valor in self{
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

var datos = [3,7,9,2]
datos.transformar(inicial: 0){(a, b) in a + b}
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
let precios = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{a in return a + (a*0.16)}
impuesto

//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var precio_menor = impuesto.filter{a in a > 6}
precio_menor




