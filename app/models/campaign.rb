# frozen_string_literal: true

class Campaign < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :likes

  validates :title, :description, presence: true

  before_update :is_blocked

  private

  def is_blocked
    campaign = Campaign.find(id)

    throw(:abort) if campaign.blocked
  end
end
