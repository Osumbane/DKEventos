
<%@ page import="mz.co.igsys.Participante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-participante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-participante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list participante">
			
				<g:if test="${participanteInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="participante.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="user" action="show" id="${participanteInstance?.criadoPor?.id}">${participanteInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="participante.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="user" action="show" id="${participanteInstance?.alteradoPor?.id}">${participanteInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="participante.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${participanteInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="participante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${participanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.apelido}">
				<li class="fieldcontain">
					<span id="apelido-label" class="property-label"><g:message code="participante.apelido.label" default="Apelido" /></span>
					
						<span class="property-value" aria-labelledby="apelido-label"><g:fieldValue bean="${participanteInstance}" field="apelido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.grauAcademico}">
				<li class="fieldcontain">
					<span id="grauAcademico-label" class="property-label"><g:message code="participante.grauAcademico.label" default="Grau Academico" /></span>
					
						<span class="property-value" aria-labelledby="grauAcademico-label"><g:fieldValue bean="${participanteInstance}" field="grauAcademico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="participante.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:fieldValue bean="${participanteInstance}" field="empresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="participante.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${participanteInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.nuit}">
				<li class="fieldcontain">
					<span id="nuit-label" class="property-label"><g:message code="participante.nuit.label" default="Nuit" /></span>
					
						<span class="property-value" aria-labelledby="nuit-label"><g:fieldValue bean="${participanteInstance}" field="nuit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="participante.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${participanteInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="participante.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${participanteInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="participante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${participanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="participante.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${participanteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="participante.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${participanteInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="participante.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${participanteInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.pedidos}">
				<li class="fieldcontain">
					<span id="pedidos-label" class="property-label"><g:message code="participante.pedidos.label" default="Pedidos" /></span>
					
						<g:each in="${participanteInstance.pedidos}" var="p">
						<span class="property-value" aria-labelledby="pedidos-label"><g:link controller="inscricao" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.utilizador}">
				<li class="fieldcontain">
					<span id="utilizador-label" class="property-label"><g:message code="participante.utilizador.label" default="Utilizador" /></span>
					
						<span class="property-value" aria-labelledby="utilizador-label"><g:link controller="user" action="show" id="${participanteInstance?.utilizador?.id}">${participanteInstance?.utilizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:participanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${participanteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
