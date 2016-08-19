# Simple Text Localization in Swift

1. Create a new project
2. Embed view controller in a navigation controller
3. Add a couple labels to the view controller
4. Wire the labels up to the view controller
5. Ensure “Use Base Internationalization” is selected (Project Navigator -> Project -> Info)
6. Add a .strings file (CMD+n/File -> New… -> File -> iOS Resource -> Strings File. Localizable and save to project)
7. Add values for the navigation bar title and two labels to the strings file (paying special attention to the syntax)
8. Return to the view controller and set the text in the navigation bar and two labels to the values from the Localizable.strings file
9. Add another language to the project (Project Navigator -> Project -> Info -> Localizations -> + and select desired language from options)
10. Add language-specific Localizable.strings file. If the Main and LaunchScreen storyboards are going to be the same across all app versions, ensure they are deselected in ensuing menu then select “Finish”. Confirm that Localizable.strings under Project Navigator now has two files underneath (Base and German, in our case).
11. Edit the Localizable.strings (German) file
12. Edit the scheme and select German as the language
13. Run the app

Extra Credit: Edit the scheme to make language selection easier



3. Configure Localizable.strings for Localization (Select .strings file in Project Navigator -> File Inspector. Select “Localize…” under Localization. Select Base from options.
4. 