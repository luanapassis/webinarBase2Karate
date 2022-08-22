package runners.usuarios;

import com.intuit.karate.junit5.Karate;

public class PutUsuarioTestRunner {
    @Karate.Test
    public Karate runGetUsuarios()
    {
        return Karate.run("classpath:features/usuarios/PutUsuario.feature");
    }
}
