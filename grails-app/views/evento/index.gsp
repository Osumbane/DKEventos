
<%@ page import="mz.co.igsys.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="evento.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="evento.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'evento.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'evento.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'evento.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="local" title="${message(code: 'evento.local.label', default: 'Local')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${eventoInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "titulo")}</td>
					
						<td>${fieldValue(bean: eventoInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: eventoInstance, field: "local")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
