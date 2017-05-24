package Model;

import Model.Requerimiento;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Departamento.class)
public class Departamento_ { 

    public static volatile SingularAttribute<Departamento, String> Codigo;
    public static volatile SingularAttribute<Departamento, String> Descripcion;
    public static volatile SingularAttribute<Departamento, Integer> ID;
    public static volatile ListAttribute<Departamento, Requerimiento> Requerimientos;

}