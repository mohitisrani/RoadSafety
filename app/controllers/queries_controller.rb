class QueriesController < ApplicationController


	def self.index
		ActiveRecord::Base.establish_connection()
		"Successfully Connected to DataBase"
	end

	def self.accidents_count
		count = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
		count
	end

	# def self.accidents_count
	# 	count = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
	# 	count
	# end


end
