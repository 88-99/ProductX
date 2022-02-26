require 'rails_helper'
RSpec.describe '売上登録機能', type: :system do
  describe '新規作成機能' do
    before do
      user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: user)
      @grouping = Grouping.create(user_id: user.id, team_id: @team.id)
      @client = Client.create(name: 'クライアント')
      # @client = FactoryBot.create(:client) エラーの為、後で修正
      @product = FactoryBot.create(:product, user: user, team: @team)        
      @second_product = FactoryBot.create(:second_product, user: user, team: @team)
      @sale = FactoryBot.create(:sale, user_id: user.id, team_id: @team.id)
      @second_sale = FactoryBot.create(:second_sale, user_id: user.id, team_id: @team.id)
      visit new_user_session_path
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password
      click_button 'ログイン'
    end
    context '売上を新規登録した場合' do
      it '登録後の画面で選んだ商品が表示される' do
        visit new_team_sale_path(@team)
        fill_in :sale_date_at, with: '002022-02-02'
        select 'クライアント', from: 'sale[client_id]'
        select 'Factoryで作った商品１', from: 'sale[sale_details_attributes][0][product_id]' 
        fill_in :sale_sale_details_attributes_0_quantity, with: '1000'
        click_button '登録する'
        expect(page).to have_content 'Factoryで作った商品１' && '合計金額 200,000円'
      end
    end
  end
  describe '一覧表示機能' do
    before do
      user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: user)
      @grouping = Grouping.create(user_id: user.id, team_id: @team.id)
      @client = FactoryBot.create(:client)
      @product = FactoryBot.create(:product, user: user, team: @team)        
      @second_product = FactoryBot.create(:second_product, user: user, team: @team)
      @sale = FactoryBot.create(:sale, user_id: user.id, team_id: @team.id)
      @second_sale = FactoryBot.create(:second_sale, user_id: user.id, team_id: @team.id)
      visit new_user_session_path
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password
      click_button 'ログイン'
    end
    context '一覧画面に遷移した場合' do
      it '作成済みの売上一覧が表示される' do
        visit team_sales_path(@team)
        expect(page).to have_content '2022-02-02'
        expect(page).to have_content '2022-05-05'
      end
    end
  end
  describe '編集機能' do
    before do
      user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: user)
      @grouping = Grouping.create(user_id: user.id, team_id: @team.id)
      @client = Client.create(name: 'クライアント')
      @product = FactoryBot.create(:product, user: user, team: @team)        
      @second_product = FactoryBot.create(:second_product, user: user, team: @team)
      @sale = FactoryBot.create(:sale, user_id: user.id, team_id: @team.id)
      @second_sale = FactoryBot.create(:second_sale, user_id: user.id, team_id: @team.id)
      visit new_user_session_path
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password
      click_button 'ログイン'
    end
    context '売上を編集した場合' do
      it '編集した内容が表示される' do
        visit new_team_sale_path(@team)
        fill_in :sale_date_at, with: '002022-02-02'
        select 'クライアント', from: 'sale[client_id]'
        select 'Factoryで作った商品１', from: 'sale[sale_details_attributes][0][product_id]' 
        fill_in :sale_sale_details_attributes_0_quantity, with: '111000'
        click_button '登録する'
        fill_in :sale_sale_details_attributes_0_quantity, with: '222000'
        click_button '更新する'
        expect(page).to have_content '合計金額 44,400,000円'
        expect(page).to_not have_content '合計金額 22,200,000円'
        # expect(page).to have_field '個数', with: '222000'
        # expect(page).to_not have_field '111000'
      end
    end
  end
end