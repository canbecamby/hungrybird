CarrierWave.configure do |config|

  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJZU5M4US3WSMWWZA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'darkknight0801'                          # required
  config.fog_public     = true                                       # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end

