# routes/api/v2/teams.rb
class App
  plugin :json, classes: [Array, Hash]

  hash_branch('v2', 'teams') do |r|
    r.root do
      {response: 'api/v2/teams'}
    end
  end
end
