
import org.junit.Test;

import eu.siacs.conversations.entities.Conversation;
import eu.siacs.conversations.entities.Message;
import eu.siacs.conversations.xmpp.jid.InvalidJidException;
import eu.siacs.conversations.xmpp.jid.Jid;


import static junit.framework.Assert.assertEquals;

/**
 * Created by fabian on 1/3/2017.
 */

public class Contact {

    private static String firstName = "Fabian";
    private static String lastName = "Bank";

    @Test
    public void messageBodyTest() throws InvalidJidException {
        Message message;

        Conversation conversation = new Conversation("test", "test", "test",
                "test", new Jid("jid", true), 1, 1, 1, "test");

        message = new Message(conversation, "Dit is de body van het bericht", 1);
        assertEquals(message.getBody(), "Dit is de body van het bericht");
    }


    @Test
    public void addContact(Contact contact) {

        if(contact == null){
            contact = new Contact();
        }

        assertEquals(contact.getClass().getName(), "Contact");

    }

    @Test
    public void startGroupConversation() throws InvalidJidException {
        Conversation conversation = new Conversation("test", "test", "test",
                "test", new Jid("jid", true), 1, 1, 1, "test");

        assertEquals(conversation.getName(), "conversation");

    }

    @Test
    public void addContactToConversation() throws InvalidJidException {
        Conversation conversation = new Conversation("test", "test", "test",
                "test", new Jid("jid", true), 1, 1, 1, "test");

        Contact contact = new Contact();
        
    }


}
