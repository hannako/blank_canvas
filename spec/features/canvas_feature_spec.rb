require 'rails_helper'

feature 'Canvas' do
  scenario 'visiting homepage' do
    visit '/'
    expect(page).to have_content('Blank Canvas')
    expect(page).to have_xpath("//img[contains(@src,'test.svg')]")
  end

  scenario 'user selects their favourite wireframe' do
    visit '/'
    click_link('box1')
    expect(page.current_path).to eq new_canva_path
    expect(page).to have_xpath("//img[contains(@src,'test.svg')]")
  end

  scenario 'user uploads the picture' do
    visit "/canvas/new"
    page.attach_file "canva[image]", Rails.root + "spec/assets/pic_1.jpg"
    # response.body.should have_xpath("//#canvas_1[@background-color => '#343434 ']")
    expect(page).to have_css("canvas_1", backgroundColor: "#020202")
  end
end
