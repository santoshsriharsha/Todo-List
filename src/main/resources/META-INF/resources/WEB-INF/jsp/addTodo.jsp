<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<h1>Enter Todo details</h1>
	
	<form:form method="POST" modelAttribute="todo">
	<div class="form-group">
	
		<fieldset class="mb-3">
			<form:label path="description">Description:</form:label>
			<form:input type="text" name="description" id="description" required="required" path="description"/>
			<form:errors path="description" cssClass="text-warning"/>
		</fieldset>
		
		<fieldset class="mb-3">
			<form:label path="targetDate">Target Date:</form:label>
			<form:input type="text" name="targetDate" id="targetDate" required="required" path="targetDate"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>
		
		<form:input type="hidden" name="id" path="id"/>
		
		<form:input type="hidden" name="done" path="done"/>
	</div>
	<input type="submit" class="btn btn-success">
	</form:form>
</div>

<%@ include file="common/footer.jspf" %>
<script>
	$('#targetDate').datepicker({
	    format: 'yyyy-mm-dd',
	    startDate: '1d'
	});
</script>
