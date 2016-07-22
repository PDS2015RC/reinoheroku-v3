json.array!(@subjective_textuals) do |subjective_textual|
  json.extract! subjective_textual, :id, :lesson, :statement, :answer
  json.url subjective_textual_url(subjective_textual, format: :json)
end
