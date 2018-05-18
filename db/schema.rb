# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20170312201004) do

  create_table "antok_members", :force => true do |t|
    t.string   "antok_id"
    t.string   "fio"
    t.date     "birth_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "birth_year"
  end

  create_table "applics", :force => true do |t|
    t.integer  "user_id"
    t.string   "fio"
    t.string   "fio_eng"
    t.date     "birth_date"
    t.string   "sex"
    t.text     "post_address"
    t.string   "email"
    t.string   "phones"
    t.string   "edu_institute"
    t.text     "edu_institute_address"
    t.string   "edu_specialization"
    t.string   "uch_stepen"
    t.string   "work_company"
    t.integer  "work_start_year"
    t.string   "work_department"
    t.string   "work_position"
    t.string   "work_specialization"
    t.text     "public_organizations"
    t.string   "antok_city"
    t.text     "science_interests"
    t.text     "conf_topic"
    t.string   "conf_section"
    t.text     "conf_coauthors"
    t.string   "participation_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.boolean  "need_compensation"
    t.string   "inn"
    t.string   "snils"
    t.text     "registration"
    t.string   "phone_work"
    t.string   "phone_home"
    t.string   "uch_zvanie"
    t.string   "work_city"
    t.string   "work_country"
    t.string   "acad_position"
  end

  add_index "applics", ["user_id"], :name => "index_applics_on_user_id"

  create_table "kofst_applics", :force => true do |t|
    t.integer  "user_id"
    t.string   "applic_language"
    t.string   "korean_name"
    t.string   "english_name"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "job_type"
    t.string   "job_organization"
    t.string   "job_department"
    t.string   "job_position"
    t.string   "job_email"
    t.string   "job_phone"
    t.integer  "science_field_id"
    t.integer  "science_specific_field_id"
    t.string   "mobile"
    t.string   "address"
    t.string   "country"
    t.string   "kofst_association"
    t.string   "nationality"
    t.string   "final_academic_degree"
    t.string   "e_period1"
    t.string   "e_period2"
    t.string   "e_period3"
    t.string   "e_period4"
    t.string   "e_period5"
    t.string   "e_degree1"
    t.string   "e_degree2"
    t.string   "e_degree3"
    t.string   "e_degree4"
    t.string   "e_degree5"
    t.string   "e_university1"
    t.string   "e_university2"
    t.string   "e_university3"
    t.string   "e_university4"
    t.string   "e_university5"
    t.string   "e_major1"
    t.string   "e_major2"
    t.string   "e_major3"
    t.string   "e_major4"
    t.string   "e_major5"
    t.string   "p_period1"
    t.string   "p_period2"
    t.string   "p_period3"
    t.string   "p_period4"
    t.string   "p_period5"
    t.string   "p_organization1"
    t.string   "p_organization2"
    t.string   "p_organization3"
    t.string   "p_organization4"
    t.string   "p_organization5"
    t.string   "p_position1"
    t.string   "p_position2"
    t.string   "p_position3"
    t.string   "p_position4"
    t.string   "p_position5"
    t.string   "p_business_in_charge1"
    t.string   "p_business_in_charge2"
    t.string   "p_business_in_charge3"
    t.string   "p_business_in_charge4"
    t.string   "p_business_in_charge5"
    t.text     "a_publications"
    t.text     "a_awards"
    t.text     "a_patents"
    t.text     "a_research_activites"
    t.text     "area_of_interest"
    t.boolean  "i_joint_research"
    t.boolean  "i_research_and_consulting"
    t.boolean  "i_job"
    t.boolean  "i_starting_a_business"
    t.boolean  "i_lecture"
    t.boolean  "i_internation_conference"
    t.boolean  "i_seminar"
    t.boolean  "i_information_interaction"
    t.boolean  "i_others"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "kofst_applics", ["science_field_id"], :name => "index_kofst_applics_on_science_field_id"
  add_index "kofst_applics", ["science_specific_field_id"], :name => "index_kofst_applics_on_science_specific_field_id"
  add_index "kofst_applics", ["user_id"], :name => "index_kofst_applics_on_user_id"

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "send_type"
    t.string   "email4test"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "science_fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name_ru"
  end

  create_table "science_specific_fields", :force => true do |t|
    t.integer  "science_field_id"
    t.string   "name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "name_ru"
  end

  add_index "science_specific_fields", ["science_field_id"], :name => "index_science_specific_fields_on_science_field_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.boolean  "is_antok_member"
    t.string   "antok_id"
    t.boolean  "is_foreign"
  end

  add_index "users", ["antok_id"], :name => "index_users_on_antok_id"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
