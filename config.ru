# config.ru
require 'bundler'
Bundler.require

class App < Roda
  plugin :hash_branches
  plugin :empty_root

  # Use this one if you're going to render views
  # plugin :hash_branch_view_subdir

  Dir['routes/**/*.rb'].each { |file| require_relative file }

  hash_branch('api') do |r|
    r.hash_branches('api')
  end

  hash_branch('api', 'v2') do |r|
    r.hash_branches('v2')
  end

  route do |r|
    r.hash_branches
    'Hello World!'
  end
end

run App
