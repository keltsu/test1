*** Settings ***
Library         AppiumLibrary


*** Test Cases ***
One plus One equals Two
	
	# Start the calculator
	Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=8.1.0  deviceName=Nexus 6 API 27  app=${CURDIR}/calculator-release.apk  automationName=appium  appPackage=com.simplemobiletools.calculator  appActivity=.activities.SplashActivity
	
	# Perform actions
	Wait Until Element Is Visible  id=com.simplemobiletools.calculator:id/result
	Click Element  id=com.simplemobiletools.calculator:id/btn_1
	Click Element  id=com.simplemobiletools.calculator:id/btn_plus
	Click Element  id=com.simplemobiletools.calculator:id/btn_1 
	Click Element  id=com.simplemobiletools.calculator:id/btn_equals
	
	# Verify output
    Element Text Should Be  id=com.simplemobiletools.calculator:id/result  2
