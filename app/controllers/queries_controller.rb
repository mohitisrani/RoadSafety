class QueriesController < ApplicationController

	before_action :current_user
	def index
		ActiveRecord::Base.establish_connection()
		"Successfully Connected to DataBase"
	end

	def query1
		@query1 = ActiveRecord::Base.connection.exec_query("SELECT COUNT(*) FROM ACCIDENTS")[0]["count(*)"];
	end

	def query2
		page = params[:page].to_i
		@query2 = ActiveRecord::Base.connection.exec_query("SELECT a \"Accident Index\", to_char(\"Date\", 'DD-MM-YYYY') as \"Date\", number_of_vehicles \"Vehicles Involved\", number_of_casualties \"Casualties Involved\" from (select accident_index a,\"Date\", number_of_vehicles, number_of_casualties, rownum r FROM ACCIDENTS) where r >= #{page*10+1} AND r <= #{page*10+10}");
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


	def map
		month = params[:month].to_i%12+1
		@map = ActiveRecord::Base.connection.exec_query("select longitude, latitude from (select longitude,latitude,extract(month from \"Date\") month1 from accidents) where month1 in #{month}");
	end
end
