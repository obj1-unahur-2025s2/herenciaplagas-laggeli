class Hogar {
    var property mugre
    const confort
    method esBueno() = mugre <= confort / 2
    method recibirAtaque(unaPlaga) {
        mugre = mugre + unaPlaga.dañoAlAtacar()
    }
}

class Huerta {
    var property producciónPorMes
    method esBueno() = producciónPorMes > nivelDeProduccion.nivel()
    method recibirAtaque(unaPlaga) {
        if (unaPlaga.transmiteEnfermedades()) { producciónPorMes = (producciónPorMes - unaPlaga.dañoAlAtacar() - 10).max(0)}
        else {producciónPorMes = (producciónPorMes - unaPlaga.dañoAlAtacar()).max(0)}
    }
}

object nivelDeProduccion {
    var property nivel = 10
}

class Mascota {
    var property salud
    method esBueno() = salud > 250
    method recibirAtaque(unaPlaga) {
        if (unaPlaga.transmiteEnfermedades()) { salud = (salud - unaPlaga.dañoAlAtacar()).max(0) }
    }
}

class Barrio {
    const elementos = []
    method agregarElemento(elemento) { elementos.add(elemento) }
    method eliminarElemento(elemento) { elementos.remove(elemento) }
    method elementoEsBueno(elemento) = elemento.esBueno() 
    method esCopado() = elementos.count({e => e.esBueno()}) > elementos.count({e => !e.esBueno()})
}