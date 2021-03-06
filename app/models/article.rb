# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#
class Article < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
end
