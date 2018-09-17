import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var golosinas = []
	
	method comprar(golosina) { golosinas.add(golosina) }
	method golosinas() { return golosinas }
	method desecharGolosina(golosina) { golosinas.remove(golosina) }
	method probarGolosinas() { golosinas.forEach{ elem => elem.mordisco() } }
	method hayGolosinasSinTACC() { return golosinas.any{ elem => elem.libreGluten() } }
	method preciosCuidados() { return golosinas.all{ elem => elem.precio() <= 10 } }
	method golosinaDeSabor(unSabor){ return golosinas.find{ elem => elem.gusto() == unSabor} }
	method golosinasDeSabor(unSabor){ return golosinas.filter{elem => elem.gusto() == unSabor } }
	method sabores() {return golosinas.filter{ elem => elem.gusto() } }
	method golosinaMasCara() {return golosinas.max{ elem => elem.precio() }	}
	method pesoGolosinas() {return golosinas.sum{ elem => elem.precio() } }
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas.asSet())
		}
//	method gustosFaltantes(gustosDeseados) {  }
}
	

