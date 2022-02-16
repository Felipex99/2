ActiveRecord::Schema.define(version: 2022_02_16_061740) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "atividade"
    t.string "pagamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
