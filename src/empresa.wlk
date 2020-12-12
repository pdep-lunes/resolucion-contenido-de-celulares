object empresaDeContenidos {
	var usuarios = #{}
	
	method cuantoCobra(contenido, usuario) {
		const montoDerechoDeAutor = contenido.montoPorDerechoDeAutor()
		return  (montoDerechoDeAutor * (1 + usuario.recargoPorCompania()) + montoDerechoDeAutor * 0.25) * usuario.recargoPorPlan()
	}
	
	method forzarDescarga(contenido) {
		usuarios.forEach({usuario => usuario.descargar(contenido)})
	}
}

class Nacional {
	method recargo() {
		return 0.05
	}
}

class Extranjera inherits Nacional {
	var recargoExtranjero
	
	override method recargo() {
		return super() + recargoExtranjero
	}
}
