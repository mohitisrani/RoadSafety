class QueriesController < ApplicationController


	def index
		ActiveRecord::Base.establish_connection()
		"Successfully Connected to DataBase"
	end

	def query1
		@query1 = "123"#ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
	end

	def query2
		page = params[:page].to_i
		@query2 = "123"#ActiveRecord::Base.connection.exec_query("SELECT a from (select accident_index a, rownum r FROM ACCIDENTS) where r >= #{page*10+1} AND r <= #{page*10+15}");
	end

	def query3
		@query3 = "123"#ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM casualties")[0]["count(*)"];
	end

	def query4
		@query4 = "123"#ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM vehicles")[0]["count(*)"];
	end

	def query5
		@query5 = "123"#ActiveRecord::Base.connection.exec_query("SELECT AVG(age_of_vehicle) as av FROM vehicles")[0]["av"];
	end


end
