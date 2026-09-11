object whisky {

    method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida

}

object terere {

    method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)

}

object cianuro {

    method rendimientoQueOtorga(dosisConsumida) = 0

}

//nuevas bebidas parte 2

object licuadoDeFrutas {

    var listaDeIngredientes = []
    method listaDeIngredientes() = listaDeIngredientes

    method agregarIngredientes(unaLista) {

    }
}

object aguaSaborizada {
    // los 3/4 (tres cuartos) son equivalente a 0.75 * algunaCantidadDeLitros
    // los 1/4 (un cuarto) son equivalentes a 250 * algunaCantidadDeLitros
}

object coctel {
    //El rendimiento es el producto de los rendimientos de las bebidas que lo componen.
    //se refiere ha hacer una multiplicacion entre todos los rendimientos de todas las bebidas
}
