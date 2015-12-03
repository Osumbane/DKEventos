<%@ page import="mz.co.igsys.DetalheInscricao" %>



<div class="fieldcontain ${hasErrors(bean: detalheInscricaoInstance, field: 'inscricao', 'error')} required">
	<label for="inscricao">
		<g:message code="detalheInscricao.inscricao.label" default="Inscricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="inscricao" name="inscricao.id" from="${mz.co.igsys.Inscricao.list()}" optionKey="id" required="" value="${detalheInscricaoInstance?.inscricao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detalheInscricaoInstance, field: 'opcao', 'error')} required">
	<label for="opcao">
		<g:message code="detalheInscricao.opcao.label" default="Opcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcao" name="opcao.id" from="${mz.co.igsys.Opcao.list()}" optionKey="id" required="" value="${detalheInscricaoInstance?.opcao?.id}" class="many-to-one"/>

</div>

