require 'rails_helper'

RSpec.describe User, type: :model do

  describe "validations" do
    it "should validate true" do
      @yoda = User.create(
        email: 'yoda@dagobah.com',
        password: "theforce",
        password_confirmation: "theforce")

      expect(@yoda)

    end

    it "should validate no email" do
      @vader = User.create(
        email: nil,
        password: "sithlord",
        password_confirmation: "sithlord")

      expect(@vader).to_not be_valid

    end

    it "should validate no password" do
      @luke = User.create(
        email: 'luke@tattooine.com',
        password: nil,
        password_confirmation: "theforce")

      expect(@luke).to_not be_valid

    end

    it "should validate no confirm_password" do
      @r2d2 = User.create(
        email: 'r2@d2.com',
        password: "beepboop",
        password_confirmation: nil)

      expect(@r2d2).to_not be_valid

    end

    it "should validate unmatching passwords" do
      @obiwan = User.create(
        email: 'obiwan@jedi.com',
        password: "theforce",
        password_confirmation: "theforceee")

      expect(@obiwan.pass_check(@obiwan)).to eq(false)

    end


    it "should validate true for existing email" do
          @chewie = User.create(
            email: 'Obiwan@jedi.com',
            password: "hnnnnng",
            password_confirmation: "hnnnnng")

          expect(@chewie.email_check(@chewie)).to eq(true)

    end

    it "should validate false for short password" do
          @hansolo = User.create(
            email: 'millenium@falcon.com',
            password: "han",
            password_confirmation: "han")

          expect(@hansolo).to_not be_valid

    end
  end

  describe ".authenticate with credentials" do

  end
end