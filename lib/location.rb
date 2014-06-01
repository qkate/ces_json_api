class Location
  include Mongoid::Document

  field :latitude, type: Float
  field :longitude, type: Float
  field :region, type: String
  field :zip_code #not a problem in OR, but what about zips starting in 0?
  field :zip_nine, type: String
  field :is_location_approximate, type: Boolean
  field :business_name, type: String

end