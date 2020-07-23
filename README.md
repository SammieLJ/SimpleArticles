# Simple Articles - ROR web application

I was reading blog on Medium, Simple Blog Application for beginner, written in Ruby on Rails. :)
https://medium.com/@1sherlynn/ruby-on-rails-beginner-adventures-simple-blog-application-6dffd6dcb11a

Well, I started to read and started coding. I heaven't coded in Ruby and Rails framework for ages. I wanted to know how are things in ROR ecosystem these days.

Also added Boostrap library (into my ROR app) as this Mediun blog described:
https://medium.com/@biancapower/how-to-add-bootstrap-4-to-a-rails-5-app-650118459a1e

Then Update method was still "broken". It didn't update. Double checked on Medium blog (first link) if I missed something.

Then after few googling result, I have found out, that author Sherlynn Tan actually copied Blog example code from official ROR page and modified it a little bit.
https://guides.rubyonrails.org/getting_started.html

Now, I finally managed to fix my Update method and Bootstrap works.

## Prerequisites

On your system you should have:
- Ruby v2.7 (check command: $ ruby -v)
- SQLite3 (check command: $ sqlite3 --version)
- Installed Node.js and Yarn (check command: $ node --version and $ yarn -v)
- Rails v6.0 (check command: $ rails --version)


## Running application

These are simple steps, copy from github, configure and run:
1. Go to directory, where you store various source codes or simply go to your Documents folder. Using cmd/terminal/git bash(or git cmd)
Run command: git clone https://github.com/SammieLJ/SimpleArticles.git
This will create "SimpleArticles" folder. You can define folder name. Just add at the end of command your defined folder.

Then just enter folder: "cd SimpleArticles"

2. Set correct Ruby interpreter in "Gemfile" (in root of SimpleArticles folder).
Get version: "ruby -v" in cmd/terminal
Open and edit Gemfile: "sudoedit Gemfile" or "nano Gemfile" or open Visual Studio Code with ". code" command
Find "ruby" entry and fix version accordingly. I have used '2.7.0', newer is '2.7.1'

Run command: "bundle install"

3. Set database
Originally application is using SQLite3. You can change it to MySQL.

For SQLite3 usage, you can skip this point.

For MySQL, do following:
Run commands: 
"rails db:system:change --to=mysql"
"yarn install --check-files"

Edit username and password for MySQL DB access. Usually it is root
"sudoedit /config/database.yml"
Fix entries:
username: root
password: <your-defined-password>

You should check, if you can login to mysql:
Cmd: "mysql -u root -p"

You must manually create "SimpleArticles_development" database inside MySQL
MySQL cmd: "create database SimpleArticles_development;"
Check if new db is listed: "show databases;"
Then quit MySQL: "quit"

This last step is not defined or mentioned anywhere on internet. I had to figure it out by my self. For a second, I thought to abandon MySQL usage. :)

4. DB Migration:

Finally regardles if you use SQLite3 or MySQL or something else db,
migrate (create) tables in db: "rails db:migrate" or "rake db:migrate" would to the trick

5. Running application:

Prepair all necessary JavaScript boundles and download all dependencies on your system,
with cmd: "bundle install"

Finally, run Puma web server: "rails server" or "rails s"

Got to: http://localhost:3000/articles

You should see "My Articles List" app and start filling Book Articles. DB is empty at first start. :)

## Useful links, that helped me to research with configuration

https://gorails.com/setup/ubuntu/18.04#ruby-rvm
https://dev.to/morinoko/using-mysql-with-rails-6-and-installing-mysql-on-mac-macos-mojave-di3
https://www.git-tower.com/learn/git/commands/git-clone
https://www.ionos.com/community/hosting/mysql/how-to-use-mysql-with-your-ruby-on-rails-application/
https://support.rackspace.com/how-to/mysql-resetting-a-lost-mysql-root-password/
https://stackoverflow.com/questions/42421585/default-password-of-mysql-in-ubuntu-server-16-04
https://www.mysqltutorial.org/mysql-show-databases/
https://guides.rubyonrails.org/v3.2/migrations.html

## Future plans

I will probably put whole project into Docker file. That would be much simpler than follwing all that commands.

## Final thoughts

I will stick with technology stack that I know (python, php, java, go lang, ...). When going through Ruby (on Rails) tutorials, I found inspiration how to do things, let say "correctly" in software development. Ruby community is always insperational and I have learned a lot from them. Back to business as usual.
