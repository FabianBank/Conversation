Feature: Testing conversations function
  A conversation should not be able to start if user does not have an Conversation account.
  A conversation should not be able to be read until the conversation is opened.
  If there is no contacts in the contact list then I can’t start a conversation.

  Scenario: Testing conversations function
    Given I am logged into the application
    And there are contacts in my list
    When I press “Frank”
    Then I have opened the conversation with "Frank"

Feature: sending a picture
  Picture should not be send if picture is not available.
  Picture should not be send until I accept the conformation
  If the picture is send then the receiver should be able to open the picture

  Scenario: Sending a picture

    Given I am logged into the application
    And there are contacts in my list
    And a conversation with Frank is open
    When I press the appendix icon
    When I press the choose picture icon
    When I press a certain picture
    Then I am able to press the send picture
    Then Conversations has send the picture.


Feature: File sharing:
  File should not be send if file is not available.
  File should not be send until I accept the conformation
  If the File is send then the receiver should be able to open the file

  Scenario: File sharing scenario:
    Given I am logged into the application
    And there are contacts in my list
    And a conversation with “Frank” is open
    When I press the appendix icon
    When I press the choose file icon
    When I press a certain file
    Then I am able to press the send file icon
    Then Conversations has send the file
    And "Frank" has received the file.

Feature:  Adding new contact
  Conversation should not be able to start until there are contacts in the list
  If there are no contacts then I should be informed that I don’t have contacts in my list

  Scenario: Adding new contact:
    Given I am logged into the application
    And I have contacts on my phone
    When I press the plus icon
    When I type and select a person’s name
    Then the contact should be added to my friends list.

Feature: Sending encrypted text:
  Text should not be send if external encryption application is not present
  Text should not be send until text is encrypted by external application.
  If text is not send then I should be informed about this.
  If text is send receiver then the receiver should be able to decrypt text.

