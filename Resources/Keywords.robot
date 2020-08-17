*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot
Library  File.py
*** Keywords ***
Get CSV
    [Arguments]  ${filePath}
    ${Data} =  Read CSV File  ${filePath}
    [Return]  ${data}
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
    [Arguments]  ${credentials}
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(4)
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${credentials}[0]
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)
    Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${credentials}[1]
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > form:nth-child(2) > div:nth-child(5)
Facebook Login
    Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
Login with Many Invalid Credentials
    [Arguments]  ${invalid login scenarios}
    FOR  ${loginScenario}  IN  @{invalid login scenarios}
      run keyword and continue on failure  Load Page
      run keyword and continue on failure  Sign In  ${login scenario}
    END
Login With Facebook
    ${button count}  GET ELEMENT COUNT  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(3) > div:nth-child(4) > div:nth-child(2)
    Run Keyword If  ${button count} >0  Facebook_Login
Forgot Passsword
    Wait And Click  css=.AuthenticationPage__HelpLink-wo9hra-8
    Wait And Click  css=.WishTextInput-sc-1k4jzwj-3
    Input Text  css=.WishTextInput-sc-1k4jzwj-3  ${email}
    Wait And Click  css=div.Button-sc-1rnmncq-0:nth-child(2)
Create Account
        Wait And Click  css=div.bXoYVI:nth-child(2)
        Wait And Click  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.bHVRfW > div:nth-child(1) > input:nth-child(1)  ${name}
        Wait And Click  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=.AuthenticationPage__NameTextInputWrapper-wo9hra-12 > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${surname}
        Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)  ${email}
        Wait And Click  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)
        Input Text  css=div.WishTextInput__Wrapper-sc-1k4jzwj-0:nth-child(3) > div:nth-child(1) > input:nth-child(1)  ${password}
        Wait And Click  css=div.AuthenticationPage__PaneWrapper-wo9hra-4:nth-child(2) > form:nth-child(2) > div:nth-child(4)

        