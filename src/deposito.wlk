import bicis.*
import accesorios.*

class Deposito {
	const property bicis = []
	
	method agregarBici(bicicleta) {
		bicis.add(bicicleta)
	}
	method sacarBici(bicicleta) {
		bicis.remove(bicicleta)
	}
	method bicisRapidas() {
		return bicis.filter({bici => bici.velCrucero() > 25})
	}
	method marcas() {
		return bicis.map({bici => bici.marca()}).asSet()
	}
	method nocturno() {
		return bicis.all({bici => bici.tieneLuz()})
	}
	method biciConCarga(kg) {
		return bicis.any({bici => bici.carga() > kg})
	}
	method marcaDeLaMasRapida() {
		return bicis.max({bici => bici.velCrucero()}).marca()
	}
	method cargaBicisLargas() {
		return bicis.filter({bici => bici.largo() > 170}).sum({bici => bici.carga()})
	}
	method bicisSinAccesorio() {
		return bicis.filter({bici => bici.accesorios().size() == 0})
	}
	method biciCompaniera(bicicleta) {
		return bicis.filter({bici => bici != bicicleta
			and bici.marca() == bicicleta.marca()
				and bici.largo().between(bicicleta.largo() - 10, bicicleta.largo() + 10)})	
	}
}

