package test;

import org.testng.annotations.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by fabian on 1/3/2017.
 */

public class Contact {

    private static String firstName = "Fabian";
    private static String lastName = "Bank";



    @Test
    public void addContact(){

        Contact contact = new Contact();

        assertEquals(contact.getName(), “Fabian”);
        assertEquals(contact.getLastName(), “Bank”);
//    }

}}
