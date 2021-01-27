
class Fiesta{
	const lugar
	const fecha
	var invitados
	
	method fecha(){
		return fecha
	}
	
	method invitados(){
		return invitados
	}
	
	method puntajeDisfrazDelInvitado(invitado){
		return invitado.puntajeDisfraz(self)
	}
	
	method esUnBodrio(){
		return invitados.all({ invitado => !invitado.estaConformeConSuDisfraz(self) })
	}
	
	method mejorDisfraz(){
		return invitados.max({ invitado => invitado.puntajeDisfraz(self) })
	}
	
	method puedenIntercambiarTrajes(unInvitado, otroInvitado){
		return invitados.contains(unInvitado)
			&& invitados.contains(otroInvitado)
			&& self.algunoEstaDisconforme(unInvitado, otroInvitado)
			&& self.estanConformesSiCambianDeTraje(unInvitado, otroInvitado)
	}
	
	method algunoEstaDisconforme(unInvitado, otroInvitado){
		return !unInvitado.estaConformeConSuDisfraz(self)
			|| !otroInvitado.estaConformeConSuDisfraz(self)
	}
	
	method estanConformesSiCambianDeTraje(unInvitado, otroInvitado){
		unInvitado.cambiarTraje(otroInvitado)
		otroInvitado.cambiarTraje(unInvitado)
		return !self.algunoEstaDisconforme(unInvitado, otroInvitado)
	}
	
	method sumarInvitado(invitado){
		if(invitado.tieneDisfraz() && !invitados.contains(invitado)){
			invitados.add(invitado)
		}
		else throw new Exception (message = "No puede ir")	
	}
	
	method esInolvidable(){
		return self.todosLosInvitadosSonSexies() && self.todosEstanConformes()
	}
	
	method todosLosInvitadosSonSexies(){
		return invitados.all({ invitado => invitado.esSexy() })
	}
	
	method todosEstanConformes(){
		return invitados.all({ invitado => invitado.estaConformeConSuDisfraz(self) })
	}
}



