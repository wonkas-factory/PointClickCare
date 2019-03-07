** Settings ***
Resource          ../resource.robot
Suite Teardown    Close All Browsers
Test Setup        Open and Set Browser Size    ${Andi}
Test Teardown     Close Browser 

*** Test Cases ***
Sign Up for Newsletter
    Home.Verify Title
    Home.Accept Cookies Prompt
    Home.Enter Subscritpion Email    ${Andi.EMAIL}
    Home.Click Subscribe
    Home.Verify Subscribed   
