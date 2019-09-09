import spa.*

object olivia {
	var property concentracion = 0
	method recibeMasajes() {
		concentracion = concentracion + 3
	}
	method discute() {
		concentracion = concentracion - 1
	}
	method gradoDeConcentracion() {
		return concentracion
	}
	// "Se le agrego darseUnBanio, ya que no funcionaba en Spa y se necesitaba para que funcione
	method darseUnBanioDeVapor() {
		
	}
	
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibeMasajes() { 
		esFeliz = true
	}
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var property contractura = 0
	var property grasaDeLaPiel = true
	method recibeMasajes() {
		return if (not contractura.between(2, 999999)) {
			contractura = 0
		} else {
			contractura = contractura - 2
		}
	}
	method darseUnBanioDeVapor() { 
		grasaDeLaPiel = false
	}
	method comerseUnBigMac() { 
		grasaDeLaPiel = true
	}
	method bajarALaFosa() { 
		grasaDeLaPiel = true; contractura = contractura + 1
	}
	method jugarAlPaddle() { 
		contractura = contractura + 3
	}
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}