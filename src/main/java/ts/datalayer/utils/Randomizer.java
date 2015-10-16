package ts.datalayer.utils;

import java.util.Random;

public class Randomizer {

    public static Long getRandomLongValue() {
        long LOWER_RANGE = 0; //assign lower range value
        long UPPER_RANGE = 1000000; //assign upper range value
        Random random = new Random();

        return LOWER_RANGE + (long)(random.nextDouble()*(UPPER_RANGE - LOWER_RANGE));
    }

}