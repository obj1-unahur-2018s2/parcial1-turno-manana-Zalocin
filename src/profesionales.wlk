import universidades.*
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() {
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	
	method provinciasDondePuedeTrabajar() {
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() {
		return 3000
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() {
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	method provinciasDondePuedeTrabajar(){
		return universidad.provincia()
	}
	method honorariosPorHora(){
		return universidad.honorarios()
	}
		
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provincia
	var honorario
	
	method universidad() {
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	method provinciasDondePuedeTrabajar() {
		return universidad
	}
	method provinciasDondePuedeTrabajar(prov) {
		provincia = prov
	}
	method honorariosPorHora() {
		return honorario
	}
	
	method setHonorariosPorHora(hono) {
		honorario = hono
	}
	
	
}
