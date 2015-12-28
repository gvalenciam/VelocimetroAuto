//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidades : Velocidades
    
    init()
    {
       velocidades =  Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena: String){
        
        var vel = velocidades.rawValue
        var actual = 0
        var cadena = ""
        
        if (vel == 0)
        {
            actual = 0
            cadena = "Apagado"
            velocidades = Velocidades(velocidadInicial: Velocidades.VelocidadBaja)
            
        } else if (vel == 20){
            
            actual = 20
            cadena = "Velocidad Baja"
            velocidades = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            
        } else if (vel == 50){
            
            actual = 50
            cadena = "Velocidad Media"
            velocidades = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)
            
        } else if (vel == 120){
            
            actual = 120
            cadena = "Velocidad Alta"
            velocidades = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            
        }
        
        return (actual,cadena)
    }
}


var auto = Auto()

for (var i = 0;i < 20;i++){
    
    print(auto.cambioDeVelocidad())
    
}








