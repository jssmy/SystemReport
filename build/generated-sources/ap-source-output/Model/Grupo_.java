package Model;

import Model.Incidencia;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Grupo.class)
public class Grupo_ { 

    public static volatile SingularAttribute<Grupo, String> Codigo;
    public static volatile ListAttribute<Grupo, Incidencia> Incidencias;
    public static volatile SingularAttribute<Grupo, String> Descripcion;
    public static volatile SingularAttribute<Grupo, Integer> ID;

}