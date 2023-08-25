# frozen_string_literal: true

require 'application_system_test_case'

class FromsTest < ApplicationSystemTestCase
  setup do
    @from = froms(:one)
  end

  test 'visiting the index' do
    visit froms_url
    assert_selector 'h1', text: 'Froms'
  end

  test 'should create from' do
    visit froms_url
    click_on 'New from'

    click_on 'Create From'

    assert_text 'From was successfully created'
    click_on 'Back'
  end

  test 'should update From' do
    visit from_url(@from)
    click_on 'Edit this from', match: :first

    click_on 'Update From'

    assert_text 'From was successfully updated'
    click_on 'Back'
  end

  test 'should destroy From' do
    visit from_url(@from)
    click_on 'Destroy this from', match: :first

    assert_text 'From was successfully destroyed'
  end
end
