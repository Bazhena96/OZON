*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Variables.robot

*** Test Cases ***
User load the page
     Load Page
     Close All Browsers
Login scenarious
     ${invalid login scenarios} =  Get CSV  ${invalid credential path CSV}
     Login with Many Invalid Credentials  ${invalid login scenarios}
     Close Browser
User login with facebook
     Load Page
     Login With Facebook
     Close Browser
User forgot the password
     Load Page
     Forgot Passsword  bazhenkak@gmail.com
     Close Browser
User create account
    Load Page
    Create Account  Bazhena  Ivanova  bazhenkak@gmail.com  change13
    Close Browser
    