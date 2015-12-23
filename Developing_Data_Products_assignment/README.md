# Overview
This shiny application shows us which hospital is the best and worst in each
state, when it comes to the 30-day mortality rates. 
The data for this application come from the Hospital Compare web site (http://hospitalcompare.hhs.gov) run by the U.S. Department of Health and Human Services. They can provide the information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S.

# How to use
You can specify some parameters in the left side panel. The parameters you use
are as follows:

- Outcome name  
The outcomes for the 30-day mortality rates. You can select one out of 3 
diseases: "heart attack", "heart failure", and "pneumonia".

- Rank of the hospitals in each state  
You can select the rank of the hospitals with these radio buttons.

 1. best  
 The hospitals which have the **best** 30-day survival rates in each state are displayed in the right panel.
   
 1. worst  
 The hospitals which have the **worst** 30-day survival rates in each state are displayed in the right panel.
   
 1. any number  
 This button is used when you specify the rank you want to see. The number is specified in the textbox below.
   
- Number  
   This textbox is only used when you select "any number" in the ratio buttons
   just displayed above. Default value is 3.

Every time you manipulate these widgets, the results are reflected at once.

## Notes
This function was derived from the R Programming assignment 3. I wrote the
function and adjusted to this assignment in order to see if the reactive
programming in shiny could work correctly.

