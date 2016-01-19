<meta name='layout' content='principal/login'/>
<div class="container theme-showcase" role="main">
	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>


	<div class="page-header login-header">
		<h1>Logo da Escola<span>Carteira Digital</span></h1>
	</div>
	<div class="wrapper turma-wrapper">
		<div class="container-login">

			<g:form class="form-signin" controller="saladeAula" action="createClassroom" >
				<h2 class="form-signin-heading">Escolha sua <br/>Turma e Disciplina</h2>
				<h3 class="form-signin-heading">Sala de Aula</h3>

				<select class="form-control" name="segment" id="segment"  >
					<option value="0" selected>Segmento</option>
				</select>
				<select class="form-control" name="grade" id="grade">
					<option value="0" selected>Serie</option>
				</select>
				<select class="form-control" name="group" id="group">
					<option value="0" selected>Turma</option>
				</select>
				<select class="form-control" name="discipline" id="discipline">
					<option value="0" selected>Disciplina</option>
				</select>

				<button class="btn btn-lg  btn-block" type="submit">Entrar</button>
			</g:form>

		</div>


	</div>
</div> <!-- /container -->

<script>
	$(document).ready(function() {
		var url = "${createLink(controller:'saladeAula',action: 'returnAllSegment')} ";
		$.ajax({
			url: url,
			type: 'POST',
			success: function (result) {
				var options = '';
				$.each(result, function (key, value) {
					options += '<option value=' + value.id + '>' + value.segment + '</option>';
				});
				$('#segment').append(options);
			}
		});


	$('#segment').on('change',function(){
		var urlGrade = "${createLink(controller:'saladeAula',action: 'returnAllGradesBySegment')} ";
		$.ajax({
			url: urlGrade,
			data: {
				'id': $('#segment').val(),
			},
			type: 'POST',
			success: function (result) {
				var options = '<option value="0" selected>Serie</option>';
				$.each(result, function (key, value) {
					options += '<option value=' + value.id + '>' + value.grade + '</option>';
				});
				$('#grade').find('option').remove();
				$('#grade').append(options);
			}
		});


	});

	$('#grade').on('change',function(){
		var urlGrade = "${createLink(controller:'saladeAula',action: 'returnAllGroupsByGrade')} ";
		$.ajax({
			url: urlGrade,
			data: {
				'id': $('#grade').val(),
			},
			type: 'POST',
			success: function (result) {
				var options = '<option value="0" selected>Turma</option>';
				$.each(result, function (key, value) {

					options += '<option value=' + value.id + '>' + value.group + '</option>';
				});
				$('#group').find('option').remove();
				$('#group').append(options);
			}
		});


	});
	$('#grade').on('change',function(){
		var urlGrade = "${createLink(controller:'saladeAula',action: 'returnDiscipline')} ";
		$.ajax({
			url: urlGrade,
			data: {
				'id': $('#grade').val(),
			},
			type: 'POST',
			success: function (result) {
				var options = '<option value="0" selected>Disciplina</option>';
				$.each(result, function (key, value) {

					options += '<option value=' + value.id + '>' + value.discipline + '</option>';
				});
				$('#discipline').find('option').remove();
				$('#discipline').append(options);

			}
		});
	});
	});
</script>