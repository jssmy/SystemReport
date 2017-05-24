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
    

    <!-- Custom Fonts -->
    <link href="plugins/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link  href="plugins/vendor/datatable/css/datatable.min.css">
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
                        </br>
                      <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Nombres</th>
                                            <th>Requerimiento</th>
                                            <th>Incidente</th>
                                            <th>Total</th>
                                            <th>Opciones</th>

                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Total</th>
                                            <th>0</th>
                                            <th>0</th>
                                            <th>0</th>
                                            <th>Opciones</th>
                                            
                                        </tr>
                                    </tfoot>
                                    
                        </table>
            
            
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
    

    <!-- Custom Theme JavaScript -->
    <script src="plugins/dist/js/sb-admin-2.js"></script>

    <script src="plugins/vendor/datatable/js/datatable.min.js"></script>
    <script src="plugins/vendor/datepicker/js/datetimepicker.js"></script>

    <script>
         
            function load_atenciones(){
                $("#example").DataTable({
                    "ajax" : "chart_report?action=get_all_employee",
                    "columns":[
                        {"data":"nombres"},
                        {"data":"requerimiento"},
                        {"data": "incidente"},
                        {"data":"subtotal"},
                        {"data":null}

                    ],

                "createdRow": function ( row, data, index ) {
                      $('td', row).eq(4).html('<a href="/soft/atention-detail?name='+data['url']+'"><span class="label label-success">ver</span><a/>');
                     // $(row).at; 
                     //$('td', row).eq(4).html('<button>sd</button>');
                },
                "footerCallback": function (row, data, start, end, display) {
                        var api = this.api(),
                            data;

                        

                        // Update footer
                        


                        total = api.column(2)
                            .data()
                            .reduce(function (total, b) {
                            
                            return total + parseInt(b);
                        },0);
                        
                         pageTotal = api.column(2, {
                                page: 'current'
                            })
                                .data()
                                .reduce(function (total, b) {
                                
                                return total + parseInt(b);
                            }, 0);
                        var todo = pageTotal;
                        // Update footer
                        $(api.column(2).footer()).html(pageTotal);

                        total = api.column(1)
                            .data()
                            .reduce(function (total, b) {
                            
                            return total + parseInt(b);
                        },0);
                        
                         pageTotal = api.column(1, {
                                page: 'current'
                            })
                                .data()
                                .reduce(function (total, b) {
                                
                                return total + parseInt(b);
                            }, 0);
                        todo+=pageTotal;
                        // Update footer
                        $(api.column(1).footer()).html(pageTotal);
                        $(api.column(3).footer()).html(todo);



                    }



                });

            }
            $(document).ready(function(){
                load_atenciones();
           
            });


    </script>



</body>

</html>
