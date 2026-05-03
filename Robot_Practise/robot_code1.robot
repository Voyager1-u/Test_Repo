*** Settings ***
Library  robot_code1.py


*** Test Cases ***
#json data read
#    @{data}=   Read Json
#    FOR   ${item}   IN   @{data}
#        Log   name : ${item["name"]}
#        Log   age : ${item["age"]}
#        Log   profession : ${item["profession"]}
#        Log   location : ${item["location"]}
#    END


#Check User1 Status
#    ${status}=    Get User Status    user.json    user1
#    Log    ${status}
#
#Check User2 Status
#    ${status}=    Get User Status    user.json    user2
#    Log    ${status}

Divide Test
    ${result}=      divide  10  0
    Log     ${result}
    Log To Console      ${result}

#Data-Driven Testing
#*** Settings ***
#Test Template    Add Numbers
#
#*** Test Cases ***
#Test1   2   3
#Test2    5    7
#Test3    10   20
#
#*** Keywords ***
#Add Numbers
#    [Arguments]    ${a}    ${b}
#    ${result}=    Evaluate    ${a} + ${b}
#    Log    ${result}

#API Testing
#Get API Test
#    Create Session    mysession    https://jsonplaceholder.typicode.com
#    ${response}=    GET On Session    mysession    /posts/1
#    Should Be Equal As Integers    ${response.status_code}    200
#    Log    ${response.json()}

*** Keywords ***
#Validate User Status
#    [Arguments]    ${file}   ${user}
#
#    ${status}=    Get User Status    ${file}    ${user}
#
#    IF    '${status}' == 'active'
#        Log    User is Active
#    ELSE
#        Log    User is Inactive
#    END




