# README

This is a sample Rails app to create a shorten url from the original url. The app also record some user visit information and can be retrieved from a login user using the API as well.


### Requirments

* Ruby > 2.3.x

* Rails > 5.1.x

* sqlite3


### Setup

```
git clone git@github.com:somethvictory/link_shortener.git
cd link_shortener
bundle install
```

### Database setup

```
rake db:create

rake db:migrate
```


### Startup server

```
rails server
```

### Technologies

Database:   sqlite3
Server/Api: Rails/Api
Client:     Reactjs

### Api 

```
GET   /urls.json                     # return all current user's existing urls
POST  /urls.json                     # create a new url
GET   /api/v1/logs?url_id=short_name # return all visited logs from the provided url's short name
```

### Spec

To run all specs in the project:

```
rake
```
or

```
rspec
```


