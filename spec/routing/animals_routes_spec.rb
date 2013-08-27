require 'spec_helper'

describe 'animals resource' do
  it 'routes /animals/new to animals#new' do
    expect(get: '/animals/new').to route_to(
      controller: 'animals',
      action: 'new'
    )
  end
end