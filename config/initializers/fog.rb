CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAITT3MJ75SVOH4ALA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2'
  }
  config.fog_directory  = 'club-board'                          # required
  end