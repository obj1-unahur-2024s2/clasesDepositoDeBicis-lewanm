class Bicicleta{
  const property rodado
  const property largo
  const property marca
  const property accesorios = []

  method altura() = rodado * 2.5 + 15

  method velocidadCrucero(){
    if(largo >= 120){
      return rodado + 6
    }
    else{
      return rodado + 2
    }
  }

  method carga() = accesorios.map({accesorio => accesorio.carga()})

  method peso() = rodado * 0.5 + self.pesoAccesorios()

  method pesoAccesorios() = accesorios.sum({accesorio => accesorio.peso()})

  method tieneLuz() = accesorios.any({accesorio => accesorio.esLuminoso()})

  method cantidadAccesoriosLivianos(){
    return accesorios.count({accesorio => accesorio.peso() < 1})
  }

}

class Farolito{
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true
}

class Canasto{
  const volumen 

  method peso() = volumen * 0.1
  method carga() = volumen * 2
  method esLuminoso() = false
}

class Morral{
  const largo 
  const tieneOjoDeGato

  method peso() = 1.2
  method carga() = largo / 3
  method esLuminoso() = tieneOjoDeGato
}