class CollectionBin
  include Mongoid::Document

  field :name
  field :total_weight
  field :total_percentage
  field :weight_unit

  embeds_many :contents

end