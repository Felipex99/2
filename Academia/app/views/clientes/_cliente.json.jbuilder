json.extract! cliente, :id, :nome, :atividade, :pagamento, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
