package dkeventos

class DetalheInscricao {

    static belongsTo = [inscricao: Inscricao, opcao: Opcao]

    static constraints = {
    }
}
