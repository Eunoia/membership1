class Subscription < ActiveRecord::Base
	belongs_to :plan
	belongs_to :user

	before_create do |subscription|
		return subscription.plan.seats_open?
	end
end