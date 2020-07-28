# Ruby on Rails 6 Controllers and Views
This is the repository for the LinkedIn Learning course Ruby on Rails 6 Controllers and Views. The full course is available from [LinkedIn Learning](LICOURSEURL).

[![Ruby on Rails 6: Controllers and Views](COURSEIMAGE)](LICOURSEURL)


## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter.
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `master` branch holds the final state of the code when in the course.

## Installing
1. To use these exercise files, you must have some software installed and configured. If you do not have it, the LinkedIn Learning course "Installing and Running Ruby on Rails 6" will walk you through it.
	- Ruby
	- Ruby on Rails
	- MySQL
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. If you have not already done so, create a MySQL database called `simple_cms_development` and set up a database user with permission to access it. Add the database user credentials to `config/database.yml`. Navigate to the root of the Rails application and run `bundle exec rails otl:import`. A script will run and walk you through the steps to import the tables and data you need to run the sample project in the exercise files.
