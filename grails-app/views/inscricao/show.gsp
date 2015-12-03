
<%@ page import="mz.co.igsys.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inscricao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inscricao">
			
				<g:if test="${inscricaoInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="inscricao.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="user" action="show" id="${inscricaoInstance?.criadoPor?.id}">${inscricaoInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="inscricao.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="user" action="show" id="${inscricaoInstance?.alteradoPor?.id}">${inscricaoInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="inscricao.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${inscricaoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="inscricao.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${inscricaoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.dataInscricao}">
				<li class="fieldcontain">
					<span id="dataInscricao-label" class="property-label"><g:message code="inscricao.dataInscricao.label" default="Data Inscricao" /></span>
					
						<span class="property-value" aria-labelledby="dataInscricao-label"><g:formatDate date="${inscricaoInstance?.dataInscricao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="inscricao.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${inscricaoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="inscricao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${inscricaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="inscricao.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${inscricaoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="inscricao.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${inscricaoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.detalhes}">
				<li class="fieldcontain">
					<span id="detalhes-label" class="property-label"><g:message code="inscricao.detalhes.label" default="Detalhes" /></span>
					
						<g:each in="${inscricaoInstance.detalhes}" var="d">
						<span class="property-value" aria-labelledby="detalhes-label"><g:link controller="detalheInscricao" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.estados}">
				<li class="fieldcontain">
					<span id="estados-label" class="property-label"><g:message code="inscricao.estados.label" default="Estados" /></span>
					
						<g:each in="${inscricaoInstance.estados}" var="e">
						<span class="property-value" aria-labelledby="estados-label"><g:link controller="estadoInscricao" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.participante}">
				<li class="fieldcontain">
					<span id="participante-label" class="property-label"><g:message code="inscricao.participante.label" default="Participante" /></span>
					
						<span class="property-value" aria-labelledby="participante-label"><g:link controller="participante" action="show" id="${inscricaoInstance?.participante?.id}">${inscricaoInstance?.participante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscricaoInstance?.produto}">
				<li class="fieldcontain">
					<span id="produto-label" class="property-label"><g:message code="inscricao.produto.label" default="Produto" /></span>
					
						<span class="property-value" aria-labelledby="produto-label"><g:link controller="null" action="show" id="${inscricaoInstance?.produto?.id}">${inscricaoInstance?.produto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:inscricaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${inscricaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
