
<%@ page import="mz.co.igsys.DetalheInscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detalheInscricao.label', default: 'DetalheInscricao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-detalheInscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-detalheInscricao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list detalheInscricao">
			
				<g:if test="${detalheInscricaoInstance?.inscricao}">
				<li class="fieldcontain">
					<span id="inscricao-label" class="property-label"><g:message code="detalheInscricao.inscricao.label" default="Inscricao" /></span>
					
						<span class="property-value" aria-labelledby="inscricao-label"><g:link controller="inscricao" action="show" id="${detalheInscricaoInstance?.inscricao?.id}">${detalheInscricaoInstance?.inscricao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detalheInscricaoInstance?.opcao}">
				<li class="fieldcontain">
					<span id="opcao-label" class="property-label"><g:message code="detalheInscricao.opcao.label" default="Opcao" /></span>
					
						<span class="property-value" aria-labelledby="opcao-label"><g:link controller="opcao" action="show" id="${detalheInscricaoInstance?.opcao?.id}">${detalheInscricaoInstance?.opcao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:detalheInscricaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${detalheInscricaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
