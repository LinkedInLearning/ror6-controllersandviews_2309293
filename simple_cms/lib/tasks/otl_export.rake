namespace :otl do
  desc "Export RoR EssT SQL data"
  task :export => [:environment] do
    env_config = ENV["RAILS_ENV"] || 'development'
    db = ActiveRecord::Base.configurations[env_config]
    backup_file = Rails.root.join("db", "simple_cms_#{env_config}.sql")

    h = db['host'] || 'localhost'
    u = db['username']
    p = db['password']
    d = db['database']
    opt = "--quick --add-drop-table --skip-add-locks --skip-comments --skip-disable-keys --skip-lock-tables --skip-create-options --skip-tz-utc --skip-set-charset"
    f = Shellwords.escape(backup_file)
    cmd = "mysqldump -h #{h} -u #{u} --password=#{p} #{opt} #{d} > #{f}"

    verbose(false) do
      sh "rm -f #{backup_file}"
      sh cmd do |ok, _res|
        if ok
          puts "Exported: #{backup_file}"
        else
          puts "Export failed"
        end
      end
    end
  end

end
