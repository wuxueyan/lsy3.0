*** Keywords ***
选择女
    [Documentation]    ${value}=radio-male or radio-female
    select radio button    sex    radio-male

选择男
    select radio button    sex    radio-female
