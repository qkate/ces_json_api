class Sample
  include Mongoid::Document

  field :collected_on, type: Date
  field :business_type, type: String
  field :sqft, type: Integer
  field :grand_total_weight, type: Float
  field :grand_total_percentage, type: Float
  field :weight_unit, type: String

  embeds_many :collection_bins
  embeds_one :location

end