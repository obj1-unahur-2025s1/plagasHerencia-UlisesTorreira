import elementos.*

class Plaga {
    var poblacion
    // method transmiteEnfermedades() = poblacion >= 10 
    method transmiteEnfermedades() = poblacion >= 10 && self.condicionAdicional() 
    // method condicionAdicional()
    method condicionAdicional() = true
    method daño() = poblacion
    method efectoDeAtacar(){
        poblacion = poblacion + poblacion * 0.1
    }
    method atacar(unElemento){
        unElemento.recibirDeAtaque(self)
        self.efectoDeAtacar()
        
    }
}

class Cucarachas inherits Plaga {
    var pesoPromedioBicho
    override method daño() = super() * 0.5
    //method daño() = super() * 0.5
    override method transmiteEnfermedades() = super() && pesoPromedioBicho >= 10
    // override method condicionAdicional() = pesoPromedioBicho >= 10
    override method efectoDeAtacar(){
        super()
        pesoPromedioBicho = pesoPromedioBicho + 2 
    }
}

class Pulgas inherits Plaga {
    override method daño() = super() * 2
    // override method condicionAdicional() = true
}

class Garrapatas inherits Pulgas {
    override method efectoDeAtacar(){
        poblacion = poblacion + poblacion * 0.2
    }
}

class Mosquitos inherits Plaga {
    override method transmiteEnfermedades() = super() && poblacion % 3 == 0
}

// const cuca1 = new Cucarachas(pesoPromedioBicho=8, poblacion=30)

/*
class Caracoles inherits Plaga {
   override method transmiteEnfermedades() = clima.llovio()
} 
*/

