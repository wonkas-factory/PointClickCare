*** Keywords ***
Verify Title
    ${title}=    Get Title
    Should Be Equal    PointClickCare | #1 Cloud-Based EHR Software for Long-Term Care    ${title}

Accept Cookies Prompt
    Wait Until Page Contains Element    //a[@class='cc-btn cc-dismiss']
    Click Element    //a[@class='cc-btn cc-dismiss']

Enter Subscritpion Email
    [Arguments]    ${email}
    Wait Until Page Contains Element    id=Email
    Input Text    id=Email    ${email}
    
Click Subscribe
    Wait Until Page Contains Element    //button[contains(.,'SUBSCRIBE')]
    Click Button    SUBSCRIBE

Verify Subscribed   
    Wait Until Page Contains Element    //div/p/strong[contains(.,'Thanks for subscribing!')]
