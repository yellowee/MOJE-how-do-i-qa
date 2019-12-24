require 'rails_helper'

feature 'Test #2', js:true do
    context 'Checking the steps of Test #2' do
        scenario 'Filling up the form' do
            visit('/pages/test_2')
            within(id:'example_textfield') do
                fill_in(id: 'example_textfield', with:'przyklad')
            end
            check(id:'example_checkbox')
            select 'Opt 2',from:'example_select'
            choose('example_radiobutton_opt_2')
            click_button('Submit')
            expect('/pages/test_2')
                have_css(class:'alert alert-warning')
                have_content('przyklad')
                
        end
        scenario 'Not filling up the form' do
            expect('/pages/test_2')to. have_text('Data will appear here after submission.')
        end
end