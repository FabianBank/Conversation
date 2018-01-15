Feature: sending a picture
  Scenario: Sending a picture

  Given I am logged into the application
  And there are contacts in my list
  And a conversation with Frank is open
  When I press the appendix icon
  When I press the choose picture icon
  When I press a certain picture
  Then I am able to press the send picture
  Then Conversations has send the picture.
