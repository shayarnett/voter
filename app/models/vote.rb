class Vote < ActiveRecord::Base
  belongs_to :candidate, counter_cache: true, dependent: :destroy

  def cast!
    self.candidate = Candidate.find_or_create_by_name(provided.downcase)
    save
  end
end
