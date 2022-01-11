# admin_app

Projekt administracyjny

## Project architecture

To be able to have some order in project and have separate 
places for dependent and independent code pieces, the folder structure is the following:
- configuration folder - is made for environmental variables, localization files, some static and global constant 
variables, application theme.
- core - folder related to core app functionality. Modules app cannot work properly without. For example, network services,
database services, navigation etc.
- features - folder made for the particular feature, each file in the feature (i.e. login) should not involve another 
feature codebase too much. 
- feature/login - as you can see, this particular login feature separated to screens and widgets folders. Which of them is
responsible for screens and small widgets which is being used in these screens regardless. Please, follow this feature 
structure when you are creating a new one.
- widgets - folder which is made for global widgets, which are being user through the whole application. It could be text
fields, buttons and so on. Shortly, widgets which are used in many features and could be customized for these features'
 needs.
 
 # Good luck and may the force be with us!