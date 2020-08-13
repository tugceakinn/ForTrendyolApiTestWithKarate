package testRunner;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "src/test/java/Features")

public class testRunner {
}

/*
(features = "src/test/java/Features/question1.feature")
Bu şekilde requestlerimizi tek tek de çalıştırabiliriz.
TestRunner class'ı, test'i run etmemizi sağlar.
*/