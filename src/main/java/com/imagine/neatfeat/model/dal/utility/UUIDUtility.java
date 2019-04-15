package com.imagine.neatfeat.model.dal.utility;

import java.util.regex.Pattern;

public class UUIDUtility {
    public static boolean isUUID(String uuid)
    {
        if(!Pattern.matches("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", uuid))
            return false;
        else
            return true;
    }
}
