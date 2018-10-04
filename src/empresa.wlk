class Empresa {
	const empresa = [] 
	
	
	method honorarioDeReferencia(honorario) {
		return honorario 
	}
	
	method contratarProfesionales(profesional) {
		empresa.add(profesional) 		
		}
	
	method profesionalesCaros() {
		return empresa.all {
			profesional => profesional.precio() >= empresa.honorarioreferencia()
		}
	}	
	
	method universidadesFormadoras() {
		return empresa.all {
			profesional => profesional.universidad().asSet()
			}
	}
	
}
