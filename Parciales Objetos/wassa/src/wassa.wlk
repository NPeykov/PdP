import usuario.*
import zona.*

object wassa {
	var usuarios
	var zonas
	
	method cobrarMultas(){
		usuarios.forEach({ usuario => usuario.pagarMultas() })
	}
	
	method zonaMasTransitada(){
		return zonas.max({ zona => zona.cantidadUsuariosTransitando() })
	}
	
	method usuariosComplicados(){
		return usuarios.filter({ usuario => usuario.estaComplicado() })
	}
}
