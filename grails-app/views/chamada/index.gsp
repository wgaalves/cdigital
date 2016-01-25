
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
                        <div class="thumbnail col-sm-2">
                            <g:img uri="${it.picture}" alt="nome"/>
                            <div class="caption">
                                <h4>${it.name}</h4>
                            </div>
                        </div>
                    </g:each>



                </div>
            </div>
        </div><!-- /.col-sm-12 -->
    </div> <!-- /.row -->

    <div class="row">
        <div class="box-tablet">
            <div class="panel panel-primary text-center">
                <div class="panel-heading">
                    <h3 class="panel-title">Tablet Chamando <span class="badge" id="tabletsCount">0</span></h3>
                </div>
                <div class="panel-body text-left tabletsGrid">




                </div>
            </div>
        </div><!-- /.col-sm-3 -->

        <div class="col-sm-2 text-center">


            <p><button type="button" class="btn btn-primary "><h4>Pular<br/>Tablet</h4></button></p>
            <p><button type="button" class="btn btn-primary disabled "><h4>Concluir<br/>Chamada</h4></button></p>


        </div><!-- /.col-sm-9 -->
    </div> <!-- /.row -->




    <div class="page-header">
        <p style="margin-top:150px" >&nbsp </p>
    </div>



</div> <!-- /container -->


<script>

    $(document).ready(function(){
        var url = 'http://localhost:8080/saladeaula/activeTablets.jsf';
        setInterval(function(){
        $.ajax({
            url: url,
            dataType: 'json'    ,
            success: function(data) {
                var html = ''
                $.each(data, function(index,val){


                         html += '<button type="button" value="'+ val.ip+'" class="btn  btn-tablet">'+ val.ip +'<br/><span class="badge">&nbsp;</span></button>';

                })

                $('.tabletsGrid').empty();
                $('.tabletsGrid').append(html);
                var  tabletsCount = parseInt($('.btn-tablet').length) ;
                $('#tabletsCount').text(tabletsCount);
            }
        });
        }, 5000);

    });



</script>