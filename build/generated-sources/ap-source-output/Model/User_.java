package Model;

import Model.Empleado;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-05T16:00:41")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> Type;
    public static volatile SingularAttribute<User, String> Email;
    public static volatile SingularAttribute<User, Empleado> Empleado;
    public static volatile SingularAttribute<User, Date> updated_at;
    public static volatile SingularAttribute<User, Date> created_at;
    public static volatile SingularAttribute<User, Integer> ID;
    public static volatile SingularAttribute<User, String> Password;

}