*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Variables.robot

*** Test Cases ***
User load the page
   Load Page And Maximize Browser Window
   Close All Browsers
Login scenarious
   ${invalid login scenarios} =  Get CSV  ${invalid credential path CSV}
   Login with Many Invalid Credentials  ${invalid login scenarios}
   Verify Error Message For Invalid Login Scenarios
   Close Browser
User login with facebook
   Load Page And Maximize Browser Window
   Login With Facebook
   Verify login With Facebook
   Close Browser
User forgot the password
   Load Page And Maximize Browser Window
   Forgot Passsword  bazhenkak@gmail.com
   Close Browser
User create account
   Load Page And Maximize Browser Window
   Create Account  Bazhena  Ivanova  bazhenkak@gmail.com  change13
   Close Browser
    