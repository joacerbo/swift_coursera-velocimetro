//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var valorDeSalida = velocidad.rawValue
        var cadenaDeSalida = ""
        switch velocidad {
        case .Apagado:
            cadenaDeSalida = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            cadenaDeSalida = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            cadenaDeSalida = "Velocidad Media"
            velocidad = .VelocidadAlta
        default:
            cadenaDeSalida = "Velocidad Alta"
            velocidad = .Apagado
        }
        return (valorDeSalida, cadenaDeSalida)
    }
}

let auto = Auto()
for i in 0..<20 {
    var salida = auto.cambioDeVelocidad()
    print("\(salida.0), \(salida.1)")
}
