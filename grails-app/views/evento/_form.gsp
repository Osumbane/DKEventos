<%@ page import="mz.co.igsys.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="evento.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${eventoInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="evento.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${eventoInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="evento.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${eventoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="evento.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${eventoInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="evento.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${eventoInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'local', 'error')} required">
	<label for="local">
		<g:message code="evento.local.label" default="Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="local" required="" value="${eventoInstance?.local}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'agenda', 'error')} required">
	<label for="agenda">
		<g:message code="evento.agenda.label" default="Agenda" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agenda" required="" value="${eventoInstance?.agenda}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="evento.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${eventoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="evento.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${eventoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'caracteristicas', 'error')} ">
	<label for="caracteristicas">
		<g:message code="evento.caracteristicas.label" default="Caracteristicas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.caracteristicas?}" var="c">
    <li><g:link controller="caracteristica" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="caracteristica" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'caracteristica.label', default: 'Caracteristica')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="evento.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${eventoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'inscricao', 'error')} ">
	<label for="inscricao">
		<g:message code="evento.inscricao.label" default="Inscricao" />
		
	</label>
	<g:select name="inscricao" from="${mz.co.igsys.Inscricao.list()}" multiple="multiple" optionKey="id" size="5" value="${eventoInstance?.inscricao*.id}" class="many-to-many"/>

</div>

