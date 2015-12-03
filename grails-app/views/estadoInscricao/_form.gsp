<%@ page import="mz.co.igsys.EstadoInscricao" %>



<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="estadoInscricao.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${estadoInscricaoInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="estadoInscricao.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${estadoInscricaoInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="estadoInscricao.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${estadoInscricaoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="estadoInscricao.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${estadoInscricaoInstance.constraints.estado.inList}" required="" value="${estadoInscricaoInstance?.estado}" valueMessagePrefix="estadoInscricao.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="estadoInscricao.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textArea name="observacoes" cols="40" rows="5" maxlength="1000" value="${estadoInscricaoInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="estadoInscricao.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${estadoInscricaoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="estadoInscricao.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${estadoInscricaoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInscricaoInstance, field: 'inscricao', 'error')} required">
	<label for="inscricao">
		<g:message code="estadoInscricao.inscricao.label" default="Inscricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="inscricao" name="inscricao.id" from="${mz.co.igsys.Inscricao.list()}" optionKey="id" required="" value="${estadoInscricaoInstance?.inscricao?.id}" class="many-to-one"/>

</div>

