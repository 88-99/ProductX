require 'rails_helper'
describe 'ユーザモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    before do
      @user = FactoryBot.create(:user, :a)
    end
    context 'ユーザのEメールが空の場合' do
      it 'バリデーションにひっかかる' do
        user = User.new(
          email: nil,
          # password: 'aaaaaa',
          # name: 'aaaaaa',
          # phone_number: '09011112222',
          # nickname: 'aaaaaa'
          )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザのパスワードが空の場合' do
      it 'バリデーションにひっかかる' do
        user = User.new(
          # email: 'aaa@aaa.com',
          password: nil,
          # name: 'aaaaaa',
          # phone_number: '09011112222',
          # nickname: 'aaaaaa'
          )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザの名前が空の場合' do
      it 'バリデーションにひっかかる' do
        user = User.new(
          # email: 'aaa@aaa.com',
          # password: 'aaaaaa',
          name: nil,
          # phone_number: '09011112222',
          # nickname: 'aaaaaa'
          )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザの電話番号が空の場合' do
      it 'バリデーションにひっかかる' do
        user = User.new(
          # email: 'aaa@aaa.com',
          # password: 'aaaaaa',
          # name: 'aaaaaa',
          phone_number: nil,
          # nickname: 'aaaaaa'
          )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザのニックネームが空の場合' do
      it 'バリデーションにひっかかる' do
        user = User.new(
          # email: 'aaa@aaa.com',
          # password: 'aaaaaa',
          # name: 'aaaaaa',
          # phone_number: '09011112222',
          nickname: nil
          )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザのニックネームが重複している場合' do
      it 'バリデーションにひっかかる' do
        user1 = FactoryBot.build(:user)
        user1.save
        user2 = FactoryBot.build(:user) #saveしない
        user2.nickname = user1.nickname
        expect(user2).not_to be_valid
      end
    end
    context 'ユーザ登録に必要な項目が記載されている場合' do
      it 'バリデーションが通る' do
        user = User.new(
          email: 'aaa@aaa.com',
          password: 'aaaaaa',
          name: 'aaaaaa',
          phone_number: '09011112222',
          nickname: 'aaaaaa'
          )
        expect(user).to be_valid
      end
    end
  end
end