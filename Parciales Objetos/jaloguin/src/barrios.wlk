class Barrio {
	var chicos
	
	
	method losTresQueMasCaramelosTienen(){
		return chicos.sortedBy({chico, otroChico => chico.caramelos() >= otroChico.caramelos()}).take(3)
	}

	method chicosConMasDeDiezCaramelos(){
		return chicos.filter({chico => chico.caramelos() > 10})
	}
	
	method accesoriosConMasDeDiezCaramelos(){
		return self.chicosConMasDeDiezCaramelos().map({chico => chico.accesorios()}).flatten()
	}
}
