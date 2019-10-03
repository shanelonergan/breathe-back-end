class User < ApplicationRecord
	has_many :sessions, -> {order "created_at DESC"}

	def streak
		today = Time.now.to_date
		streak_count = 0

		uniq_dates = self.sessions.map { |session| session.created_at.to_date }.uniq

		uniq_dates.reduce(today) do |memo, date|

			yesterday = memo.yesterday.to_date
	
			if date == yesterday || date == today
				streak_count += 1
				memo = date
			end

			memo
		end

		return streak_count
	end
end
