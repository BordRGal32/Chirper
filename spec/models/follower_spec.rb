require 'spec_helper'

describe Follower do
 it { should validate_presence_of :user_id }
 it {should belong_to :user }
end
