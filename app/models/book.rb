# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cover       :string
#  user_id     :integer
#

class Book < ApplicationRecord
	 mount_uploader :cover, CoverUploader

	 belongs_to :user  
end
