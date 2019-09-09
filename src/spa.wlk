import personas.*

object spa {
	var ultimaPersonaAtendido
	method atender(persona) {
		persona.recibeMasajes(); persona.darseUnBanioDeVapor()
		if (persona == ultimaPersonaAtendido) {
			ultimaPersonaAtendido = persona
		}
	}
	//es por que olivia no tiene el methodo darseUnBanioDeVapor()
}