*** Settings ***

Library                           SeleniumLibrary


*** Test Cases ***
# MyFirstTest
                                  # Log                                                                         Hello world...


LoginSomkeTest
                                  # use of scalar variable
                                  Open Browser                                                                  ${URL}                                             ${browser}
                                  Set Selenium Implicit Wait                                                    5

                                  ChangeLanguageEnglishKW
                                  Set Selenium Implicit Wait                                                    5

                                  # # use of list variable

                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            @{CREDENTIALS}[0]
                                  # Cover Element                                                               xpath=//input[@formcontrolname='email']
                                  # Clear Element Text                                                          xpath=//input[@formcontrolname='email']
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            @{CREDENTIALS}[1]
                                  # Clear Element Text                                                          xpath=//input[@formcontrolname='email']
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            @{CREDENTIALS}[2]
                                  # Clear Element Text                                                          xpath=//input[@formcontrolname='email']
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            @{CREDENTIALS}[3]
                                  # #Clear Element Text                                                         xpath=//input[@formcontrolname='email']

                                  # # use of dictionary variable
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            &{LOGINDATA}[email1]
                                  # Clear Element Text                                                          xpath=//input[@formcontrolname='email']
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            &{LOGINDATA}[email2]
                                  # Clear Element Text                                                          xpath=//input[@formcontrolname='email']
                                  # Input Text                                                                  xpath=//input[@formcontrolname='email']            &{LOGINDATA}[email3]
                                  # #Clear Element Text                                                         xpath=//input[@formcontrolname='email']

                                  # # use of environment variable
                                  # Log                                                                         THIS TEST IES EXECUTED ON %{username} and %{OS}

                                  #caliing user built keyword
                                  EnterEmailPasswordAndCapcthaKW
                                  ClickSubmitOnLogin



*** Variable ***
${URL}                            http://bb-v2.c64f.com
${BROWSER}                        chrome

@{CREDENTIALS}                    abc@abc.com                                                                   cde@abc.com                                        caca@clc.com                     sdak@abc.com

&{LOGINDATA}                      email1=fff@ff.com                                                             email2=ggg@ggg.com                                 email3=hhh@hh.com


*** Keyword ***
ChangeLanguageEnglishKW
                                  # xpath=//app-login-top-navbar/div/div/div/div[2]/div/div/button[2]/span/i
                                  Cover Element                                                                 xpath=//i[contains(text(),'')]
                                  Click Element                                                                 xpath=//i[contains(text(),'')]
                                  Cover Element                                                                 xpath=//span[contains(text(),'English')]
                                  Click Element                                                                 xpath=//span[contains(text(),'English')]

EnterEmailPasswordAndCapcthaKW
                                  Cover Element                                                                 xpath=//input[@formcontrolname='email']
                                  Clear Element Text                                                            xpath=//input[@formcontrolname='email']
                                  Input Text                                                                    xpath=//input[@formcontrolname='email']            karandeep.singh@broctagon.com
                                  Cover Element                                                                 xpath=//input[@formcontrolname='password']
                                  Input Text                                                                    xpath=//input[@formcontrolname='password']         Test12345
                                  Cover Element                                                                 xpath=//input[@formcontrolname='captcha']
                                  Input Text                                                                    xpath=//input[@formcontrolname='captcha']          abdada

ClickSubmitOnLogin
                                  Cover Element                                                                 xpath=//button[@type='submit']
                                  Click Button                                                                  xpath=//button[@type='submit']

LaunchPageAssertions

                                  Cover Element                                                                 locator
                                  Page Should Contain Image                                                     locator
