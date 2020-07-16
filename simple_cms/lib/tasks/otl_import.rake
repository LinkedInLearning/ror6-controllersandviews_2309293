# This rake task will help import the SQL database backup file included
# with the exercise files.
#
# If you want to make your database look exactly like mine at the
# start of a movie--and lose all of your current data in the process--
# then run this script.  It is especially useful if your data gets
# too far out of synch or if you are jumping around in the exercise files.
#
# This file should go in the lib/tasks folder of your Rails application.
# To use it, from the command line, navigate to the root of your Rails
# application and then run "rake otl:import" and enter the database
# information at each prompt.
namespace :otl do

  desc "Import RoR Essential Training SQL data."
  task :import do
    puts
    puts "-" * 60
    puts "Ruby on Rails Essential Training Import Task"
    puts
    puts "This task will help import the SQL database backup file included "
    puts "with the exercise files."
    puts
    puts "You must have already created a database before using this import."
    puts "Example: CREATE DATABASE simple_cms_development;"
    puts "         GRANT ALL PRIVILEGES ON simple_cms_development.* "
    puts "         TO 'rails_user'@'localhost' IDENTIFIED BY 'secretpassword';"
    puts "Refer to the sections on installing MySQL and configuring the "
    puts "the database if you need more help."
    puts
    puts "If you have any problems with this script the same import can "
    puts "also be run directly from the command line using:"
    puts "  mysql -u rails_user -p simple_cms_development < db/simple_cms_development.sql"
    puts "Then enter the correct MySQL password when prompted."
    puts "-" * 60
    puts
    puts "Importing the new database data will wipe out any existing database data."
    puts
    print "Proceed? (yes/no) > "
    response = STDIN.gets.chomp
    if !['y', 'yes'].include?(response.downcase)
      puts "Exiting import without any changes."
    else
      puts "-" * 60
      puts "\nYou can choose the default settings by just hitting return."
      print "Enter database hostname: (localhost) > "
      response = STDIN.gets.chomp
      host = response.blank? ? 'localhost' : response

      print "Enter database name: (simple_cms_development) > "
      response = STDIN.gets.chomp
      database = response.blank? ? 'simple_cms_development' : response

      print "Enter database username: (rails_user) > "
      response = STDIN.gets.chomp
      username = response.blank? ? 'rails_user' : response

      default_file = File.join("db", "simple_cms_development.sql")
      print "Enter import file path: (#{default_file}) > "
      response = STDIN.gets.chomp
      import_file = response.blank? ? default_file : response

      puts
      puts "Please enter the correct MySQL password for the user '#{username}'"
      puts "and hit return (for security, you will not see what you type)."
      import_command = "mysql -h #{host} -u #{username} -p #{database} < #{import_file}"
      verbose(false) do
        sh import_command do |ok, res|
          if ok
            puts "\nImport complete.\n\n"
          else
            puts "\nImport failed.\n\n"
          end
        end
      end
    end

  end

end
