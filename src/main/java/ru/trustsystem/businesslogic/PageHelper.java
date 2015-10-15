package ru.trustsystem.businesslogic;

import java.text.MessageFormat;

public class PageHelper {
    public static String GetPageTitle(String title) {
        String baseTitle = "TrustSystem";
        return (baseTitle != null && !baseTitle.isEmpty()) ?
                MessageFormat.format("{0} | {1}", title, baseTitle) :
                baseTitle;
    }
}