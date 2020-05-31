class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto {
	var property volumen
	
	method peso() {
		return self.volumen() / 10
	}
	method carga() {
		return self.volumen() * 2
	}
	method esLuminoso() = false
}

class Morral {
	var property largo

	var property ojoDeGato		//true o false
	
	method peso() = 1.2
	method carga() {
		return self.largo() / 3
	}
	method esLuminoso() {
		return self.ojoDeGato()
	}
}
/* 
 * en este caso cada tipo de accesorio tiene su propia clase(me parecio lo mas conveniente y prolijo).
 * para agregar otro tipo de accesorio deberia crear una clase nueva sin tocar el resto.
 * siempre respetando el contrato, deberian estar presentes los tres metodos peso, carga, esLuminoso. para que sea polimorfico.
 * 
 */