*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside setup suite    
Suite Teardown    Log    I am inside suite teardown    
Test Setup    Log    I am inside test setup    
Test Teardown    Log    I am inside test teardown 

Default Tags    Learning   

*** Variables ***
${scalarvariable_url}    https://opensource-demo.orangehrmlive.com/
@{listvariable_credentials}    Admin    admin123
&{dictionaryvariable_credentials}    username=Admin    password=admin123 

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{listvariable_credentials}[0]
    Input Password    id=txtPassword    &{dictionaryvariable_credentials}[password]
    Click Button    id=btnLogin
    
         


*** Test Cases ***
MyFirstTest
    [Tags]    TC01
    Log    HelloWorld....  

FirstSeleniumTest
    Set Tags    TC02
    Open Browser    https://google.com    chrome
    Input Text    name=q    sundeep Dommaraju
    Press Keys    name=q    ENTER
    # Click Button    name=btnK        
    # Close Browser
    
Loginseleniumtestcase
    [Tags]    TC03
    Open Browser    ${scalarvariable_url}    chrome
    Wait Until Element Is Visible    id=txtUsername    10S
    Input Text    id=txtUsername    @{listvariable_credentials}[0]
    Input Password    id=txtPassword    &{dictionaryvariable_credentials}[password]
    Click Button    id=btnLogin
    Click Element    id=welcome
    Set Browser Implicit Wait    5
    Click Element    link=Logout
    Log    This was executed by %{username} in %{os}
    
Kewordvalidationtestcase
   Open Browser    ${scalarvariable_url}    chrome
    Wait Until Element Is Visible    id=txtUsername    10S
    LoginKW
    Click Element    id=welcome
    Set Browser Implicit Wait    5
    Click Element    link=Logout
    Log    This was executed by %{username} in %{os}
    
Githubchecktestcase
        [Tags]    TC04
        Log    HelloWorld....  
    
                                