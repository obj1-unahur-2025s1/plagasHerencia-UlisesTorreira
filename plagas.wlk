class Plaga {
    var poblacion
    method transmiteEnfermedades() = poblacion >= 10 && self.condicionAdicional()
    method condicionAdicional()  = true
    method daño() = poblacion
}

class Cucarachas inherits Plaga {
    var pesoPromedioBicho
    override method daño() = super() / 2
    override method condicionAdicional() = pesoPromedioBicho >= 10

}

class Pulgas inherits Plaga {
    override method daño() = super() * 2
}

class Garrapatas inherits Pulgas {
}

class Mosquitos inherits Plaga{
    override method condicionAdicional() = poblacion % 3 == 0     
}