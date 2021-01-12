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

  def display_name
    if first_name || last_name
      [first_name, last_name].compact.join(" ")
    else
      email
    end
  end
end
