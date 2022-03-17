
*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

User Can Access Website
    Go To   http://rental2.infotiv.net/webpage/html/gui/index.php
    Location Should Be   http://rental2.infotiv.net/webpage/html/gui/index.php

Start Date Should Be Current Date
    User Can Access Website
    ${current_date}  Get Current Date
    ${converted}  Convert Date	 ${current_date}   result_format=%Y-%m-%d
    ${infotiv_date}  Get Element Attribute   //*[@id="start"]   value
    Should Be Equal  ${converted}   ${infotiv_date}

Click Continue Button
    Click Button   id:continue  RETURN
    Location Should Be   http://rental2.infotiv.net/webpage/html/gui/showCars.php

User Log In
    User Can Access Website
    Wait Until Page Contains Element   id:email
    Input Text  id:email  g@live.se
    Input Text  id:password  111111
    Click Button   id:login
    Wait Until Page Contains Element  id:welcomePhrase


Header On My Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/myPage.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/myPage.php
    Page Should Contain Element  id:rightHeader

Header On About Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/about.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/about.php
    Page Should Contain Element  id:rightHeader

Header On Start Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/index.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/index.php
    Page Should Contain Element  id:rightHeader

Header On Show Cars Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/showCars.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/showCars.php
    Page Should Contain Element  id:rightHeader

Header On Confirm Book Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/confirmBook.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/confirmBook.php
    Page Should Contain Element  id:rightHeader


Header On Update Availability Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/updateAvailability.php?fullName=j
    Wait Until Page Contains Element  id:welcomePhrase
    Page Should Contain Element  id:rightHeader
