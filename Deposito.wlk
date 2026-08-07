import Aldeanos.*
object deposito{
    var property cantAlimentos=0
    var property cantOro=0

    method agregarAlimentos(unaCantidad){
        cantAlimentos=cantAlimentos+unaCantidad
    }

    method quitarAlimentos(unaCantidad){
        cantAlimentos=cantAlimentos-unaCantidad
    }

    method agregarOro(unaCantidad){
        cantOro=cantOro+unaCantidad
    }

    method quitarOro(unaCantidad){
        cantOro=cantOro-unaCantidad
    }

    method poseeXAlimentos(unaCantidad){
        return cantAlimentos==unaCantidad
    }

    method venderAlimentos(unaCantidad,otraCantidad){
        self.quitarAlimentos(unaCantidad)
        self.agregarOro(unaCantidad)
    }

    method recursosTotales(){
        return cantAlimentos+cantOro
    }
}