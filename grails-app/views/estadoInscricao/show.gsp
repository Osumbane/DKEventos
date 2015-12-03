
<%@ page import="mz.co.igsys.EstadoInscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoInscricao.label', default: 'EstadoInscricao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estadoInscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estadoInscricao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estadoInscricao">
			
				<g:if test="${estadoInscricaoInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="estadoInscricao.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="user" action="show" id="${estadoInscricaoInstance?.criadoPor?.id}">${estadoInscricaoInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="estadoInscricao.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="user" action="show" id="${estadoInscricaoInstance?.alteradoPor?.id}">${estadoInscricaoInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="estadoInscricao.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${estadoInscricaoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="estadoInscricao.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${estadoInscricaoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.observacoes}">
				<li class="fieldcontain">
					<span id="observacoes-label" class="property-label"><g:message code="estadoInscricao.observacoes.label" default="Observacoes" /></span>
					
						<span class="property-value" aria-labelledby="observacoes-label"><g:fieldValue bean="${estadoInscricaoInstance}" field="observacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="estadoInscricao.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${estadoInscricaoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="estadoInscricao.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${estadoInscricaoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInscricaoInstance?.inscricao}">
				<li class="fieldcontain">
					<span id="inscricao-label" class="property-label"><g:message code="estadoInscricao.inscricao.label" default="Inscricao" /></span>
					
						<span class="property-value" aria-labelledby="inscricao-label"><g:link controller="inscricao" action="show" id="${estadoInscricaoInstance?.inscricao?.id}">${estadoInscricaoInstance?.inscricao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estadoInscricaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estadoInscricaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
