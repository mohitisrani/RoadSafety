# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180425092241) do

  create_table "accidents", primary_key: "accident_index", id: :string, limit: 20, force: :cascade do |t|
    t.integer "location_easting_osgr", limit: 8, precision: 8
    t.integer "location_northing_osgr", limit: 8, precision: 8
    t.decimal "longitude", precision: 25, scale: 20
    t.decimal "latitude", precision: 25, scale: 20
    t.integer "police_force", limit: 8, precision: 8
    t.integer "accident_severity", limit: 8, precision: 8
    t.integer "number_of_vehicles", limit: 8, precision: 8
    t.integer "number_of_casualties", limit: 8, precision: 8
    t.date "Date"
    t.integer "day_of_week", limit: 2, precision: 2
    t.datetime "Time", precision: 6
    t.integer "local_authority_district", limit: 8, precision: 8
    t.string "local_authority_highway", limit: 20
    t.integer "1st_Road_Class", limit: 8, precision: 8
    t.integer "1st_Road_Number", limit: 8, precision: 8
    t.integer "road_type", limit: 8, precision: 8
    t.integer "speed_limit", limit: 8, precision: 8
    t.integer "junction_detail", limit: 8, precision: 8
    t.integer "junction_control", limit: 8, precision: 8
    t.integer "2nd_Road_Class", limit: 8, precision: 8
    t.integer "2nd_Road_Number", limit: 8, precision: 8
    t.integer "pedestrian_crs_human_control", limit: 8, precision: 8
    t.integer "pedestrian_crs_physical_faclt", limit: 8, precision: 8
    t.integer "light_conditions", limit: 8, precision: 8
    t.integer "weather_conditions", limit: 8, precision: 8
    t.integer "road_surface_conditions", limit: 8, precision: 8
    t.integer "special_conditions_at_site", limit: 8, precision: 8
    t.integer "carriageway_hazards", limit: 8, precision: 8
    t.integer "urban_or_rural_area", limit: 8, precision: 8
    t.integer "did_police_attend_scene", limit: 8, precision: 8
    t.string "lsoa_of_accident_location", limit: 20
  end

  create_table "casualties", primary_key: ["accident_index", "vehicle_reference", "casualty_reference"], force: :cascade do |t|
    t.string "accident_index", limit: 20, null: false
    t.integer "vehicle_reference", limit: 8, precision: 8, null: false
    t.integer "casualty_reference", limit: 8, precision: 8, null: false
    t.integer "casualty_class", limit: 8, precision: 8
    t.integer "sex_of_casualty", limit: 8, precision: 8
    t.integer "age_of_casualty", limit: 8, precision: 8
    t.integer "age_band_of_casualty", limit: 8, precision: 8
    t.integer "casualty_severity", limit: 8, precision: 8
    t.integer "pedestrian_location", limit: 8, precision: 8
    t.integer "pedestrian_movement", limit: 8, precision: 8
    t.integer "car_passenger", limit: 8, precision: 8
    t.integer "bus_or_coach_passenger", limit: 8, precision: 8
    t.integer "pedestrian_road_maint_worker", limit: 8, precision: 8
    t.integer "casualty_type", limit: 8, precision: 8
    t.integer "casualty_home_area_type", limit: 8, precision: 8
    t.integer "casualty_imd_decile", limit: 8, precision: 8
  end

  create_table "cities", primary_key: "city", id: :string, limit: 40, force: :cascade do |t|
    t.decimal "longitude", precision: 25, scale: 20
    t.decimal "latitude", precision: 25, scale: 20
  end

  create_table "comics", force: :cascade do |t|
    t.string "title"
    t.integer "issue", precision: 38
    t.string "publisher"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lookup", primary_key: ["Tables", "code"], force: :cascade do |t|
    t.string "Tables", limit: 40, null: false
    t.integer "code", limit: 8, precision: 8, null: false
    t.string "label", limit: 100
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", primary_key: ["accident_index", "vehicle_reference"], force: :cascade do |t|
    t.string "accident_index", limit: 20, null: false
    t.integer "accyr", limit: 8, precision: 8
    t.integer "vehicle_reference", limit: 8, precision: 8, null: false
    t.integer "vehicle_type", limit: 8, precision: 8
    t.integer "towing_and_articulation", limit: 8, precision: 8
    t.integer "vehicle_manoeuvre", limit: 8, precision: 8
    t.integer "vehicle_location_restr_lane", limit: 8, precision: 8
    t.integer "junction_location", limit: 8, precision: 8
    t.integer "skidding_and_overturning", limit: 8, precision: 8
    t.integer "hit_object_in_carriageway", limit: 8, precision: 8
    t.integer "vehicle_leaving_carriageway", limit: 8, precision: 8
    t.integer "hit_object_off_carriageway", limit: 8, precision: 8
    t.integer "1st_Point_of_Impact", limit: 8, precision: 8
    t.integer "was_vehicle_left_hand_drive", limit: 8, precision: 8
    t.integer "journey_purpose_of_driver", limit: 8, precision: 8
    t.integer "sex_of_driver", limit: 8, precision: 8
    t.integer "age_band_of_driver", limit: 8, precision: 8
    t.integer "engine_capacity_cc", limit: 8, precision: 8
    t.integer "propulsion_code", limit: 8, precision: 8
    t.integer "age_of_vehicle", limit: 8, precision: 8
    t.integer "driver_imd_decile", limit: 8, precision: 8
    t.integer "driver_home_area_type", limit: 8, precision: 8
    t.string "make", limit: 40
    t.string "model", limit: 40
  end

  add_foreign_key "casualties", "vehicles", column: "accident_index", primary_key: "accident_index", name: "casualties_foreign"
  add_foreign_key "casualties", "vehicles", column: "vehicle_reference", primary_key: "vehicle_reference", name: "casualties_foreign"
  add_foreign_key "vehicles", "accidents", column: "accident_index", primary_key: "accident_index", name: "vehicles_foreign"
end
