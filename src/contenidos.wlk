class Ringtone {
	var duracion
	var precioPorMinutoDeAutor
	
	method montoPorDerechoDeAutor() {
		return duracion * precioPorMinutoDeAutor
	}
	
}

class Chiste {
	var valorBase = 5
	var textoDelChiste
	
	method montoPorDerechoDeAutor() {
		return valorBase * textoDelChiste.length()
	}
	
}

class Juego {
	var precioDelJuego
	
	method montoPorDerechoDeAutor() {
		return precioDelJuego
	}
}
