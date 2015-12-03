
<%@ page import="mz.co.igsys.DetalheInscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">

		<g:set var="entityName" value="${message(code: 'detalheInscricao.label', default: 'DetalheInscricao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-detalheInscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-detalheInscricao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="detalheInscricao.inscricao.label" default="Inscricao" /></th>
					
						<th><g:message code="detalheInscricao.opcao.label" default="Opcao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${detalheInscricaoInstanceList}" status="i" var="detalheInscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${detalheInscricaoInstance.id}">${fieldValue(bean: detalheInscricaoInstance, field: "inscricao")}</g:link></td>
					
						<td>${fieldValue(bean: detalheInscricaoInstance, field: "opcao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${detalheInscricaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
