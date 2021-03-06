<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html lang="en">
 	<jsp:include page="../menu/header.jsp" />

  <body>

	<div class="container">
		<jsp:include page="../menu/topMenu.jsp" />
		<form accept-charset="UTF-8" action="" class="form-horizontal"
			id="addUser" method="post">
			<legend>Cadastro de Usu�rio</legend>
			
			<div class="control-group string required">
				<label class="string required control-label" for="userName"><abbr title="required">*</abbr> Username</label>
				<div class="controls">
					<input class="string required span6" id="userName" name="userName" size="50" type="text">
				</div>
			</div>
			<div class="control-group string required">
				<label class="string required control-label" for="password"><abbr title="required">*</abbr> Senha</label>
				<div class="controls">
					<input class="string required span6" id="password" name="password" size="50" type="password">
				</div>
			</div>
			<div class="control-group string required">
				<label class="string required control-label" for="email"><abbr title="required">*</abbr> Email</label>
				<div class="controls">
					<input class="string required span6" id="email" name="email" size="50" type="text">
				</div>
			</div>
			<div class="form-actions">
				<input class="btn btn-primary" name="commit" type="submit" value="Cadastrar">
				<a class="btn btn-danger" href="<c:url value="/walcupom/login"/>">Cancel</a> 
			</div>
		</form>
	</div>
	<hr>
	<jsp:include page="../menu/includeScripts.jsp" />
  </body>
</html>