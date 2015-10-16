package ru.trustsystem.businesslogic;

import java.text.MessageFormat;

public class PageHelper {
    public static String GetPageTitle(String title) {
        String baseTitle = "TrustSystem";
        return (title != null && !title.isEmpty()) ?
                MessageFormat.format("{0} | {1}", title, baseTitle) :
                baseTitle;
    }

    public static String GetControllerName(Class controllerClass) {
        return controllerClass.getName().replace("ru.trustsystem.", "").replace("Controller", "").toLowerCase();
    }
}