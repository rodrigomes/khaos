# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
ActiveRecord::Base.connection.execute "INSERT INTO categories (name, created_at, updated_at) VALUES
 ('Festa', current_timestamp, current_timestamp);"

ActiveRecord::Base.connection.execute "INSERT INTO notification_types (name, created_at, updated_at) VALUES ('confirm_backer', current_timestamp, current_timestamp), ('payment_slip', current_timestamp, current_timestamp), ('project_success', current_timestamp, current_timestamp), ('backer_project_successful', current_timestamp, current_timestamp), ('backer_project_unsuccessful', current_timestamp, current_timestamp), ('project_received', current_timestamp, current_timestamp), ('updates', current_timestamp, current_timestamp), ('project_unsuccessful', current_timestamp, current_timestamp), ('project_visible', current_timestamp, current_timestamp), ('processing_payment', current_timestamp, current_timestamp);"
