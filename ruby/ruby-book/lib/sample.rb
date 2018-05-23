require './lib/deep_freezable'

class Sample
  extend DeepFreezable

  ARRAY_COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
  HASH_COUNTRIES = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end
