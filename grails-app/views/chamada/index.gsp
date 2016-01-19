
<meta name='layout' content='principal/main'/>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<div class="container theme-showcase" role="main">

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="page-header">

    </div>


    <div class="page-header">
        <h1>Chamada</h1>
    </div>
    <div class="row text-center chamada ">
        <div class="col-sm-12">
            <div class="panel panel-primary alunos-presentes">
                <div class="panel-heading">
                    <h3 class="panel-title">Alunos presentes  <span class="badge">0</span></h3>
                </div>
                <div class="panel-body ">


                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Todos os alunos  <span class="badge">${studentsCount}</span></h3>
                </div>
                <div class="panel-body fundo_cinza">


<g:each in="${students}">
    <div class="col-sm-2">
        <div class="thumbnail">
            <g:img uri="${it.picture}" alt="nome"/>
            <div class="caption">
                <h4>${it.name}</h4>
            </div>
        </div>
    </div>
</g:each>




                </div>
            </div>
        </div><!-- /.col-sm-12 -->
    </div> <!-- /.row -->

    <div class="row">
        <div class="col-sm-3">
            <div class="panel panel-primary text-center">
                <div class="panel-heading">
                    <h3 class="panel-title">Tablet Chamando</h3>
                </div>
                <div class="panel-body">

                    <span class="n-tablet">000</span>

                    <g:img  class="img-tablet" uri="/images/tablet.jpg" width="89" height="105" />



                </div>
            </div>
        </div><!-- /.col-sm-3 -->

        <div class="col-sm-9">
            <div class="col-sm-6">
                <h2>Tablet 1 de 1</h2>
                <button type="button" class="btn btn-primary"><h4>Pular Tablet</h4></button>
            </div>
            <div class="col-sm-6">
                <h2>&nbsp;</h2>
                <button type="button" class="btn btn-primary disabled pull-right"><h4>Concluir Chamada</h4></button>
            </div>

        </div><!-- /.col-sm-9 -->
    </div> <!-- /.row -->




    <div class="page-header">
        <p style="margin-top:150px" >&nbsp </p>
    </div>



</div> <!-- /container -->