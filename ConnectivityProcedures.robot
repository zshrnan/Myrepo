*** Settings ***
Documentation       This Procedures File contains logic flow about
...                 Login Screen.
Library             BuiltIn
Library             AppiumLibrary

Resource    ../../../pages/slnc/android/Connectivity.robot

*** Keywords ***
Check Wi-Fi On
    [Arguments]    ${devicename}
    Verify Wi-Fi On    ${devicename}

Check Wi-Fi Off
    [Arguments]    ${devicename}
    Verify Wi-Fi Off    ${devicename}

Check LTE On
    [Arguments]    ${devicename}
    Verify LTE On    ${devicename}

Check LTE Off
    [Arguments]    ${devicename}
    Verify LTE Off    ${devicename}

