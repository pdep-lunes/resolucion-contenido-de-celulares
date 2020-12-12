class Prepago {
	var saldo
	
	method recargoPorPlan() {
		return 1.1
	}	
	
	method tengoSaldoParaDescarga(costo) {
		return saldo >= costo
	}
	
	method cobrar(costo) {
		saldo -= costo
	}
}

class Facturado {
	var saldoAcumulado
	
	method recargoPorPlan() {
		return 1
	}
	
	method tengoSaldoParaDescarga(costo) {
		return true
	}
	
	method cobrar(costo) {
		saldoAcumulado += costo
	}
}