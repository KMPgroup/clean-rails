class BaseEntity
  include Virtus.model
  include ActiveModel::Validations
  include ActiveModel::Serialization
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  attribute :id, Integer, default: nil

  def to_h
    attributes.except(:id)
  end

  def persisted?
    !id.nil?
  end

end