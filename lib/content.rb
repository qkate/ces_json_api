class Content
  include Mongoid::Document

  field :material, type: String
  field :weight, type: Float
  field :percentage, type: Float
  field :weight_unit, type: String
  field :is_misplaced, type: Boolean
  field :is_contaminated, type: Boolean

end