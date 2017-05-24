<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>

    <!-- Bootstrap Core CSS -->
    <link href="plugins/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="plugins/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="plugins/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link rel="stylesheet" href="plugins/vendor/morris/morris.css">

    <!-- Custom Fonts -->
    <link href="plugins/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <link href="plugins/vendor/datepicker/css/datetimepicke.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>    
    <c:if test="${sessionScope.user == null}">
        <c:redirect url="/home"/>
    </c:if>



    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/soft/panel">Bienvenido ${sessionScope.user.getName()  }  </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bar-chart fa-2x"   aria-hidden="true"></i> <i class="fa fa-caret-down"></i>
                    </a>
                     <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="/soft/chart-user-requerimientos">
                                <div>
                                    <strong>Requerimientos</strong>
                                    <span class="pull-right text-muted">
                                        <em>Atenciones</em>
                                    </span>
                                </div>
                                <div>Reporte sobre las requerimientos atendidos...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/soft/chart-user-incidencias">
                                <div>
                                    <strong>Incidencias</strong>
                                    <span class="pull-right text-muted">
                                        <em>Atenciones</em>
                                    </span>
                                </div>
                                <div>Reporte sobre las incidencias atendidas..</div>
                            </a>

                        </li>
                        <li class="divider"></li>
                         <li>
                            <a href="/soft/enterprice-atention">
                                <div>
                                    <strong>Atenciones de la empresa</strong>
                                    <span class="pull-right text-muted">
                                        <em>Atenciones</em>
                                    </span>
                                </div>
                                <div>Reporte de las atenciones de los empleados de la empresa</div>
                            </a>
                            
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/soft/chart-group"">
                                <div>
                                    <strong>Reporte por grupos</strong>
                                    <span class="pull-right text-muted">
                                        <em>Atenciones</em>
                                    </span>
                                </div>
                                <div>Comparacion de los requerimientos e incidencias por grupos de asignacion ...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong> Totas las atenciones</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dro
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/soft/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                  <ul class="nav" id="side-menu">
                        <li>
                            <a href="/soft/atention-employee"><i class="fa fa-table fa-fw"></i> Detalle por empleado</a>
                        </li>
                        <li>
                            <a href="/soft/report-all-day"><i class="fa fa-table fa-fw"></i> Detalle por día</a>
                        </li>
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
               </br>
            <div class="row">
                <div class="col-md-10">
                    <form id="form-date">
                        <div class="form-group">
                            <label for="dtp_input2" class="col-md-2 control-label">Mes minimo</label>
                            <div class="input-group date form_date col-md-5"  data-date-format="yyyy-mm-dd">
                                <input id="date" name="date_min" class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                         </div>
                         <div class="form-group">
                            <label for="dtp_input2" class="col-md-2 control-label">Mes maximo</label>
                            <div class="input-group date form_date col-md-5"  data-date-format="yyyy-mm-dd">
                                <input id="date" name="date_max" class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                         </div>
                    </form>

                </div>
                <div class="col-md-2">
                    <button class="btn btn-primary"  onclick="get_chart_date()" >Filtrar <i class="fa fa-refresh"></i>
                    </button>
                    
                </div>

            </div>
             </br>
          <div class="panel panel-default">
                        <div class="panel-heading">
                            Bar Chart Example
                        </div>
                        <!-- /.panel-heading -->
                        <div id="panel-chart" class="panel-body">
                            <div id="bar-chart-empresa"></div>
                        </div>
                        <div class="col-md-12">
                                 <ul id="pagination" class="pagination">
                                  
                                </ul>

                        </div>
                        <!-- /.panel-body -->
        </div>



            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="plugins/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="plugins/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="plugins/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="plugins/dist/js/sb-admin-2.js"></script>
    <script src="plugins/vendor/morris/morris.min.js"></script>
    <script src="plugins/vendor/datepicker/js/datetimepicker.js"></script>
    <!-- morris -->
    <script>

        $.urlParam =    function(name){
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results==null){return 1;}
            else{return results[1] || 0;}}


        function pagination(pages){
            var pag='';
            for (var i =0; i <pages; i++) 
            {
                    pag += '<li><a href="/soft/chart-user-incidencias?index='+ (i+1) +'   ">'+(i+1)+'</a></li>';

            }
            $('#pagination').append(pag);

        }

    function get_chart(){

        $.ajax({
            url: "chart_report?action=atencion_empresa&index="+$.urlParam("index"),
            method: "get",
            data: $("#form-date").serialize(),
            success: function(date){
               pagination(date.size);
                

                
                var bar = new Morris.Bar({
                  element: 'bar-chart-empresa',
                  resize: true,
                  data: date.data,
                  barColors: ['#859A43', '#721AD7'],
                  xkey: 'nombre',
                  ykeys: ['requerimiento','incidente'],
                  labels: ['Requerimientos','Incidencias'],
                  hideHover: 'auto',
                   xLabelAngle: 45
                });



           }
        });       

    }

    function get_chart_date(){
        $("#panel-chart").html("<div id='bar-chart-empresa'></div>");
        get_chart();

    }

    


    $(document).ready(
    function(){
        
        get_chart();
        $('.form_date').datetimepicker({
            
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
            });
    });
    


</script>

</body>

</html>
