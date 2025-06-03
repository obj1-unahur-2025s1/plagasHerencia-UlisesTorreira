import plagas.*

class Hogar {
    var mugre
    const confort
    //var property plaga 
    method esBueno() = confort >=  mugre /2
    //method mugre() = plaga.daño()
    method recibirDeAtaque(unaPlaga) {
        mugre += unaPlaga.daño()
    }
}

class Huerta {
    var produccion 
    //var property plaga
    method esBueno() = produccion > nivelMinimoProduccion.valor()

    method produccion() = produccion // - self.dañoPlaga()
    //method dañoPlaga() =  if(plaga.transmiteEnfermedades()) (plaga.daño() * 0.10) + 10 else plaga.daño() * 0.10
    method recibirDeAtaque(unaPlaga) {
        produccion = 0.max(produccion - (unaPlaga * 0.10) 
        + if(unaPlaga.transmiteEnfermedades()) 10 else 0)
    }
}

object nivelMinimoProduccion {
    var property valor = 100 
}

class Mascota {
    var salud
    //var property plaga
    method esBueno() = salud > 250
    //method dañoPlaga() = if(plaga.transmiteEnfermedades()) plaga.daño() else 0
    //method salud() = salud - self.dañoPlaga()
    method recibirDeAtaque(unaPlaga){
        if(unaPlaga.transmiteEnfermedades()){
            salud = (salud - unaPlaga.daño()).max(0)
        }   
    }
    //method efecto2(unaPlaga){
    // salud = salud - (if(unaPlaga.transmiteEnfermedades()) plaga daño() else 0)} 
}

class Barrio {
    const elementos = []
    method esBueno(unElemento) = unElemento.esBueno()
    method cantElementosBuenos() = elementos.count({e => e.esBueno()})
    method cantElementosMalos() = elementos.size() - self.cantElementosBuenos()
    method esCopado() = self.cantElementosBuenos() > self.cantElementosMalos()
}

// hogar.mugre(10)
//const plaga 1 = new Cucarachas(pesoPromedioBicho=8, poblacion=30)