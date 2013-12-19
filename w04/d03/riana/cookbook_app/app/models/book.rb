# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  cuisine    :string(255)
#  chef       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :chef, :cuisine, :image, :title, :recipe_ids
  has_many :recipes
end
