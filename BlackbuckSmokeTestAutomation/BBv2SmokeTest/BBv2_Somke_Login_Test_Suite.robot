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
                                    