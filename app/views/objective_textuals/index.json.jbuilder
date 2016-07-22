json.array!(@objective_textuals) do |objective_textual|
  json.extract! objective_textual, :id, :lesson, :statement, :a, :b, :c, :d
  json.url objective_textual_url(objective_textual, format: :json)
end
