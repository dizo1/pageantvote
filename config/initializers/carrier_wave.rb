if Rails.env.production?
CarrierWave.configure do |config|
config.fog_credentials = {
:provider => 'AWS',
:aws_access_key_id => ENV['AKIAJYB4X4PJ6ETKB65A '],
:aws_secret_access_key => ENV['#dizo@me1'],
:region => ENV['Ohio'] #This is usually required for European Users not all
}
config.fog_directory = ENV['prodapp']
end
end