//: Representación de un velocímetro de un automóvil

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad: Velocidades
    
    init () {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        let tuplaResultado: (Int, String)
        
        switch velocidad {
        case .Apagado:
            tuplaResultado = (velocidad.rawValue, "Apagado")
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            tuplaResultado = (velocidad.rawValue, "Velocidad baja")
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            tuplaResultado = (velocidad.rawValue, "Velocidad media")
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            tuplaResultado = (velocidad.rawValue, "Velocidad alta")
            velocidad = .VelocidadMedia
        }
        
        return tuplaResultado
    }
}


var auto = Auto()

for _ in 0...19 {
    print (auto.cambioDeVelocidad())
}
