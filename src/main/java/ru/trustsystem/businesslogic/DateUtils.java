package ru.trustsystem.businesslogic;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtils {

    public static String dateToString(Date date) {
        SimpleDateFormat formatDateJava = new SimpleDateFormat("dd/MM/yyyy");
        return formatDateJava.format(date);
    }
}