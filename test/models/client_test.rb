require 'test_helper'

class ClientTest < ActiveSupport::TestCase
   test "client contacts relationship" do
    client = Client.create({name:"joao2", email:"joao2@joao.com",phone:"999999999"})
    contato1 = Contact.create({name:"marcos", email:"marcos@marcos.com",phone:"999999998", client:client})
    contato2 = Contact.create({name:"bianca", email:"bianca@bianca.com",phone:"999999997", client:client})
    assert client.contacts.size == 2
   end

  # test "validate email @" do
    #  client = Client.new({name:"joao", email:"joaojoao.com",phone:"999999999"})
    #  assert !client.valid?
 #  end

 #  test "validate email <4" do
   #   client = Client.new({name:"joao", email:"joa",phone:"999999999"})
   #   assert !client.valid?
   end

  # test "validate email <254" do
   #   client = Client.new({name:"joao", email:"joaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojjoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaooaojoaojoaojoaojoaojoaojoaojoaojoaojoaojoaoo@joao.com",phone:"999999999"})
   #   assert !client.valid?
   end
end


