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

Firstly build database for application: $ rails db:migrate

Prepair all necessary JavaScript boundles and download all dependencies on your system: $ bundle install

Finally, run Puma web server: $ rails server

## Final thoughts

I will stick with technology stack that I know (python, php, java, go lang, c#, ...). When going through Ruby (on Rails) tutorials, I found inspiration how to do things, let say "correctly" in software development. Ruby community is always insperational and I have learned a lot from them. Back to business as usual.
