class Assignment < ActiveRecord::Base
  scope :completed, -> {where(done: true)}
  scope :not_completed, -> {where(done: [false, nil])}
end

