***Settings***
Library  SeleniumLibrary
Resource  Variables.robot
*** Keywords ***
Load Page
    Open Browser  https://www.ozon.ru  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
