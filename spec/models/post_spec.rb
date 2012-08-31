require 'spec_helper'

describe Post do
  context 'factories' do
    context 'default' do
      subject { create(:post) }
      it { should be_valid }
    end
  end
end
