*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#ForLoop1
    #FOR     ${i}    IN RANGE    2   7
    #log to console  ${i}
    #END
#forloop2
   # @{items}    create list  1  2   3   4   5   6
   # FOR     ${i}    IN  @{items}
   # log to console  ${i}
  #  END
#for loop 3
    #FOR     ${i}    IN      Robert Rama
    #log to console  ${i}
    #END
#for loop 4
 #   @{items}    create list  john abc   xyz
 #   FOR     ${i}    IN  @{items}
#    log to console  ${i}
#    END

for loop 5
    @{items}    create list  1   2   3   4   5
    FOR     ${i}    IN  @{items}
    log to console  ${i}
    exit for loop if  ${i}==4
    END

