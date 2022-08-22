package runners.usuarios;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetUsuariosTestRunner {

    @Test
    public Karate runGetUsuarios()
    {
        return Karate.run("classpath:features/usuarios/GetUsuarios.feature");
    }
}
