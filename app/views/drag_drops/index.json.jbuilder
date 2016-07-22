json.array!(@drag_drops) do |drag_drop|
  json.extract! drag_drop, :id, :lesson, :statement, :a, :b, :c, :d, :atitle, :btitle, :ctitle, :dtitle
  json.url drag_drop_url(drag_drop, format: :json)
end
