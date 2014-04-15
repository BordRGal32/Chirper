require 'spec_helper'

describe Chirp do
  it { should validate_presence_of :message }
  it { should belong_to :user }
end
