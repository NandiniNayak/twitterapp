class Tweet < ApplicationRecord
  belongs_to :user
  acts_as_votable
  validates :message, :length => { :maximum => 146 }
# nandini - sets maximum tweet size to 146 characters
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :message
  def score
    self.get_upvotes.size - self.get_downvotes.size
  end
end
