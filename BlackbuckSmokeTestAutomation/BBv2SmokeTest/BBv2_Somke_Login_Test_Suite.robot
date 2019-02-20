*** Settings ***

Library                           SeleniumLibrary

Default Tags    Smoke suite

*** Test Cases ***


LoginSomkeTest
                                    [Tags]    Login user smoke test and launch page assertions

                                  # use of scalar variable
                                  Open Browser                                                                  ${URL}                                                                            ${browser}
                                  Set Selenium Implicit Wait                                                    5
                                  Maximize Browser Window
                                  ChangeLanguageEnglishKW
                                  Set Selenium Implicit Wait                                                    5
                                  EnterEmailPasswordAndCapcthaKW
                                  ClickSubmitOnLoginKW
                                  LaunchPageAssertionsKW
                                  Set Selenium Implicit Wait    10
DashboardTest                     
                                    [Tags]    Dashboard page assertions            
                                  DashboardPageAssertionKW


ProfileOverviewTest
                                  NavigateProfilePageKW
                                  ProfilePageOverviewAssertionsKW
      
ProfileLeverageTest

                                   ProfilePageLeverageAssertionKW


ProfileRankTest
                                    ProfilePageRankAssertionKW
ProfilepasswordTest
                                    ProfilePagePasswordAssertionKW
                                    
ProfileUplodDocumentTest
    
                                    ProfilePageUploadDocumentAssertionKW
ProfileTradePlatformTest
                                    ProfilePageTradePlatformKW
ProfileCryptoWalletTest
                                    ProfilePageCryptoWalletKW


*** Variable ***
${URL}                            http://bb-v2.c64f.com
${BROWSER}                        chrome

@{CREDENTIALS}                    abc@abc.com                                                                   cde@abc.com                                                                       caca@clc.com                                              sdak@abc.com

&{LOGINDATA}                      email1=fff@ff.com                                                             email2=ggg@ggg.com                                                                email3=hhh@hh.com


*** Keyword ***
ChangeLanguageEnglishKW
                                  # xpath=//app-login-top-navbar/div/div/div/div[2]/div/div/button[2]/span/i
                                  #
                                  Click Element                                                                 xpath=//i[contains(text(),'')]


                                  Click Element                                                                 xpath=//span[contains(text(),'English')]

EnterEmailPasswordAndCapcthaKW

                                  Clear Element Text                                                            xpath=//input[@formcontrolname='email']
                                  Input Text                                                                    xpath=//input[@formcontrolname='email']                                           karandeep.singh@broctagon.com


                                  Input Text                                                                    xpath=//input[@formcontrolname='password']                                        Test12345



                                  Input Text                                                                    xpath=//input[@formcontrolname='captcha']                                         abdada


ClickSubmitOnLoginKW

                                  Click Button                                                                  xpath=//button[@type='submit']


LaunchPageAssertionsKW


                                  Page Should Contain Image                                                     //img[@src='../../assets/image/login-logo.png']

                                  Page Should Contain Image                                                     //img[@class='ng-star-inserted']


                                  Element Text Should Be                                                        //h1[@_ngcontent-c6]                                                              Take control of your financial portfolio.
                                  Element Text Should Be                                                        //p[contains(text(),'Manage all your trading activities with absolute ease.')]    Manage all your trading activities with absolute ease.
