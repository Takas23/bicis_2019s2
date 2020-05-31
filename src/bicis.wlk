import accesorios.*


class Bici {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
/*	consulta:
 * hay alguna diferencia en usar por ej. self.rodado(), o la variable rodado?
 * me parece mas prolijo usar el metodo pero no lo se
*/
	method altura() {
		return (self.rodado() * 2.5) + 15
	}
	method velCrucero() {
		return if (self.largo() > 120) { self.rodado() + 6 }
			else { self.rodado() + 2 }
	}
	method carga() {
		return accesorios.sum({cosa => cosa.carga()})
	}
	method peso() {
		return (self.rodado() / 2) + accesorios.sum({cosa => cosa.peso()})
	}
	method tieneLuz() {
		return accesorios.any({cosa => cosa.esLuminoso()})
	}
	method accesoriosLivianos() {
		return accesorios.filter({cosa => cosa.peso() < 1}).size()
	}
}