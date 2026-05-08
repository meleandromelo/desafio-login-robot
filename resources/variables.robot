*** Variables ***

${URL}        https://practicetestautomation.com/practice-test-login/
${BROWSER}    chrome

# Locators
${INPUT_USERNAME}      //input[@name='username']
${INPUT_PASSWORD}      //input[@name='password']
${BUTTON_SUBMIT}       //button[@id='submit']

${MESSAGE_SUCCESS}
...    //div[contains(.,'Logged In Successfully')]

${MESSAGE_USERNAME_ERROR}
...    //div[contains(.,'Your username is invalid!')]

${MESSAGE_PASSWORD_ERROR}
...    //div[contains(.,'Your password is invalid!')]

# Dados
${USERNAME_VALIDO}      student
${USERNAME_INVALIDO}    invaliduser

${PASSWORD_VALIDO}      Password123
${PASSWORD_INVALIDO}    Password1234