DashboardPageAssertionKW
                                    
                                    Page Should Contain Image                                                    //img[@src='../../../assets/image/menu-logo.png']
                                    Element Text Should Be                                                      //span[contains(text(),'13472673')]                                                13472673
                                    Element Should Be Visible                                                   //i[contains(text(),'fullscreen')]    FullScreenIcon Is Visible
                                    Set Browser Implicit Wait    10
                                    #Element Should Be Visible    //i[contains(text(),'')]    Langauge Icon Visible
                                    
                                    Set Browser Implicit Wait    10
                                    
                                    Element Should Be Visible   //div[@class='user-prof ng-star-inserted']     Profile Icon visible
                                    Element Text Should be    //h1[contains(text(),'Welcome, ')]          Welcome, Karan  
                                    Element Text Should Be     //h1[contains(text(),'Welcome, ')]/span    Karan    
                                    Element Text Should Be     //strong[contains(text(),'Last Sign In')]    Last Sign In
                                    #Element Text Should Be     //div[@class='search_title']     Posted News                                    
                                    #Total balance
                                    Element Text Should Be     //app-member-dashboard/div[2]/div[3]/ul/li[1]/mat-card/mat-card-content/div    0
                                   
                                    #Daily Commission
                                    Element Text Should Be     //app-member-dashboard/div[2]/div[3]/ul/li[2]/mat-card/mat-card-content/div    0    
                                    
                                    #Numbers of traders
                                    Element Text Should Be     //app-member-dashboard/div[2]/div[3]/ul/li[3]/mat-card/mat-card-content/div    0    
                                           
                                     #Token summary                         
                                    Element Text Should Be    //app-member-dashboard/div[4]/div/div/div/div/div[1]/div/div/div[2]/h3    0 Tokens    
                                    Element Text Should Be    //app-member-dashboard/div[4]/div/div/div/div/div[2]/div/div/div[2]/h3    0 Tokens
                                    Element Text Should Be    //app-member-dashboard/div[4]/div/div/div/div/div[3]/div/div/div[2]/h3    0 Tokens
                                    Element Text Should Be    //app-member-dashboard/div[4]/div/div/div/div/div[4]/div/div/div[2]/h3    0 Tokens
                                     
                                     #promotion points
                                     Set Browser Implicit Wait    10
                                     Element Text Should Be   //app-member-dashboard/div[5]/div/div/div/div/div[1]/div/div/div[2]    0.0 PP
                                     Set Browser Implicit Wait    10
                                    Element Text Should Be   //app-member-dashboard/div[5]/div/div/div/div/div[2]/div/div/div[2]    0
                                     Set Browser Implicit Wait    10
                                    Element Text Should Be   //app-member-dashboard/div[5]/div/div/div/div/div[3]/div/div/div[2]    0.0 PP
                                    Set Browser Implicit Wait    10
                                    Element Text Should Be   //app-member-dashboard/div[5]/div/div/div/div/div[4]/div/div/div[2]    0.0 USD
                                    Set Browser Implicit Wait    10
                                    Element Should Not Be Visible    //div[contains(text(),'You are not authorized to view this page.')]    You are not authorized to view this page.
                                    
                                    
                                    
NavigateProfilePageKW
                                    Click Element    //*[@id="mat-expansion-panel-header-0"]/span[1]/mat-panel-title/span/a 
                                    Click Element    //li/a[@href="/member/overview"]          
ProfilePageOverviewAssertionsKW


                                    Element Text Should Be    //h3[@class='page-main-heading']    Profile
                                    Element Text Should Be    //a[contains(text(),' Overview ')]     Overview
                                    Set Browser Implicit Wait    5
                                    Element Attribute Value Should Be    //a[contains(text(),' Overview ')]    aria-current    true
                                    Page Should Contain Image    //img[@ src='./assets/image/user.png']
                                    Element Text Should Be    //h2[contains(text(),'Karan Karan')]    KARAN KARAN   
                                    Element Text Should Be    //label[contains(text(),'Karan Karan')]    Karan Karan
                                    Element Text Should Be    //label[contains(text(),'karandeep.singh@broctagon.com')]     karandeep.singh@broctagon.com      
                                    Element Text Should Be    //label[contains(text(),'January 5, 1992')]    January 5, 1992              
                                    Element Text Should Be    //label[contains(text(),'Trader')]    Trader
                                  Element Text Should Be    //label[contains(text(),'Address')]    Address
                                   Element Text Should Be    //label[contains(text(),'Aland Islands')]    Aland Islands
                                    Element Text Should Be    //label[contains(text(),'island')]   island    
                                    Element Text Should Be    //label[contains(text(),'island')]    island
                                    Element Text Should Be    //label[contains(text(),'1:100')]    1:100
                                    Element Text Should Be    //label[contains(text(),'Classic')]    Classic                    
                                    
