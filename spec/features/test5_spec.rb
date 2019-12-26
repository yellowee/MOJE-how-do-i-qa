require 'rails_helper'

feature 'Test #5', js:true do
    context 'Checking Test #5 steps' do
        scenario'Login using factory' do
            FactoryBot
            visit '/pages/test_5'
            expect '/pages/test_5'
                have_content 'admin@example.com'
        end
        scenario 'Basic login' do
            visit '/pages/test_5'
            fill_in id:'user_email', with: 'admin@example.com'
            fill_in id:'user_password', with: '12345678'
            click_button 'Log in'
            expect '/pages/test_5'
                have_content 'admin@example.com'
        end
    end
end