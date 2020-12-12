import empresa.*

/** First Wollok example */
class Usuario {
	var compania
	var plan
	var descargas = []
	
	method recargoPorCompania() {
		return compania.recargo()
	}
	
	method recargoPorPlan() {
		return plan.recargoPorPlan()
	}
	
	method descargar(contenido) {
		var costo = empresaDeContenidos.cuantoCobra(contenido, self)
		if (plan.tengoSaldoParaDescarga(costo)) {
			plan.cobrar(contenido)
			var descarga = new Descarga(contenido = contenido, fecha = new Date())
			descargas.add(descarga)
		}
		else {
			throw new Exception(message= "Saldo insuficiente")
		}
	}
	
	method cantidadDescargasDelMesActual() {
		return descargas.count({descarga => descarga.seDescargoEn(new Date())})
	}
	
	method descargasDeLaFecha(fecha) {
		return descargas
			.filter({descarga => descarga.seDescargoEn(fecha)})
			.map({descarga => descarga.contenido()})
	}
}

class Descarga {
	var contenido
	var fecha
	
	method fueEnElMesActual(fechaSolicitada) {
		return fecha.month() == fechaSolicitada.month() && fecha.year() == fechaSolicitada.year()
	}
	
	method contenido() {
		return contenido
	}
}