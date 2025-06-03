class Hogar{
  var   mugre
  const confort 

  method esBueno() = confort >= mugre /2 
}

class Huerta{
  var produccion

  method esBueno() = produccion > nivelMinimoProduccion.valor()
}

object nivelMinimoProduccion {
  var property valor = 100  
}

class Mascota{
  var salud
  method esBueno() = salud > 250
}

class Barrios{
  const elementos = []
  method esBueno(unElemento) = unElemento.esBueno()
  method esCopado() = self.cantElementosBuenos() > self.cantElementosMalos()  

  method cantElementosBuenos() = elementos.count({e=>e.esBueno()})
  method cantElementosMalos()  = elementos.size() - self.cantElementosBuenos()
   
}