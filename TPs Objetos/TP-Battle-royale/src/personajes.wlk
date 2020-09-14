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
	
	method cantidadDeElementosEnBotiquin(){
		return botiquin.size()
	}
	
	method ultimoElementoDelBotiquin(){
		return botiquin.last()
	}
	
	method sacarElemento(elemento){
		botiquin.remove(elemento)
	}
	
	method reducirEnergia(cantidad){
		energia -= cantidad
	}
	
	method botiquin(){
		return botiquin
	}
	
	method luchar(enemigo){
		energia += 400
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
	
	method cantidadDeElementosEnBotiquin(){
		return botiquin.size()
	}
	
	method ultimoElementoDelBotiquin(){
		return botiquin.last()
	}
	
	method sacarElemento(elemento){
		botiquin.remove(elemento)
	}
	
	method reducirEnergia(cantidad){
		energia -= cantidad
	}
	
	method luchar(enemigo){ 	
		energia += 500
	}
}



object tulipan {
	const botiquin = ["rastrillo", "maceta", "maceta", "manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method botiquin(){
		return botiquin
	}
	
	method reducirEnergia(cantidad){
		energia -= cantidad
	}
	
	method cantidadDeElementosEnBotiquin(){ 			
		return botiquin.size()
	}
	
	method ultimoElementoDelBotiquin(){						
		return botiquin.last()
	}
	
	method sacarElemento(elemento){
		botiquin.remove(elemento)
	}
	
	method luchar(enemigo){
		enemigo.reducirEnergia(enemigo.energia() / 2)
	}
	
	
	
}



object toro {
	const botiquin = #{}
	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"
	
	method botiquin(){
		return botiquin
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
	
	method ultimoElementoDelBotiquin(){
		return botiquin.last()
	}
	
	method cantidadDeElementosEnBotiquin(){
		return botiquin.size()
	}
	
	method reducirEnergia(cantidad){
		energia -= cantidad
	}
	
	method luchar(enemigo){
		enemigo.reducirEnergia(enemigo.cantidadDeElementosEnBotiquin() * 200)
		self.robar(enemigo, enemigo.ultimoElementoDelBotiquin())
	}
	
	method robar(enemigo, elemento){					
		enemigo.sacarElemento(elemento)
		botiquin.add(elemento)
	}

}

