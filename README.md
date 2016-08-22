# Simple Text Localization in Swift
This is a basic project in Swift that incorporates the localization of text. Follow the steps outlined below to recreate the project or download for yourself.

Initial Setup
======
1. Create a new Swift project (I called mine LocalizationTest)
A single view application is sufficient.
2. Embed the default view controller in a navigation controller
This isn’t necessary, I just do this to demonstrate the localization of the title in a navigation bar.
3. Add a couple labels to the view controller
I set one label as a “title” and the other as a “subtitle”.
4. Add the appropriate constraints.
5. Wire the labels up to the view controller
Create IBOutlets in the ViewController and connect to each respective label.

Localization
======
1. Ensure “Use Base Internationalization” is selected.
To do this, go to Project Navigator, highlight the top-level folder and select the PROJECT. Then, within the “Info” panel, confirm that “Use Base Internationalization” (at the bottom of the info screen) is selected. This is typically selected by default but it is always a good idea to confirm.
2. Add a Localizable.strings file
Under iOS in the new file menu (CMD+n or File -> New… -> File…), select “Resource” then “Strings File”. I named mine “Localizable” and added to the project folder.
3. Edit the Localizable.strings file.
Add values for the navigation bar title (i.e. NAV_BAR_TITLE) and two labels (LABEL_TITLE and LABEL_SUBTITLE) to the Localizable.strings file. NOTE: You *must* add a semi-colon at the end of each line or you will get an error stating that Xcode can’t read the file because it is not formatted correctly.
4. Return to the view controller and set the text in the navigation bar and two labels to the values from the Localizable.strings file.
You retrieve the Localizable.strings values using the following syntax:
```swift
NSLocalizedString("NAV_BAR_TITLE", comment: "Title in Navigation Bar")
labelTitle.text = NSLocalizedString("LABEL_TITLE", comment: "Title Label")
labelSubtitle.text = NSLocalizedString("LABEL_SUBTITLE", comment: "Subtitle Label")
```
I would run the app at this point to confirm that the values are being retrieved and added to the nav bar and labels.

5. Add another language to the project.
To do this, return to the project’s info screen (Project Navigator -> Project -> Info) and select the plus (+) sign under Localizations. Choose the desired language from the available options. I selected German.
6. Add language-specific Localizable.strings file. 
Go back to the Project Navigator and highlight your Localizable.strings file. Then in the File Inspector, select “Localize…”. In the subsequent window, ensure that Localizable.strings is highlighted and select “Finish” (Since we’re just adding the localizable strings, you can deselect Main.storyboard and LaunchScreen.storyboard. If your app was going to have a different launch screen and layout based on region then you can add those to your project). Back under Project Navigator, confirm that Localizable.strings now has two files underneath (Base and German, in our case).
7. Edit the Localizable.strings (German) file. 
For each of the values defined in the Localizable.strings file add the German equivalent. For example, NAV_BAR_TITLE = “Lokalisierung”;

See Your Work In Action
======
1. Run the app.
The text should appear in the Base language (in our case, English).
2. Change the Language.To change the language, you need to edit the scheme. Click on the scheme (to the right of the Run and Stop buttons at the top of the Xcode window) and choose “Edit Scheme…” from the options in the drop down. Choose “Run” from the options on the left-hand side. Now, in the main window, choose options and in the drop down under “Application Language” choose “German” and click “Close”
3. Run the app.
The navigation bar and labels should now be displaying the German text you entered in the “Localizable.strings (German)” file.

###Congrats! You did it!

This little project was completed to the smooth stylings of Dona Onete.