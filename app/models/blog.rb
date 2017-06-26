class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic_id, :status

  belongs_to :topic

  has_many :comments, dependent: :destroy

  scope :hide_drafts, -> { where(status: 'published') }

  def self.protect_drafts user
    if user.has_role?(:site_admin)
      all
    else
      hide_drafts
    end
  end

  def self.by_recent
    order("created_at DESC")
  end
end