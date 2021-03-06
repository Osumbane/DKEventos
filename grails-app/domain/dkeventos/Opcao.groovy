package dkeventos

/**
 *
 */

class Opcao extends Base {

    String nome
    String descricao
    double factor = 1

    static belongsTo = [caracteristica: Caracteristica]
    static hasMany = [detalhes: DetalheInscricao]

    static constraints = {
        nome blank: false
        descricao nullable: true
    }
}
