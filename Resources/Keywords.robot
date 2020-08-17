*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot
Library  File.py
*** Keywords ***
Get CSV
    [Arguments]  ${FilePath}
    ${Data} =  Read CSV File  ${FilePath}
    [Return]  ${Data}
Load Page
    Open Browser  https://www.wish.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Load Page And Maximize Browser Window
    Load Page
    Maximize Browser Window
Sign In
    [Arguments]  ${Credentions}
    Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(4)
    Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(4)
    Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
    Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${Credentions}[0]
    Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)
    Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${Credentions}[1]
    Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(5)
    Click Element   css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(5)
Facebook_Login
    Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
    Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
Login with Many Invalid Credentials
    [Arguments]  ${InvalidLoginScenarios}
    :FOR  ${LoginScenario}  IN  @{InvalidLoginScenarios}
    \  run keyword and continue on failure  Load Page
    \  run keyword and continue on failure  Sign In  ${LoginScenario}
Login With Facebook
    ${BUTTONS_COUNT}  GET ELEMENT COUNT  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
    Run Keyword If  ${BUTTONS_COUNT} >0  Facebook_Login
Forgot Passsword
    Wait Until Page Contains Element  css=.AuthenticationPage__HelpLink-wo9hra-8
    Click Element  css=.AuthenticationPage__HelpLink-wo9hra-8
    Wait Until Page Contains Element  css=.WishTextInput-sc-1k4jzwj-3
    Click Element  css=.WishTextInput-sc-1k4jzwj-3
    Input Text  css=.WishTextInput-sc-1k4jzwj-3  ${EMAIL}
    Wait Until Page Contains Element  css=div.Button-sc-1rnmncq-0:nth-child(2)
    Click Element  css=div.Button-sc-1rnmncq-0:nth-child(2)
Create Account
        Wait Until PAge Contains Element  css=div.bXoYVI:nth-child(2)
        Click Element  css=div.bXoYVI:nth-child(2)
        Wait Until Page Contains Element  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)
        Click Element  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)  ${NAME}
        Wait Until Page Contains Element  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Click Element  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${SURNAME}
        Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${EMAIL}
        Wait Until Page Contains Element  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)
        Click Element  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${PASSWORD}
        Wait Until Page Contains Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(4)
        Click Element  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(4)
        
        