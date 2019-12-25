require 'rails_helper'

feature 'Test #3', js:true do

    context 'Checking the steps of Test #3' do
        scenario 'Highlighting of a table row' do
            visit '/pages/test_3'
            within_table id:'test-3-table' do
                first('table tr').click
            end
            expect 'first #(table tr)'
                have_css'highlighted', type: :visible
        end
    end
end