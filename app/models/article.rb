class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy, class: Comment
  # has_many :comments, :dependent => :destroy, :class => Comment
  validates :title, presence: true, length: { minimum: 5 }
end

# {
#   :key => :value,
# }

# {
#   key: :value
# }
