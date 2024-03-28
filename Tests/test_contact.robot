*** Settings ***
Resource  ../Configurations/ConfigurationMaps.robot
Suite Teardown    
Test Teardown    Close Browser Safely

*** Test Cases ***
Test EHB
    [Documentation]    Test EHB functionality.
    Load EHB Variables
    Navigate    ${endpoint}    ${get_browser}
    Send Mail    ${name}    ${email}    ${phone}    ${message}    ${button}    ${timeout}    ${result}
    Send Failure Notification If Test Failed
Test EHM
    [Documentation]    Test EHM functionality.
    Load EHM Variables
    Navigate    ${endpoint}    ${get_browser}
    Send Mail    ${name}    ${email}    ${phone}    ${message}    ${button}    ${timeout}    ${result}
    Send Failure Notification If Test Failed
Test Dental
    [Documentation]    Test Dental functionality.
    Load Dental Variables
    Navigate    ${endpoint}    ${get_browser}
    Send Mail    ${name}    ${email}    ${phone}    ${message}    ${button}    ${timeout}    ${result}
    Send Failure Notification If Test Failed

Test Smile
    [Documentation]    Test Smile functionality.
    Load Smile Variables
    Navigate    ${endpoint}    ${get_browser}
    Click Link    locator=css:a[href="#contact"]
    Sleep    2
    Send Mail    ${name}    ${email}    ${phone}    ${message}    ${button}    ${timeout}    ${result}
    Send Failure Notification If Test Failed