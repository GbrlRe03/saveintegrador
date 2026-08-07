import Aldeanos.*
import Deposito.*

class Misiones{
    method realizar()
}

class DefenderAldea inherits Misiones{
    override method realizar(){
        deposito.agregarOro(100)
    }
}

class ExplorarBosque inherits Misiones{
    override method realizar(){
        deposito.agregarAlimentos(50)
    }
}

class RescatarMercader inherits Misiones{
    override method realizar(){
        deposito.agregarAlimentos(30)
        deposito.agregarOro(60)
    }
}