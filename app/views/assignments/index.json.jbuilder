json.array!(@assignments) do |assignment|
  json.extract! assignment, :title, :details, :due_date, :done
  json.url assignment_url(assignment, format: :json)
end
