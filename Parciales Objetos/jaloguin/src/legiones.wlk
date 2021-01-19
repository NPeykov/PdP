class Legion{
	var miembros
	
	method capacidadDeSusto(){
		return miembros.sum({chico => chico.capacidadDeSusto()})
	}
	
	method caramelos(){
		return miembros.sum({chico => chico.caramelos()})
	}
	
	method lider(){
		return miembros.max({chico => chico.capacidadDeSusto()})
	}
	
	method asustar(adulto){
		adulto.serAsustado(self)
	}
	
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	
}

/* ///////// PUNTO B.3
 * 
 * es posible crear legiones de legiones, ya que tanto una legion como un chico entienden
 * los mismos mensajes, son polimorficos.
 * 
 * el adulto necesita enviar mensajes para evaluar si se asusta o no, pero si nos ponemos del
 * lado del adulto, nosotros solo enviamos el mensaje, y la respuesta siempre va a tener un
 * valor de retorno del mismo tipo, por lo que no nos interesa como funciona super legion, solo funciona.
 * 
 * si por ejemplo logramos asustar a un adulto con una legion mixta, y queremos darle los caramelos al lider,
 * tendriamos que evaluar quien es, si es un chico se lo damos, pero en el caso que sea uan legion,
 * el recibirCaramelos() volveria a evaluar al lider de esa sublegion, por lo que siempre hay un chico
 * al que se le otorgan los caramelos 
 * 
 */