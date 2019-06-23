class Like < ApplicationRecord
  belongs_to :campaign
  belongs_to :user

  before_update :is_blocked

  private

  def is_blocked
    throw(:abort) if campaing.blocked
  end
end
