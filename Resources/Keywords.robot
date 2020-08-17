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
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Sign In
    [Arguments]  ${Credentions}
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(4)
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${Credentions}[0]
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${Credentions}[1]
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(5)
Facebook_Login
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
Login with Many Invalid Credentials
    [Arguments]  ${InvalidLoginScenarios}
    FOR  ${LoginScenario}  IN  @{InvalidLoginScenarios}
      run keyword and continue on failure  Load Page
      run keyword and continue on failure  Sign In  ${LoginScenario}
    END
Login With Facebook
    ${BUTTONS_COUNT}  GET ELEMENT COUNT  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
    Run Keyword If  ${BUTTONS_COUNT} >0  Facebook_Login
Forgot Passsword
    Wait And Click  css=.AuthenticationPage__HelpLink-wo9hra-8
    Wait And Click  css=.WishTextInput-sc-1k4jzwj-3
    Input Text  css=.WishTextInput-sc-1k4jzwj-3  ${EMAIL}
    Wait And Click  css=div.Button-sc-1rnmncq-0:nth-child(2)
Create Account
        Wait And Click  css=div.bXoYVI:nth-child(2)
        Wait And Click  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)  ${NAME}
        Wait And Click  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${SURNAME}
        Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${EMAIL}
        Wait And Click  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${PASSWORD}
        Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(4)

        