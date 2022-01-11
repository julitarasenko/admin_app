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
 
 ## Branching
 There are 3 types of branches:
 - master - main stable version of the app
 - develop - most latest app version
 - feature/... - you current work on some kind of feature (should be review before merge into develop)
 
 To have normal flow without conflicts and proper code review we will stand by feature-based branching strategy.
 What does it mean? You have 'develop' branch, which is the latest and actual branch. When you are goind to make
 a new feature, you should get the latest version of 'develop' locally, after that checkout a new branch named
 'feature/your_feature_name'.
 
 After you've finished your work on the feature - you are creating pull request via GitHub UI and this PR should
 be review by team members to exclude some possible syntax errors or "wheel invention". After approve
 this PR is being merged to develop and feature branch is deleted.
 
 # Good luck and may the force be with us!
 