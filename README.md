# T1A2 - Terminal Application Assessment
### Statement of Purpose and Scope
The Dream Dog terminal application was developed in order to aid future dog owners with selection of a suitable breed by matching desired canine attributes with pedigree dog breeds. 
With so many breeds, and crosses of those breeds, choosing a suitable dog breed for an owners lifestyle can be a complex, albeit fun, research mission.
The development of an application to match characteristics desired by an owner, to a breed which embodies such qualities can help to refine the decision making process when looking for a puppy, or even an older dog. The selection of an appropriate breed for an owners lifestyle may be important in keeping dogs in their homes long term, and avoid pressures on rescue organisations and pound facilities who take on board thousands of dogs annually who are not a good fit for their homes. 
Target audience for the Dream Dog application are individuals, couples or families who are are in the midst of, or about to embark on, a journey to research and find the right dog breed to fit their particular needs and lifestyle. 
Members of the target audience will get the most out of the features of the Dream Dog application by first accepting to participate in the application with a simple 'yes' or 'no' response in the terminal. The application puts forth suggestions pertaining to preferences ear type, activity levels and coat type. Users select the attribute most suitable to them, and are then prompted with the next attribute selection. 
The selections made by the user are printed on the screen after the selection process is complete.
Where the attributes selected by the user match to a breed within Dream Dog, the breed match is displayed. In this case the result is written to a text file for the user to refer back to.
In the case where no unique match can be sought, an alternate suggestion or breed/s is printed on screen. These suggested breeds match with two of the users selected attributes only.
Once a breed match, or a suggested alternative are printed on screen, the application terminates. 


### Features
- Opt in feature
At the launch of the application, uses are prompted to continue the application with a "Y", or exit with an input of "N". These inputs are handled by an 'if' statement which determines whether the application will continue on to the next section of code, with a "Y" input. An "N" input will put a string reply to user, and terminate the application. Where the input is not accounted for in the if statement, it is handled with an 'else', whereby all other input is met with a string prompting the user to input a valid response. 

- Menu selection
Three menu selections are presented to the user in the Dream Dog application. Through use of the tty-prompt gem, selections are limited to the displayed options, reducing the chance of erroneous input from the user. User input is assigned into variables which are utilised as outputs on screen for the user. These variables are also run through a method to be matched against instances of the class Breed, to create a breed match. 

- Recommendation Engine
To determine a breed match, Dream Dog application uses a method to loop over arrays of class instances, to compare all user inputs with predetermined arrays of attributes within class instances of 'Breed'. Where a match between arrays is true, then the output of the method is a breed name. This output is saved as a variable to be utilised outside of the method and written to a file. 
Where the above method returns nil, then a second method is implemented. This method, semi_match, runs a similar loop to the breed_choice method. semi_match only matches with two of the user inputs, activity level and coat type. This method also pushes outputs of breed into an array of suggested breeds, which is used in a string join as an output to the user. 

### User Interaction and Experience
- How will the user find out how to interact with / use each feature?
The user is guided through the process by way of strings of descriptive and simple instructions put to the terminal. e.g. "Would you like some help to find your future bestie? (Y/N)". In this example the appropriate inputs for use within the impending if statement are explicitly listed. In the event that an invalid input is received, the user is prompted again to enter a valid input.
For menu select features, the use of the tty-prompt gem displays options for input, and eliminates the submission of erroneous inputs.
- How will the user interact with / use each feature?
Users are to enter alphanumeric input, and also navigate menu selections by way of up and down arrows, via the keypad on their machine. All inputs are submitted via the enter or return keys.  
- How will errors be handled by the application and displayed to the user?
The bulk of the code for Dream Dog application is written in such a way as to reduce, and hopefully eliminate, the need for error handling. Errors potentially associated with writing breed selection outcome to file are handled via the begin and rescue exceptions. 

### Control Flow Diagram
![flowchart for Dream Dog application](https://github.com/tea-jean/assignment1/blob/master/flowchart.png)

### Implementation Plan
![implementation plan](https://github.com/tea-jean/assignment1/blob/master/implementationplan.pdf)