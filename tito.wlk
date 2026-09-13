
import bebidas.*
/*
object tito {
    
    var sustanciaActual = whisky
    var dosisConsumida = 0

    method peso() = 70
    method inerciaBase() = 490
    method velocidad() = self.rendimiento() * self.inerciaBase() / self.peso() 
    method rendimiento() = sustanciaActual.rendimientoQueOtorga(dosisConsumida)
    method sustanciaActual() = sustanciaActual
    method dosisConsumida() = dosisConsumida

    method consumir(cantidad, bebida) {
        sustanciaActual = bebida
        dosisConsumida = cantidad
    }

}
*/
object tito {

    var dosisActual = 0

    method dosis() = dosisActual

    var sustanciaActual = whisky

    method sustancia() = sustanciaActual

    method rendimiento() = sustanciaActual.rendimientoQueOtorga(dosisActual)

    var pesoActual = 70

    method peso() = pesoActual

    var inerciaActual = 490

    method inercia() = inerciaActual

    method velocidad() = self.rendimiento() * self.inercia() / self.peso()

    method consumir(nuevaCantidad,nuevaBebida) {
        sustanciaActual = nuevaBebida
        dosisActual = nuevaCantidad
    }

}