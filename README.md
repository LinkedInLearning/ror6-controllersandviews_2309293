# Ruby on Rails 6: Controllers and Views
This is the repository for the LinkedIn Learning course Ruby on Rails 6: Controllers and Views. The full course is available from [LinkedIn Learning][lil-course-url].

![Ruby on Rails 6: Controllers and Views][lil-thumbnail-url] 
Build smarter controllers and better looking webpages with Ruby on Rails. This course teaches developers how to better implement controllers and views in Ruby on Rails 6. This is a foundational course to teach the fundamentals and best practices around these common programming concepts. Learn how to leverage the most useful features of controllers, including maintaining state with cookie and session data, displaying messages, organizing code, and using filters for routine tasks. Next, discover how to render different types of data, how to use view layouts, and how to incorporate assets such as images, style sheets, and JavaScript. Finally, find out how to work more efficiently with Ruby helper methods, which make common tasks like formatting text and numbers, date and time calculations, and outputting form fields easier.

## Learning objectives
- Storing data in cookies and sessions
- Using the flash hash for messages
- Using filters to call methods automatically
- Rendering views
- Using layouts for shared templates
- Incorporating images, style sheets, and JavaScript
- Using images as CSS backgrounds
- Preventing CSRF and XSS exploits with built-in tools
- Working faster with built-in and custom helpers

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop-up menu in GitHub to switch to a specific branch and take a look at the course at that stage, or you can add "/tree/BRANCH_NAME" to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is CHAPTER#_MOVIE#. As an example, the branch named 02_03 corresponds to the second chapter and the third video in that chapter.
Some branches will have a beginning and an end state. These are marked with the letters "b" for "beginning" and "e" for "end." The "b" branch contains the code as it is at the beginning of the video. The `e` branch contains the code as it is at the end of the movie. The master branch holds the final state of the code when in the video.

## Installing
1. To use these exercise files, you must have some software installed and configured. If you do not have it, the LinkedIn Learning course "Installing and Running Ruby on Rails 6" will walk you through it.
	- Ruby
	- Ruby on Rails
	- MySQL
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like Sourcetree.
3. If you have not already done so, create a MySQL database called "simple_cms_development" and set up a database user with permission to access it. Add the database user credentials to "config/database.yml". Navigate to the root of the Rails application and run "bundle exec rails otl:import". A script will run and walk you through the steps to import the tables and data you need to run the sample project in the exercise files.

### Instructor

**Kevin Skoglund**

_Founder of NovaFabrica_

Check out some of my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/kevin-skoglund?u=104).

[lil-course-url]: https://www.linkedin.com/learning/ruby-on-rails-6-controllers-and-views
[lil-thumbnail-url]: https://cdn.lynda.com/course/2309293/2309293-1599151417301-16x9.jpg
