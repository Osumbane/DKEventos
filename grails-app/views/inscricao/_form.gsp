<%@ page import="mz.co.igsys.Inscricao" %>



<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="inscricao.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${inscricaoInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="inscricao.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.User.list()}" optionKey="id" value="${inscricaoInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="inscricao.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${inscricaoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="inscricao.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${inscricaoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'dataInscricao', 'error')} ">
	<label for="dataInscricao">
		<g:message code="inscricao.dataInscricao.label" default="Data Inscricao" />
		
	</label>
	<g:datePicker name="dataInscricao" precision="day"  value="${inscricaoInstance?.dataInscricao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="inscricao.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${inscricaoInstance.constraints.estado.inList}" value="${inscricaoInstance?.estado}" valueMessagePrefix="inscricao.estado" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="inscricao.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${inscricaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="inscricao.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${inscricaoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="inscricao.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${inscricaoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'detalhes', 'error')} ">
	<label for="detalhes">
		<g:message code="inscricao.detalhes.label" default="Detalhes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${inscricaoInstance?.detalhes?}" var="d">
    <li><g:link controller="detalheInscricao" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detalheInscricao" action="create" params="['inscricao.id': inscricaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detalheInscricao.label', default: 'DetalheInscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'estados', 'error')} ">
	<label for="estados">
		<g:message code="inscricao.estados.label" default="Estados" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${inscricaoInstance?.estados?}" var="e">
    <li><g:link controller="estadoInscricao" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="estadoInscricao" action="create" params="['inscricao.id': inscricaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'estadoInscricao.label', default: 'EstadoInscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'participante', 'error')} required">
	<label for="participante">
		<g:message code="inscricao.participante.label" default="Participante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="participante" name="participante.id" from="${mz.co.igsys.Participante.list()}" optionKey="id" required="" value="${inscricaoInstance?.participante?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="inscricao.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${mz.co.igsys.Produto.list()}" optionKey="id" required="" value="${inscricaoInstance?.produto?.id}" class="many-to-one"/>

</div>

