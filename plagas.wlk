class Plaga {
    var property poblacion
    method transmiteEnfermedades() = poblacion >= 10
    method efectoDeAtacar() { poblacion *= 1.1 }
    method atacar(elemento) {
        elemento.recibirAtaque(self)
        self.efectoDeAtacar()
    }
}

class Cucaracha inherits Plaga {
    var property pesoPromedio
    method dañoAlAtacar() = poblacion / 2
    override method transmiteEnfermedades() = super() and pesoPromedio >= 10
    override method efectoDeAtacar() { 
        super() 
        pesoPromedio *= 2 
    }
}

class Pulga inherits Plaga {
    method dañoAlAtacar() = poblacion * 2
}

class Garrapata inherits Plaga {
    method dañoAlAtacar() = poblacion * 2
    override method efectoDeAtacar() { poblacion *= 1.2 }
}

class Mosquito inherits Plaga {
    method dañoAlAtacar() = poblacion
    override method transmiteEnfermedades() = super() and (poblacion % 3 == 0)
}