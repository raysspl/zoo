require 'spec_helper'

describe 'animals/new' do
  it 'renders the new template' do
    render
    expect(view).to render_template('new')
  end
end