require 'rails_helper'

describe SignInForm do
  let(:form) { SignInForm.new }

  describe 'param access' do
    it 'should return empty parameters by default' do
      expect(form.email).to be_nil
      expect(form.password).to be_nil
    end

    it 'should return submitted parameters after submit' do
      form.submit(email: 'email', password: 'password')
      expect(form.email).to eq 'email'
      expect(form.password).to eq 'password'
    end
  end


  describe 'submission' do
    it 'should return user when params are correct' do
      user = User.create(email: 'example@email.net', password: 'password')
      result = form.submit(email: 'example@email.net', password: 'password')
      expect(result).to eq user
    end

    describe 'incorrect params' do
      it 'should return nil when email is incorrect' do
        result = form.submit(email: 'example@email.net', password: 'password')
        expect(result).to be_nil
      end

      it 'should return nil when password is incorrect' do
        User.create(email: 'example@email.net', password: 'password')
        result = form.submit(email: 'example@email.net', password: 'invalid')
        expect(result).to be_nil
      end
    end

    it 'should return nil when existing user password is nil and sent password is nil' do
      user = User.create(email: 'example@email.net', encrypted_password: 'bad')
      expect(user.password).to be_nil
      result = form.submit(email: 'example@email.net')
      expect(result).to be_nil
    end
  end
end