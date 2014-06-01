class Location
  include Mongoid::Document

  field :latitude, type: Float
  field :longitude, type: Float
  field :region, type: String
  field :zip_code, type: String
  #^ On use of String here: not a problem in OR, but elsewhere zips begin in 0
  field :zip_nine, type: String
  field :is_location_approximate, type: Boolean
  field :business_name, type: String

end