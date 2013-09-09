json.array!(@post_tests) do |post_test|
  json.extract! post_test, :user, :pass
  json.url post_test_url(post_test, format: :json)
end
