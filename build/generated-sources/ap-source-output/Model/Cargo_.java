package Model;

import Model.Empleado;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Cargo.class)
public class Cargo_ { 

    public static volatile SingularAttribute<Cargo, String> Nombre;
    public static volatile SingularAttribute<Cargo, String> Descripcion;
    public static volatile SingularAttribute<Cargo, Integer> ID;
    public static volatile ListAttribute<Cargo, Empleado> Empleados;

}