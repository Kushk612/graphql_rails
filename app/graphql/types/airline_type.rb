# frozen_string_literal: true

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
end
