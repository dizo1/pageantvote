if Rails.env.production?
CarrierWave.configure do |config|
config.fog_credentials = {
:provider => 'AWS',
:aws_access_key_id => ENV['AKIAJFSJDJWTV744QZMA'],
:aws_secret_access_key => ENV['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'],
:region => ENV['Ohio'] #This is usually required for European Users not all
}
config.fog_directory = ENV['prodapp']
end
end