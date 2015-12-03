
<%@ page import="mz.co.igsys.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="evento.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="user" action="show" id="${eventoInstance?.criadoPor?.id}">${eventoInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="evento.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="user" action="show" id="${eventoInstance?.alteradoPor?.id}">${eventoInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="evento.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${eventoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="evento.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${eventoInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="evento.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${eventoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.local}">
				<li class="fieldcontain">
					<span id="local-label" class="property-label"><g:message code="evento.local.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="local-label"><g:fieldValue bean="${eventoInstance}" field="local"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.agenda}">
				<li class="fieldcontain">
					<span id="agenda-label" class="property-label"><g:message code="evento.agenda.label" default="Agenda" /></span>
					
						<span class="property-value" aria-labelledby="agenda-label"><g:fieldValue bean="${eventoInstance}" field="agenda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="evento.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${eventoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="evento.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${eventoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.caracteristicas}">
				<li class="fieldcontain">
					<span id="caracteristicas-label" class="property-label"><g:message code="evento.caracteristicas.label" default="Caracteristicas" /></span>
					
						<g:each in="${eventoInstance.caracteristicas}" var="c">
						<span class="property-value" aria-labelledby="caracteristicas-label"><g:link controller="caracteristica" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="evento.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${eventoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.inscricao}">
				<li class="fieldcontain">
					<span id="inscricao-label" class="property-label"><g:message code="evento.inscricao.label" default="Inscricao" /></span>
					
						<g:each in="${eventoInstance.inscricao}" var="i">
						<span class="property-value" aria-labelledby="inscricao-label"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
