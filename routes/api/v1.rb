# routes/v1.rb
class App
  plugin :json, classes: [Array, Hash]

  hash_branch('api', 'v1') do |r|
    r.on 'users' do
      r.get do
        { response: 'api/v1/users' }
      end
    end

    r.root do
      { response: 'api/v1' }
    end
  end
end
