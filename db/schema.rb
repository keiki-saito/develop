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

ActiveRecord::Schema.define(version: 2020_12_23_053616) do

  create_table "animes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "anime_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fmoviecomments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "star"
    t.bigint "user_id"
    t.bigint "fmovie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fmovie_id"], name: "index_fmoviecomments_on_fmovie_id"
    t.index ["user_id"], name: "index_fmoviecomments_on_user_id"
  end

  create_table "fmovies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "fmovie_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "janimecomments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "star"
    t.bigint "user_id"
    t.bigint "janime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["janime_id"], name: "index_janimecomments_on_janime_id"
    t.index ["user_id"], name: "index_janimecomments_on_user_id"
  end

  create_table "janimes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "anime_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "japananimes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "anime_url"
  end

  create_table "jmoviecomments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "star"
    t.bigint "user_id"
    t.bigint "jmovie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jmovie_id"], name: "index_jmoviecomments_on_jmovie_id"
    t.index ["user_id"], name: "index_jmoviecomments_on_user_id"
  end

  create_table "jmovies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "jmovie_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jtvcomments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "star"
    t.bigint "user_id"
    t.bigint "jtv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jtv_id"], name: "index_jtvcomments_on_jtv_id"
    t.index ["user_id"], name: "index_jtvcomments_on_user_id"
  end

  create_table "jtvs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "jtv_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "jmovie_id"
    t.bigint "janime_id"
    t.bigint "original_id"
    t.bigint "fmovie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fmovie_id"], name: "index_likes_on_fmovie_id"
    t.index ["janime_id"], name: "index_likes_on_janime_id"
    t.index ["jmovie_id"], name: "index_likes_on_jmovie_id"
    t.index ["original_id"], name: "index_likes_on_original_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "movie_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "originalcomments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "star"
    t.bigint "user_id"
    t.bigint "original_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["original_id"], name: "index_originalcomments_on_original_id"
    t.index ["user_id"], name: "index_originalcomments_on_user_id"
  end

  create_table "originals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "original_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "test_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "jmovie_url"
    t.text "fmovie_url"
    t.string "Net"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "sex"
    t.date "birthday"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "uid"
    t.string "oauth_token"
    t.string "oauth_expires_at"
    t.string "provider"
    t.string "encrypted_password"
  end

  add_foreign_key "fmoviecomments", "fmovies"
  add_foreign_key "fmoviecomments", "users"
  add_foreign_key "janimecomments", "janimes"
  add_foreign_key "janimecomments", "users"
  add_foreign_key "jmoviecomments", "jmovies"
  add_foreign_key "jmoviecomments", "users"
  add_foreign_key "jtvcomments", "jtvs"
  add_foreign_key "jtvcomments", "users"
  add_foreign_key "likes", "fmovies"
  add_foreign_key "likes", "janimes"
  add_foreign_key "likes", "jmovies"
  add_foreign_key "likes", "originals"
  add_foreign_key "likes", "users"
  add_foreign_key "originalcomments", "originals"
  add_foreign_key "originalcomments", "users"
end
