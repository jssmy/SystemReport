package Model;

import Model.Atencion;
import Model.Empleado;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Tarea.class)
public class Tarea_ { 

    public static volatile SingularAttribute<Tarea, Empleado> Asigado_a;
    public static volatile SingularAttribute<Tarea, Empleado> Resuelto_por;
    public static volatile SingularAttribute<Tarea, Date> Fecha_apertura;
    public static volatile SingularAttribute<Tarea, Atencion> Atencion;
    public static volatile SingularAttribute<Tarea, Date> updated_at;
    public static volatile SingularAttribute<Tarea, Date> created_at;
    public static volatile SingularAttribute<Tarea, Integer> ID;
    public static volatile SingularAttribute<Tarea, Date> Fecha_solucion;

}