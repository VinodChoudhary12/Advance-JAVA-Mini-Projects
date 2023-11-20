package vinod.pojopackage;

import java.util.Scanner;

public class Methods {

    public boolean checkString(String s) {

        for (int i = 0; i < s.length(); i++) {
            if ((s.charAt(i) < 97 || s.charAt(i) > 122) & (s.charAt(i) < 65 || s.charAt(i) > 90)) {

                return false;
            }
        }
        return true;
    }

    public boolean checkMoblile(String s) {
        if (s.length() != 10) {
            return false;
        }
        for (int i = 0; i < s.length(); i++) {
            if ((s.charAt(i) < 48 || s.charAt(i) > 57)) {

                return false;
            }
        }
        return true;
    }
}
