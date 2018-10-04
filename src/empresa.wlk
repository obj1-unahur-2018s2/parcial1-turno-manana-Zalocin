class Empresa {
	const profesionales = [] 
	var honorariodeReferencia
	//const listadoProvincias = #{}
	
	
	
	method setHonorarioDeReferencia(honorario) {
		honorariodeReferencia = honorario
	}
	method honorarioDeReferencia() {
		return honorariodeReferencia
	}
	
	
	method contratarProfesionales(profesional) {
		profesionales.add(profesional) 		
		}
	
	method profesionalesCaros() {
		return profesionales.filter {
			profesional => profesional.honorariosPorHora() >= 3500
		}
	}	
	
	method universidadesFormadoras() {
		return profesionales.map {
			profesional => profesional.universidad()
		}.asSet()
	}
	
	method profesionalMasBarato() {
		return profesionales.min {
			profesional => profesional.honorariosPorHora()
		}
	}
	
	method provinciasCubiertas(provincias) {
		return provincias.asSet().intersection
			(profesionales.flatMap({profesional => profesional.provinciasDondePuedeTrabajar()}).asSet())
	}	
	
	
	method dondeEstudiaron(univ) {
		return profesionales.count{
			profesional => profesional.universidad() == univ }
	}
	
}
