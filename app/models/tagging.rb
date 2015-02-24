class Tagging < ActiveRecord::Base
  belongs_to :tag, :post
end
