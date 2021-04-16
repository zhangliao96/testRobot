*** Settings ***
Library           Selenium2Library
Library  Selenium2Library
*** Test Cases ***
testcase
    Open Browser    https://192.168.20.193:3680/reddragonmag/a/login    Chrome
    Maximize Browser window
    Sleep    3
    Click Element    id:details-button
    Click Element    id:proceed-link
    sleep    3
    Add cookie    javamg.session.id    dd7a8c8ca051448eafb805c1d50add26
    sleep    3
    Close Browser

testcase02
    Open Browser    https://192.168.20.193:3680/reddragonmag/a?login    Chrome
    Sleep    3
    Click Element    id:details-button
    Click Element    id:proceed-link
    sleep    3
    Delete cookie    javamg.session.id
    sleep    2
    Add cookie    javamg.session.id    dd7a8c8ca051448eafb805c1d50add26
    Close Browser

testcase03
    Login

*** Keywords ***
Login
    Open Browser    https://192.168.20.193:3680/reddragonmag/a/login    Chrome
    Maximize Browser window
    Sleep    3
    Click Element    id:details-button
    Click Element    id:proceed-link
    sleep    3
    Add cookie    javamg.session.id    dd7a8c8ca051448eafb805c1d50add26
    sleep    3
