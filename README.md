# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


link to setup the graphql:
* https://docs.google.com/document/d/1ZVxi67LHOiXGbSJzXxR2sOdKVEy_46Bzi4Bq7yOtcrs/edit?usp=sharing
* https://graphql-ruby.org/getting_started.html
* https://github.com/rmosolgo/graphql-ruby?tab=readme-ov-file

# Gemfile
* gem 'graphql'
* $ bundle install
* $ rails generate graphql:install

* https://github.com/rmosolgo/graphiql-rails
* bundle add graphiql-rails
* bundle install

# config/routes.rb
```Rails.application.routes.draw do
 if Rails.env.development?
   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
 end
 post "/graphql", to: "graphql#execute"
end```

# config/initializers/graphiql.rb
```GraphiQL::Rails.config.header_editor_enabled = true```

# app/assets/config/manifest.js
```//= link graphiql/rails/application.js```
```//= link graphiql/rails/application.css```


# Generate the type for the airline and review
```rails g graphql:object Airline```
```rails g graphql:object review```

# app/graphql/types/airline_type.rb
```# frozen_string_literal: true

module Types
  class AirlineType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :image, String
    field :slug, String
    field :airline_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :reviews, [Types::ReviewType], null: true
  end
end```

# app/graphql/types/review_type.rb:
```# frozen_string_literal: true

module Types
 class ReviewType < Types::BaseObject
   field :id, ID, null: false
   field :title, String
   field :description, String
   field :score, Integer
   field :airline_id, Integer, null: false
   field :created_at, GraphQL::Types::ISO8601DateTime, null: false
   field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
 end
end```

# app/graphql/types/query_type.rb:
 ## fetch all the records of the arirline table
  ```field :airlines, [Types::AirlineType], null: false, description: 'returns all the records of the airlines'
   def airlines
     Airline.all
   end```
  
  ```field :reviews, [Types::ReviewType], null: false, description: 'returns all the records of the Review'
   def reviews
     Review.all
   end```

