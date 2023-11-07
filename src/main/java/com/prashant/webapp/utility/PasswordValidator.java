package com.prashant.webapp.utility;

public class PasswordValidator {

    // Check if the password meets the criteria for a strong password
    public static boolean isStrongPassword(String password) {
        if (password == null) {
            return false;
        }

        // Minimum password length
        if (password.length() < 8) {
            return false;
        }

        // Regular expressions to check for character types
        String uppercaseRegex = ".*[A-Z].*";
        String lowercaseRegex = ".*[a-z].*";
        String digitRegex = ".*\\d.*";
        String specialCharacterRegex = ".*[!@#$%^&*()_+\\-=\\[\\]{};':\",.<>/?].*";
        // Check for each character type

        return !(!password.matches(uppercaseRegex) ||
                !password.matches(lowercaseRegex) ||
                !password.matches(digitRegex) ||
                !password.matches(specialCharacterRegex));
    }
}
