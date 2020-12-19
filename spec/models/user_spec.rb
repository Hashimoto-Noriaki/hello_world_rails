require 'rails_helper'

RSpec.describe User, type: :model do
  context "account　を指定しているとき" do
    it "ユーザーが作られる" do
      user = build(:user)
      # user = User.new(name: "poo", account: "poo", email: "poo@example.com")
      # expect(user.valid?).to eq true
      expect(user).to be_valid
    end
  end

  context "accountを指定していないとき" do
    it "ユーザー作成に失敗する" do
      user = build(:user,account: nil)
      # user = User.new(name: "poo",email: "poo@example.com") 
      expect(user).to be_invalid
       expect(user.errors.details[:account][0][:error]).to eq :blank
    end
  end

  # context "すでに同じ名前の　account が存在している" do
  #   it "ユーザーが作られる" do
  #     user = User.new(name: "poo",email: "poo@example.com") 
  #     expect(user).to be_invalid
  #   end
  # end

  context "まだ同じ名前のaccount が存在しないとき" do
    before {create_list(:user,account:"pochi")} 
    fit "ユーザー作成に失敗" do
    user = build(:user,account: "pochi")
    binding.pry
    expect(user).to be_invalid
    expect(user.errors.details[:account][0][:error]).to eq :taken
    
    
  end
end
end



