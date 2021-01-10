class User < BaseModel
  include Carbon::Emailable
  include Authentic::PasswordAuthenticatable

  include Users::EmailConfirmable

  table do
    column email : String
    column first_name : String?
    column last_name : String?
    column encrypted_password : String
  end

  def emailable : Carbon::Address
    Carbon::Address.new(email)
  end
end
