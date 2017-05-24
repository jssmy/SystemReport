package Model;

import Model.Empleado;
import Model.Tarea;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Atencion.class)
public class Atencion_ { 

    public static volatile SingularAttribute<Atencion, Empleado> Empleado;
    public static volatile SingularAttribute<Atencion, Date> Fecha;
    public static volatile SingularAttribute<Atencion, Date> updated_at;
    public static volatile SingularAttribute<Atencion, String> Codigo;
    public static volatile SingularAttribute<Atencion, Integer> ID;
    public static volatile SingularAttribute<Atencion, Tarea> Tarea;
    public static volatile SingularAttribute<Atencion, Date> create_at;
    public static volatile SingularAttribute<Atencion, String> Estado;

}