*** Keywords ***
Send Telegram Notification
    [Arguments]    ${message}
    Send Telegram Message  ${message}

Send Failure Notification If Test Failed
    ${status}    ${message}=    Run Keyword And Ignore Error    Test Status Should Be    FAIL
    Run Keyword If    '${status}' == 'FAIL'    Send Telegram Notification    ${endpoint} Mail Yollarken Hata Olustu.

Navigate
    [Arguments]    ${endpoint}    ${get_browser}
    Open Browser    ${endpoint}    ${get_browser}
    Maximize Browser Window


Close Browser Safely
    ${status}    ${value}=    Run Keyword And Ignore Error    Close Browser
    Log    Browser closed successfully    level=INFO

Send Mail
    [Arguments]    ${name}    ${email}    ${phone}    ${message}    ${button}    ${timeout}    ${result}
    Input Text    ${name}    text=RoboTestName
    Input Text    ${email}    text=robotest123@mail.com
    Input Text    ${phone}    text=123456789
    Run Keyword If    '${message}' != 'False'    Input Text    ${message}    text=RoboTestMessage
    Submit Form
    Sleep    ${timeout}
    Page Should Contain    ${result}
    Close Browser

Load EHB Variables
    Set Test Variable     ${endpoint}     https://esthetichairbrasil.com.br/contate-nos/
    Set Test Variable     ${timeout}    2
    Set Test Variable     ${name}    css:input[name="name"]
    Set Test Variable     ${email}    css:input[name="email"]
    Set Test Variable     ${phone}    css:input[name="phone"]
    Set Test Variable     ${message}    css:textarea[name="message"]
    Set Test Variable     ${button}    css:button[type="submit"]
    Set Test Variable     ${get_browser}        chrome
    Set Test Variable     ${result}    Thank you


Load EHM Variables
    Set Test Variable     ${endpoint}     https://esthetichairmexico.com/contact/
    Set Test Variable     ${timeout}    2
    Set Test Variable     ${name}    css:input#name
    Set Test Variable     ${email}    css:input#email
    Set Test Variable     ${phone}    css:input#phone
    Set Test Variable     ${message}    css:textarea#message
    Set Test Variable     ${button}    xpath:/html/body/div[5]/div/div/div[1]/form/div/div[5]/button
    Set Test Variable     ${get_browser}        chrome
    Set Test Variable     ${result}    Thank You !


Load Dental Variables
    Set Test Variable     ${endpoint}     https://esthedental.com/en/contact/
    Set Test Variable     ${timeout}    2
    Set Test Variable     ${name}    css:input#text
    Set Test Variable     ${email}    css:input#email
    Set Test Variable     ${phone}    css:input#phone
    Set Test Variable     ${message}    css:textarea[name="message"]
    Set Test Variable     ${button}    css:button[type="submit"]
    Set Test Variable     ${get_browser}        chrome
    Set Test Variable     ${result}    Your application has been received successfully.

Load Smile Variables
    Set Test Variable     ${endpoint}     https://smile.esthedental.com/
    Set Test Variable     ${timeout}    2
    Set Test Variable     ${name}    css:input#nFullName
    Set Test Variable     ${email}    css:input#nEmail
    Set Test Variable     ${phone}    css:input#dkappo
    Set Test Variable     ${message}    False
    Set Test Variable     ${button}    css:input[name="dkNormalFrom"]
    Set Test Variable     ${get_browser}        chrome
    Set Test Variable     ${result}    Your message has been sent successfully. We will contact you as soon as possible.
