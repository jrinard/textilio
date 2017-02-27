ActiveRecord::Schema.define(version: 20170227223656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string "to"
    t.string "from"
    t.text   "body"
  end

end
