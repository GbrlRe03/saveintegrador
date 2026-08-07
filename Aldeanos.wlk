import Deposito.*
import Misiones.*
class Aldeanos {
    var nombre
    var energia
    var property experiencia

    method trabajar()

    method descansar(){
        energia=energia+20
    }

    method conEnergiaSuficiente(){
        return energia>=20
    }

    method productividad(){
        return experiencia
    }
}

class Granjero inherits Aldeanos{
    override method trabajar(){
        energia=energia-10
        experiencia=experiencia+5
        deposito.agregarAlimentos(30)
    }
}

class Guerrero inherits Aldeanos{
    var property mision=DefenderAldea

    method cambiarMision(unaMision){
        mision=unaMision
    }

    override method trabajar(){
        energia=energia-15
        experiencia=experiencia+10
        mision.realizar()
    }
}

class Comerciante inherits Aldeanos{
    override method productividad(){
      return super()+10
    }

    method venderMercaderia(){
        if (deposito.cantAlimentos>=100){
            deposito.quitarAlimentos(100)
            deposito.agregarOro(40)
        }
        else{}
    
    }
    override method trabajar(){
        energia=energia-10
        experiencia=experiencia+5
        self.venderMercaderia()
    }
}