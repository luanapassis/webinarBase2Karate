package runners.usuarios;

import com.intuit.karate.junit5.Karate;

public class DeleteusuarioTestRunner {

    @Karate.Test
    public Karate runDeleteusuario()
    {
        return Karate.run("classpath:features/usuarios/DeleteUsuario.feature");
    }
}
