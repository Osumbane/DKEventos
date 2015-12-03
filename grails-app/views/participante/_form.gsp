<%@ page import="mz.co.igsys.Participante" %>



<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="participante.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${participanteInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="participante.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${participanteInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="participante.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${participanteInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="participante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${participanteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'apelido', 'error')} required">
	<label for="apelido">
		<g:message code="participante.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apelido" required="" value="${participanteInstance?.apelido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'grauAcademico', 'error')} required">
	<label for="grauAcademico">
		<g:message code="participante.grauAcademico.label" default="Grau Academico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="grauAcademico" required="" value="${participanteInstance?.grauAcademico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="participante.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" required="" value="${participanteInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="participante.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${participanteInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'nuit', 'error')} required">
	<label for="nuit">
		<g:message code="participante.nuit.label" default="Nuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nuit" maxlength="9" required="" value="${participanteInstance?.nuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="participante.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${participanteInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="participante.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${participanteInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="participante.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${participanteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="participante.sexo.label" default="Sexo" />
		
	</label>
	<g:select name="sexo" from="${participanteInstance.constraints.sexo.inList}" value="${participanteInstance?.sexo}" valueMessagePrefix="participante.sexo" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="participante.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${participanteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="participante.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${participanteInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="participante.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${participanteInstance?.pedidos?}" var="p">
    <li><g:link controller="inscricao" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscricao" action="create" params="['participante.id': participanteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscricao.label', default: 'Inscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'utilizador', 'error')} required">
	<label for="utilizador">
		<g:message code="participante.utilizador.label" default="Utilizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilizador" name="utilizador.id" from="${mz.co.igsys.User.list()}" optionKey="id" required="" value="${participanteInstance?.utilizador?.id}" class="many-to-one"/>

</div>

