class QueriesController < ApplicationController


	def index
		ActiveRecord::Base.establish_connection()
		"Successfully Connected to DataBase"
	end

	# def query
	# 	@query = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
	# end

	def query
		@query = ActiveRecord::Base.connection.exec_query("SELECT accident_index FROM ACCIDENTS where rownum<=5")
		
	end


end
