import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class EstadoInscricaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EstadoInscricao.list(params), model: [estadoInscricaoInstanceCount: EstadoInscricao.count()]
    }

    def show(EstadoInscricao estadoInscricaoInstance) {
        respond estadoInscricaoInstance
    }

    def create() {
        respond new EstadoInscricao(params)
    }

    @Transactional
    def save(EstadoInscricao estadoInscricaoInstance) {
        if (estadoInscricaoInstance == null) {
            notFound()
            return
        }

        if (estadoInscricaoInstance.hasErrors()) {
            respond estadoInscricaoInstance.errors, view: 'create'
            return
        }

        estadoInscricaoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estadoInscricao.label', default: 'EstadoInscricao'), estadoInscricaoInstance.id])
                redirect estadoInscricaoInstance
            }
            '*' { respond estadoInscricaoInstance, [status: CREATED] }
        }
    }

    def edit(EstadoInscricao estadoInscricaoInstance) {
        respond estadoInscricaoInstance
    }

    @Transactional
    def update(EstadoInscricao estadoInscricaoInstance) {
        if (estadoInscricaoInstance == null) {
            notFound()
            return
        }

        if (estadoInscricaoInstance.hasErrors()) {
            respond estadoInscricaoInstance.errors, view: 'edit'
            return
        }

        estadoInscricaoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EstadoInscricao.label', default: 'EstadoInscricao'), estadoInscricaoInstance.id])
                redirect estadoInscricaoInstance
            }
            '*' { respond estadoInscricaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EstadoInscricao estadoInscricaoInstance) {

        if (estadoInscricaoInstance == null) {
            notFound()
            return
        }

        estadoInscricaoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EstadoInscricao.label', default: 'EstadoInscricao'), estadoInscricaoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoInscricao.label', default: 'EstadoInscricao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
