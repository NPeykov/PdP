class Zona{
	var velocidadPermitida
	var usuariosTransitando
	var controles
	
	method activarControles(){
		controles.forEach({ control => control.activarControl(usuariosTransitando, self) })
	}
	
	method cantidadUsuariosTransitando(){
		return usuariosTransitando.size()
	}
}

class Control{
	
	method activarControl(usuarios, zona){
		usuarios.forEach({ usuario => self.controlar(usuario, zona) })
	}
	
	method controlar(usuario, zona){
		if(!self.pasaControl(usuario, zona)){
			self.multar(usuario)
		}
	}
	
	method pasaControl(usuario, zona)
	
	method multar(usuario)
}

object Velocidad inherits Control{
	
	override method pasaControl(usuario, zona){
		return usuario.velocidadDelVehiculo() <= zona.velocidadPermitida() 
	}
	
	override method multar(usuario){
		usuario.serMultado(3000)
	}
}

object Ecologico inherits Control{
	
	override method pasaControl(usuario, zona){
		return usuario.tieneAutoEcologico()
	}
	
	override method multar(usuario){
		usuario.serMultado(1500)
	}
}

object Regulatorio inherits Control{
	
	override method pasaControl(usuario, zona){
		return usuario.tieneDocumentoPar() && self.esFechaPar()
			|| !usuario.tieneDocumentoPar() && !self.esFechaPar()
	}
	
	method esFechaPar(){
		return new Date().day().even()
	}
	
	override method multar(usuario){
		usuario.serMultado(2000)
	}
}



