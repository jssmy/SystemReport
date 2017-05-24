package Model;

import Model.Atencion;
import Model.Cargo;
import Model.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Empleado.class)
public class Empleado_ { 

    public static volatile SingularAttribute<Empleado, Date> updted_at;
    public static volatile SingularAttribute<Empleado, Cargo> Cargo;
    public static volatile SingularAttribute<Empleado, String> Codigo;
    public static volatile SingularAttribute<Empleado, Date> created_at;
    public static volatile ListAttribute<Empleado, Atencion> atenciones;
    public static volatile SingularAttribute<Empleado, String> Celular;
    public static volatile SingularAttribute<Empleado, String> Apellidos;
    public static volatile SingularAttribute<Empleado, String> Nombres;
    public static volatile SingularAttribute<Empleado, String> Email_empresa;
    public static volatile SingularAttribute<Empleado, String> Email_personal;
    public static volatile SingularAttribute<Empleado, String> Direccion;
    public static volatile SingularAttribute<Empleado, User> usuario;
    public static volatile SingularAttribute<Empleado, Integer> ID;
    public static volatile SingularAttribute<Empleado, String> Dni;

}