ProfilePageLeverageAssertionKW                                   
                                    
                                    Element Text Should Be    //a[contains(text(),' Leverage ')]      Leverage 
                                    Click Element    //a[contains(text(),' Leverage ')]    
                                    Set Browser Implicit Wait    5
                                    Element Attribute Value Should Be    //a[contains(text(),' Leverage ')]    aria-current    true                                  
                                    
                                    Element Text Should Be    //label[contains(text(),'Leverage')]    LEVERAGE
                                    Element Text Should Be    //h5[contains(text(),'1:100')]    1:100
                                    
                                    # Click Element    //span[@class='edit']    
                                     
                                    # Set Browser Implicit Wait    10
                                    # Set Focus To Element    //mat-dialog-container[@role='dialog']
                                    # Element Text Should Be    //span[contains(text(),'Leverage Request')]    Leverage Request    
                                    # Element Should Be Visible    //label[contains(text(),' 13472673')]            
                                    # Element Should Be Visible    //mat-dialog-container[@role='dialog']//label[contains(text(),' 1:100')]   
                                    
                                    #Click Element    //div[@class='mat-form-field-infix']    
ProfilePageRankAssertionKW
                                Set Browser Implicit Wait    5
                                Element Text Should Be    //div/a[contains(text(),'Rank')]     Rank 
                                    Click Element    //div/a[contains(text(),'Rank')]   
                                    Set Browser Implicit Wait    5
                                    Element Attribute Value Should Be    //div/a[contains(text(),'Rank')]    aria-current    true                                  
                                    
                                    Element Text Should Be     //label[contains(text(),'Rank')]    RANK
                                    
ProfilePagePasswordAssertionKW
                            Set Browser Implicit Wait    5
                            Element Text Should Be    //div/a[contains(text(),' Password ')]     Password 
                                    Click Element    //div/a[contains(text(),' Password ')]  
                                    Set Browser Implicit Wait    5
                                 Element Attribute Value Should Be    //div/a[contains(text(),' Password ')]    aria-current    true 
                                 Element Text Should Be  //h4[contains(text(),'MT4 Password')]    MT4 Password                     
                                 Element Text Should Be  //h4[contains(text(),'CRM Password')]    CRM Password             
ProfilePageUploadDocumentAssertionKW                        
                          Set Browser Implicit Wait    5
                           Element Text Should Be    //div/a[contains(text(),' Upload Document ')]      Upload Document  
                                    Click Element    //div/a[contains(text(),' Upload Document ')]  
                                    Set Browser Implicit Wait    5
                                 Element Attribute Value Should Be    //div/a[contains(text(),' Upload Document ')]    aria-current    true          
                                    
                                    
ProfilePageTradePlatformKW           
                                    Set Browser Implicit Wait    5                        
                                   Element Text Should Be    //div/a[contains(text(),' Trade Platform ')]       Trade Platform   
                                    Click Element    //div/a[contains(text(),' Trade Platform ')]  
                                    Set Browser Implicit Wait    5
                                 Element Attribute Value Should Be    //div/a[contains(text(),' Trade Platform ')]    aria-current    true          
                                     
ProfilePageCryptoWalletKW                                  
                                  Set Browser Implicit Wait    5
                                  Element Text Should Be    //div/a[contains(text(),' Crypto Wallet ')]        Crypto Wallet    
                                    Click Element    //div/a[contains(text(),' Crypto Wallet ')]  
                                    Set Browser Implicit Wait    5
                                 Element Attribute Value Should Be    //div/a[contains(text(),' Crypto Wallet ')]    aria-current    true          
                                       
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    