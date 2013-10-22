# == Schema Information
#
# Table name: uquotes
#
#  id                 :integer          not null, primary key
#  citat              :text
#  username           :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  context            :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Uquote < ActiveRecord::Base
  attr_accessible :citat, :username, :context, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
end
