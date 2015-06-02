require 'rspec'
require_relative '../lib/pfm'

describe Account do
	it "can be instantiated" do
		account = Account.new("Gwen Savings", 0)
		expect(account.class).to be(Account)
	end

	it "has one name"
	it "has one balance"
	it "has many transactions"

	describe "#list_accounts" do
	end

	describe "#add_account" do
	end

	describe "#modify_account_details" do
	end

	describe "#delete_account" do
	end

	describe "#view_account_details" do
	end

end

describe Transaction do
	it "can be instantiated" do
		transaction = Transaction.new("31 Mar 15", "Gwen Savings", "Food", "Shake Shack", 10, "debit")
		expect(transaction.class).to be(Transaction)
	end

	describe "a newly instantiated transaction" do
		it "has one date"
		it "belongs to one account"
		it "has one category"
		it "has one payee"
		it "has one amount"
		it "has one type"
			expect(type).to be(debit || credit)
	end

	describe "#create_transaction" do
	end

	describe "#modify_transaction" do
	end

	describe "#delete_transaction" do
	end

	describe "#view_transaction" do
	end

	describe "#list_transactions" do
	end

end