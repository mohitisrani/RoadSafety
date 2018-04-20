class QueriesController < ApplicationController


	def index
		ActiveRecord::Base.establish_connection()
		"Successfully Connected to DataBase"
	end

	def query1
		@query1 = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
	end

	def query2
		@query2 = ActiveRecord::Base.connection.exec_query("SELECT accident_index FROM ACCIDENTS where rownum<=10")
		
	end

	def query3
		@query3 = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM casualties")[0]["count(*)"];
	end

	def query4
		@query4 = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM vehicles")[0]["count(*)"];
	end

	def query5
		@query5 = ActiveRecord::Base.connection.exec_query("SELECT AVG(age_of_vehicle) as av FROM vehicles")[0]["av"];
	end


end
