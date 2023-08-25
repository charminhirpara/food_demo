# frozen_string_literal: true

require 'application_system_test_case'

class DemosTest < ApplicationSystemTestCase
  setup do
    @demo = demos(:one)
  end

  test 'visiting the index' do
    visit demos_url
    assert_selector 'h1', text: 'Demos'
  end

  test 'should create demo' do
    visit demos_url
    click_on 'New demo'

    fill_in 'Address', with: @demo.address
    fill_in 'Birth date', with: @demo.birth_date
    fill_in 'City', with: @demo.city
    fill_in 'Country', with: @demo.country
    fill_in 'First name', with: @demo.first_name
    fill_in 'Gender', with: @demo.gender
    fill_in 'Integer', with: @demo.integer
    fill_in 'Landmark', with: @demo.landmark
    fill_in 'Last name', with: @demo.last_name
    fill_in 'Middle name', with: @demo.middle_name
    fill_in 'Pincode', with: @demo.pincode
    fill_in 'State', with: @demo.state
    click_on 'Create Demo'

    assert_text 'Demo was successfully created'
    click_on 'Back'
  end

  test 'should update Demo' do
    visit demo_url(@demo)
    click_on 'Edit this demo', match: :first

    fill_in 'Address', with: @demo.address
    fill_in 'Birth date', with: @demo.birth_date
    fill_in 'City', with: @demo.city
    fill_in 'Country', with: @demo.country
    fill_in 'First name', with: @demo.first_name
    fill_in 'Gender', with: @demo.gender
    fill_in 'Integer', with: @demo.integer
    fill_in 'Landmark', with: @demo.landmark
    fill_in 'Last name', with: @demo.last_name
    fill_in 'Middle name', with: @demo.middle_name
    fill_in 'Pincode', with: @demo.pincode
    fill_in 'State', with: @demo.state
    click_on 'Update Demo'

    assert_text 'Demo was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Demo' do
    visit demo_url(@demo)
    click_on 'Destroy this demo', match: :first

    assert_text 'Demo was successfully destroyed'
  end
end
