object whisky {

    method rendimientoQueOtorga(cantidadDeDosis) = 0.9 ** cantidadDeDosis

    var litros = 0

    method cantidadDeLitros() = litros

    method cambiarCantidadDeLitros(nuevaCantidad) {
        litros = nuevaCantidad
    }

}

object terere {

    method rendimientoQueOtorga(cantidadDeDosis) = 1.max(0.1 * cantidadDeDosis)

}

object cianuro {

    method rendimientoQueOtorga(cantidadDeDosis) = 0

}

//nuevas bebidas parte 2



object licuadoDeFrutas {

    var listaDeNutrientes = []

    method listaDeNutrientes() = listaDeNutrientes

    method agregarNutriente(unNutriente) = listaDeNutrientes.add(unNutriente)

    method sumarNutrientes() = listaDeNutrientes.sum({i=>i.listaDeNutrientes()})

    method rendimientoQueOtorga(cantidadDeDosis) = self.sumarNutrientes() / cantidadDeDosis

}

object aguaSaborizada {

    // los 3/4 (tres cuartos) son equivalente a 0.75 * algunaCantidadDeLitros
    // los 1/4 (un cuarto) son equivalentes a 250 * algunaCantidadDeLitros

    method rendimientoQueOtorga(cantidadDeDosis) = self.rendimientoDeAgua(cantidadDeDosis) + self.rendimientoDeCualquierBebida(whisky,cantidadDeDosis)

    method rendimientoDeCualquierBebida(unaBebida,cantidadDeDosis) = unaBebida.rendimientoQueOtorga(cantidadDeDosis) * 250

    method rendimientoDeAgua(cantidadDeDosis) = agua.rendimientoQueOtorga(cantidadDeDosis)

    // 10 cm3 = 0.01 L (esto seria agua con whisky)

    // 7.5 cm3 = 0.0075 L (agua)
    // 2.5 cm3 = 0.0025 L (whisky)

    var unidad = 0

    method unidad() = unidad 

    method otorgarRendimiento() {
        if( ( agua.cantidadDeLitros() + whisky.cantidadDeLitros() ) >= 0.01 ){
            unidad = unidad + 1
        }
    }

}

object coctel {
    //El rendimiento es el producto de los rendimientos de las bebidas que lo componen.
    //se refiere ha hacer una multiplicacion entre todos los rendimientos de todas las bebidas
}

// bebida adicional

object agua {

    method rendimientoQueOtorga(cantidadDeDosis) = cantidadDeDosis * 0.75

    var litros = 0

    method cantidadDeLitros() = litros

    method cambiarCantidadDeLitros(nuevaCantidad) {
        litros = nuevaCantidad
    }

}

