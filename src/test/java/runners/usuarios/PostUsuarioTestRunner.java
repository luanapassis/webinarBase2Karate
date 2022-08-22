package runners.usuarios;

import com.intuit.karate.junit5.Karate;

public class PostUsuarioTestRunner {
    @Karate.Test
    public Karate runPostUsuario()
    {
        return Karate.run("classpath:features/usuarios/PostUsuario.feature");
    }
}
