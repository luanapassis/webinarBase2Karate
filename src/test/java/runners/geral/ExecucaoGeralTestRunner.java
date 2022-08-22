package runners.geral;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class ExecucaoGeralTestRunner {

    @Test
    public void runExecucaoGeralParalela()
    {
        Runner.Builder builder = new Runner.Builder();
        builder.path("classpath:features");
        //builder.tags("@regression, @smoke");
        //builder.tags("@regression");
        Results result = builder.parallel(5);
        Assertions.assertEquals(0, result.getFailCount());
    }

}
