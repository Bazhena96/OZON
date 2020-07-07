***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Variables.robot

*** Test Cases ***
# User Load The Page
    # Load Page
    # Close All Browsers
# Login Scenarious
    # ${InvalidLoginScenarios} =  Get CSV  ${INVALID_CREDENTIALS_PATH_CSV}
    # Login with Many Invalid Credentials  ${InvalidLoginScenarios}
    # Close Browser
# User Login With Facebook
    # Load Page
    # Login With Facebook
    # Close Browser
# User Forgot The Password
    # Load Page
    # Forgot Passsword
    # Close Browser
User Create Account
    Load Page
    Create Account
    Close Browser
    