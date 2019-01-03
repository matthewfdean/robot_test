*** Settings ***
Library           Selenium2Library
Library           src/CustomSelenium.py

Test Teardown    Close All Browsers

*** Test Cases ***
Google Devops And Find Stackoverflow
    Open Browser To Bing
    Search For Stackoverflow
    Result Should Contain Stackoverflow

*** Keywords ***
Open Browser To Bing
    ${chrome_options}=      Get Chrome Options     True
    #Open Browser    https://www.bing.com    browser=chrome
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    url=https://www.bing.com
    Set Window Size    1920    1080
    Bing Should Be Open

Search For Stackoverflow
    Input Text    id=sb_form_q    stackoverflow
    Press Key     id=sb_form_q    \\13

Result Should Contain Stackoverflow
    Wait Until Page Contains    stackoverflow.com    10 s

Bing Should Be Open
    Location Should Contain    www.bing.com