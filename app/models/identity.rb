# == Schema Information
#
# Table name: identities
#
#  id         :integer          not null, primary key
#  provider   :integer
#  uid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Identity < ActiveRecord::Base
  enum provider: [:github, :weibo]
  validates :provider, inclusion: { in: Identity.providers }
end
