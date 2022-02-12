class User < ApplicationRecord
  before_destroy :check_destroy_admin
  has_many :purchases
  has_many :sales
  has_many :groupings, dependent: :destroy
  has_one :team  
  has_many :products
  has_many :questions
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = "ゲストユーザ"
      user.nickname = "ゲストユーザ"
      user.phone_number = "09012345678"
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end

  def self.guest_admin
    find_or_create_by!(email: 'guest_admin@example.com') do |user|
      user.name = "ゲスト管理者"
      user.nickname = "ゲスト管理者"
      user.phone_number = "08087654321"
      user.admin = true
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end
  
  private

  def check_destroy_admin
    if User.where(admin: true).count <= 1 && self.admin == true
      throw(:abort)
    end
  end
end