object pamela {
	const botiquin = ["algodon", "aguaOxigenada", "cintaDePapel", "cintaDePapel"]
	var energia = 6000
	const gritoDeVictoria = "Acá pasó la Pamela"
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method cantidadDeUtilidades(){
		return botiquin.size()
	}
	
	method ultimoElementoDeLasUtilidadesn(){
		return botiquin.last()
	}
	
	method sacarElemento(elemento){
		botiquin.remove(elemento)
	}

	
	method botiquin(){
		return botiquin
	}
	
	method luchar(enemigo){
		energia += 400
	}
	
	method serAtacadoPorToro(){
		energia -= self.cantidadDeUtilidades() * 200
	}
}



object pocardo {
	const botiquin = ["guitarra", "curitas", "cotonetes"]
	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	
	method botiquin(){
		return botiquin
	}
	
	method energia(){ 		
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method cantidadDeUtilidades(){
		return botiquin.size()
	}
	
	method ultimoElementoDeLasUtilidadesn(){
		return botiquin.last()
	}
	
	method sacarElemento(elemento){
		botiquin.remove(elemento)
	}

	
	method luchar(enemigo){ 	
		energia += 500
	}
	
	method serAtacadoPorTulipan(){
		energia -= self.energia() / 2
	}
}



object tulipan {
	const galpon = ["rastrillo", "maceta", "maceta", "manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method galpon(){
		return galpon
	}
	
	method cantidadDeUtilidades(){ 			
		return galpon.size()
	}
	
	method ultimoElementoDeLasUtilidadesn(){						
		return galpon.last()
	}
	
	method sacarElemento(elemento){
		galpon.remove(elemento)
	}
	
	method luchar(enemigo){
		enemigo.serAtacadoPorTulipan()
	}
	
	method serAtacadoPorToro(){
		energia -= self.cantidadDeUtilidades() * 200
	}
}


object toro {
	const botin = []
	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"
	
	method botin(){
		return botin
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method ultimoElementoDeLasUtilidadesn(){
		return botin.last()
	}
	
	method cantidadDeUtilidades(){
		return botin.size()
	}
	
	method serAtacadoPorTulipan(){
		energia -= self.energia() / 2
	}
	
	method luchar(enemigo){
		enemigo.serAtacadoPorToro()
		self.robar(enemigo, enemigo.ultimoElementoDeLasUtilidadesn())
	}
	
	method robar(enemigo, elemento){
		if (!botin.contains(elemento)){
			enemigo.sacarElemento(elemento)
			botin.add(elemento)
		}			
	}

}

