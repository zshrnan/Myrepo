*** Settings ***
Documentation             This file contains all test cases related with MCPTT-12340 .
Resource                  ../../../procedures/slnc/android/LoginProcedures.robot
Resource                  ../../../procedures/slnc/android/CloseProcedures.robot
Resource                  ../../../procedures/slnc/android/NavigationBarProcedures.robot
Resource                  ../../../procedures/slnc/android/SettingsProcedures.robot
Resource                  ../../../procedures/slnc/android/TalkerProcedures.robot
Resource                  ../../../procedures/slnc/android/MessageProcedures.robot
Resource                  ../../../procedures/slnc/android/EulaProcedures.robot
Resource                  ../../../procedures/slnc/android/SendFeedBackProcedures.robot
Resource                  ../../../procedures/slnc/android/HelpProcedures.robot
Resource                  ../../../procedures/slnc/android/BatteryProcedures.robot
Resource                  ../../../procedures/slnc/android/ForceCloseProcedures.robot
Resource                  ../../../procedures/slnc/android/OnBoardingProcedures.robot
Resource                  ../../../procedures/slnc/android/BatteryProcedures.robot
Resource                  ../../../procedures/slnc/android/SonimKeyProcedures.robot
Resource                  ../../../procedures/slnc/android/GroupProcedures.robot
Resource                  ../../../procedures/slnc/android/FooterProcedures.robot
Resource                  ../../setup.robot
Resource                  ../../common.robot
Resource                  ../../../procedures/slnc/android/serverProfile.robot
Resource                  ../../../procedures/slnc/android/ConnectivityProcedures.robot
Test Teardown             setup.Test Teardown

*** Test Cases ***
MCPTT-21594 Stuck with a spinner on the UI after reconnection
    [Documentation]         This test case checks application works normal after LTE reconnection      
    [Tags]      regression
    ${selectedPortSystem}=    System Port Selection    @{systemPort}
    setup.Open New Onboarding Application    android    ${port}    ${device1}    ${selectedPortSystem}
    Accept Sonim Key SLNC
    Set Default Connectivity
    Select Server
    Allow Battery Optimization SLNC
    OnBoarding Login With The Given User     ${user}
    Verify Assigned Hardware Button
    Close Help Guide SLNC 
    Verify Auto Join Group Connection Status   ${DefaultGroupA}
    Check LTE Off  ${device1}
    Check LTE On  ${device1}
    Verify Auto Join Group Connection Status   ${DefaultGroupA}
    Long Press Group  ${DefaultGroupA}
    Click PTT Button SLNC   5   ${device1}
    Verify Channel Status SLNC   You talked