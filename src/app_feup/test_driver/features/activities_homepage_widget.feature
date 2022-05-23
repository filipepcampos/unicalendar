Feature: Visualize the Activities calendar widget on the homescreen.
    As an UP member,
    I want to see the Activities calendar widget on the homescreen,
    so that I can quickly check if I'm keeping up with my deadlines.
    
    Scenario: Visualize Activities calendar widget on the home screen.
        When I fill the "usernameinput" field with my usercode
        And  I fill the "passwordinput" field with my password
        And I tap the "entrar" button
        And I tap the "editar" button
        And I tap the "adicionar widget" button
        And I tap the "atividades" button
        And I tap the "editar" button
        Then I expect the text "Atividades" to be present

        # Given that I have the app homescreen open,
        # When I scroll through the home screen,
        # Then I should be able to find and see the Activities calendar widget.

Feature: Interact with the Activities calendar widget on the homescreen.
    As an UP member,
    I want to click on the Activities calendar widget on the homescreen,
    so that I can quickly navigate to the activities page.
    
    Scenario: Click the Activities calendar widget on the home screen.
        When I fill the "usernameinput" field with my usercode
        And  I fill the "passwordinput" field with my password
        And I tap the "entrar" button
        And I tap the "" widget # TODO
        Then I expect the page "Atividades" to be present # TODO