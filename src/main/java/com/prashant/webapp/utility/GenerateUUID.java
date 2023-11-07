package com.prashant.webapp.utility;
import java.util.UUID;
public class GenerateUUID {
    public static  String generateID()
    {
        //generate random UUIDs
        UUID userid = UUID.randomUUID();
        return userid.toString();
    }
}
