
<%@ page import="mz.co.igsys.Participante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-participante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-participante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="participante.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="participante.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'participante.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'participante.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="apelido" title="${message(code: 'participante.apelido.label', default: 'Apelido')}" />
					
						<g:sortableColumn property="grauAcademico" title="${message(code: 'participante.grauAcademico.label', default: 'Grau Academico')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${participanteInstanceList}" status="i" var="participanteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${participanteInstance.id}">${fieldValue(bean: participanteInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: participanteInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${participanteInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: participanteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: participanteInstance, field: "apelido")}</td>
					
						<td>${fieldValue(bean: participanteInstance, field: "grauAcademico")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${participanteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
