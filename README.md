# Tweet-Scheduler 🐤

## Table of Contents
* [About](#about)
* [Technologies](#technologies)
* [Setup](#setup)
* [Launch](#launch)
* [Screenshots](#screenshots)

## About
- Tweet-Scheduler is an Gem that lets you schedule when you want your tweets to be posted, i.e. a Buffer clone.
- I created Tweet-Scheduler because I wanted to learn the developer workflow of using Ruby on Rails. 
- In this project I learned: 
  - Industry standard use of Ruby on Rails with Bootstrap
  - Routing, re-routing, and CRUD operation with recources
  - Creating dynamic views with html.erb, i.g, for-loops, link_to/button_to tags, before_actions
  - Creating and using Controllers to redirect user and query the database.
  - Creating and migrating database Models 
  - How to enable and configure the [Rubocop](https://github.com/rubocop/rubocop) Ruby linter.
  - Creating and setting up credentials for a Gem
  - Deploying a Gem. 
  - Debugging with binding.irb.
  - Rails is so nice. 🚂
- See it deployed here: https://my-tweet-scheduler.herokuapp.com/ 

## Technologies
- Ruby on Rails - version 7.0.2.2
- Rails - version 3.0.3
- Omniauth - version 2.0
- Twitter API - version 2.0
- Sidekiq - version 6.4
- Bootstrap - version 5.1.3
- Rubocop - version 0.8.6

## Setup
- Clone/fork this repository.
- Make sure you have Rails 7.0.2.2 installed.
- Create Twitter Developer account, create a project, acquire API-key and API-secret.
- Add API-key and API-secret: 
  - For VSCode run: `EDITOR="code --wait" rails credentials:edit --environment=development`
  - For Sublime run: `EDITOR="subl --wait" bin/rails credentials:edit  --environment=development`
  - For Vim run: `EDITOR=vim rails credentials:edit` 

*NOTE: This creates a development yaml file in your var directory to add your API-key and API-secret.*

Add the following code with your API-key and API-secret. 

```
twitter: 
  api_key: xxxxxxxxxxxxxxxxxx
  api_secret: xxxxxxxxxxxxxxxxxx
```

Install project depenencies: 
```
bundle install
```
Create database and schema:
```
rails db:create
rails db:migrate
```
In the Twitter Developer portal, add the following URLS to your project.
- `localhost:3000/auth/twitter/callback`


## Launch
- Once cloned, open up your terminal.
- Go to the scheduled-tweets directory and run the server.
```
$ cd ./scheduled-tweets
$ rails server 
```
- Head to `localhost:3000` 🚀🚀🚀🚀🚀🚀

## Screenshots
![Scheduled Tweets](https://user-images.githubusercontent.com/83252804/155583358-45f946ca-4fb0-4145-956a-18df178f78e8.png)
