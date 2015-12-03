
<%@ page import="mz.co.igsys.EstadoInscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'estadoInscricao.label', default: 'EstadoInscricao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estadoInscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estadoInscricao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="estadoInscricao.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="estadoInscricao.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'estadoInscricao.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'estadoInscricao.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="observacoes" title="${message(code: 'estadoInscricao.observacoes.label', default: 'Observacoes')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'estadoInscricao.activo.label', default: 'Activo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estadoInscricaoInstanceList}" status="i" var="estadoInscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estadoInscricaoInstance.id}">${fieldValue(bean: estadoInscricaoInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: estadoInscricaoInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${estadoInscricaoInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: estadoInscricaoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: estadoInscricaoInstance, field: "observacoes")}</td>
					
						<td><g:formatBoolean boolean="${estadoInscricaoInstance.activo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estadoInscricaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
