import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class DetalheInscricaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DetalheInscricao.list(params), model: [detalheInscricaoInstanceCount: DetalheInscricao.count()]
    }

    def show(DetalheInscricao detalheInscricaoInstance) {
        respond detalheInscricaoInstance
    }

    def create() {
        respond new DetalheInscricao(params)
    }

    @Transactional
    def save(DetalheInscricao detalheInscricaoInstance) {
        if (detalheInscricaoInstance == null) {
            notFound()
            return
        }

        if (detalheInscricaoInstance.hasErrors()) {
            respond detalheInscricaoInstance.errors, view: 'create'
            return
        }

        detalheInscricaoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detalheInscricao.label', default: 'DetalheInscricao'), detalheInscricaoInstance.id])
                redirect detalheInscricaoInstance
            }
            '*' { respond detalheInscricaoInstance, [status: CREATED] }
        }
    }

    def edit(DetalheInscricao detalheInscricaoInstance) {
        respond detalheInscricaoInstance
    }

    @Transactional
    def update(DetalheInscricao detalheInscricaoInstance) {
        if (detalheInscricaoInstance == null) {
            notFound()
            return
        }

        if (detalheInscricaoInstance.hasErrors()) {
            respond detalheInscricaoInstance.errors, view: 'edit'
            return
        }

        detalheInscricaoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DetalheInscricao.label', default: 'DetalheInscricao'), detalheInscricaoInstance.id])
                redirect detalheInscricaoInstance
            }
            '*' { respond detalheInscricaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DetalheInscricao detalheInscricaoInstance) {

        if (detalheInscricaoInstance == null) {
            notFound()
            return
        }

        detalheInscricaoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DetalheInscricao.label', default: 'DetalheInscricao'), detalheInscricaoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detalheInscricao.label', default: 'DetalheInscricao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
