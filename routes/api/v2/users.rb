# routes/api/v2/users.rb
class App
  plugin :json, classes: [Array, Hash]

  hash_branch('v2', 'users') do |r|
    r.root do
      {response: 'api/v2/users'}
    end
  end
end
