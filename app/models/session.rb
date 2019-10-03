class Session < ApplicationRecord
  belongs_to :user

	# USER_STREAK_DAYS_SQL = <<-SQL
	#     SELECT (CURRENT_DATE - series_date::date) AS days
	#     FROM generate_series(
	#           ( SELECT created_at::date FROM sessions
	#             WHERE sessions.user_id = :user_id
	#             ORDER BY created_at ASC
	#             LIMIT 1
	#           ),
	#           CURRENT_DATE,
	#           '1 day'
	#         ) AS series_date
	#     LEFT OUTER JOIN sessions ON sessions.user_id = :user_id AND
	#                              sessions.created_at::date = series_date
	#     GROUP BY series_date
	#     HAVING COUNT(sessions.id) = 0
	#     ORDER BY series_date DESC
	#     LIMIT 1
	#   SQL

	#  def self.user_streak_days(user_id)
	#     sql = sanitize_sql [ USER_STREAK_DAYS_SQL, { user_id: user_id } ]
	#     result_value = connection.select_value(sql)
	#     Integer(result_value) rescue nil
	#  end

end
