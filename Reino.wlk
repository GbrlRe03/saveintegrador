import Aldeanos.*
import Deposito.*
import Misiones.*

object Reino{
    const habitantes=[]

    method agregarAldeano(unAldeano){
        habitantes.add(unAldeano)
    }

    method quitarAldeano(unAldeano){
        habitantes.remove(unAldeano)
    }

    method habitantesActuales(){
      return habitantes.size()
    }

    method recursosTotales(){
      return deposito.recursosTotales()
    }

    method aldeanoMasProductivo(){
      return  habitantes.max({c=>c.experiencia()})
    }

    method realizarJornada(){
        habitantes.forEach({c=>c.trabajar()})
    }

    method asignarMision(unGuerrero,unaMision){
        unGuerrero.cambiarMision(unaMision)
    }

    method promedioExperiencia(){
        return habitantes.sum({c=>c.experiencia()})/self.habitantesActuales()
    }
}