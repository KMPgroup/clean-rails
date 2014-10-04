class PostEntity < BaseEntity
  attribute :title, String, default: ''
  attribute :body, String, default: ''

  validates :title, :body,
    presence: true,
    allow_nil: false,
    allow_blank: false

  def self.model_name
    ActiveModel::Name.new(Post)
  end
end