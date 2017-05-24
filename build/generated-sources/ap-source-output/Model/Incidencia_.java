package Model;

import Model.Grupo;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(Incidencia.class)
public class Incidencia_ extends Atencion_ {

    public static volatile SingularAttribute<Incidencia, String> Solucion;
    public static volatile SingularAttribute<Incidencia, Grupo> Grupo;
    public static volatile SingularAttribute<Incidencia, String> Descripcion;
    public static volatile SingularAttribute<Incidencia, String> Titulo;

}