
<%@ page import="mz.co.igsys.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inscricao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="inscricao.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="inscricao.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'inscricao.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'inscricao.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="dataInscricao" title="${message(code: 'inscricao.dataInscricao.label', default: 'Data Inscricao')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'inscricao.estado.label', default: 'Estado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: inscricaoInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${inscricaoInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: inscricaoInstance, field: "codigo")}</td>
					
						<td><g:formatDate date="${inscricaoInstance.dataInscricao}" /></td>
					
						<td>${fieldValue(bean: inscricaoInstance, field: "estado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inscricaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
