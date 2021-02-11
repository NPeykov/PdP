class Bandeja{
	var calorias
	var contieneCarne
	
	method contieneCarne(){
		return contieneCarne
	}
	
	method calorias(){
		return calorias
	}

}


class CriteriosAlimentacion{
	method deseaComer(comida)
}

object vegetariano inherits CriteriosAlimentacion{
	override method deseaComer(comida){
		return !comida.contieneCarne()
	}
}

object diebetico inherits CriteriosAlimentacion{
	var caloriasRecomendadas = 500
	
	method caloriasRecomendadas(cantidad){
		caloriasRecomendadas = cantidad
	}
	
	override method deseaComer(comida){
		return comida.calorias() < caloriasRecomendadas
	}
}

object alterado inherits CriteriosAlimentacion{
	var quiereComer = false
	
	override method deseaComer(comida){
		quiereComer = !quiereComer
		return quiereComer
	}
}

class combinacionCriterios inherits CriteriosAlimentacion{
	var criterios
	
	override method deseaComer(comida){
		return criterios.all({criterio => criterio.comer(comida)})
	}
}