# Sinatra Template

## Running the project

You can run the project using `rackup` for better perfomance or `shotgun` to reload application in every request:

```
$ rackup config.ru -p 9292
$ shotgun config.ru -p 9292
```

## Interactive Console

In the app `current` folder do:

```
RACK_ENV=production /home/gustavosobral/.rvm/bin/rvm 2.7.0 do bundle exec irb -I. -r boot.rb
```
