class Application
  Habitat.create do
    setting name : String
    setting support_email : String
  end
end

Application.configure do |settings|
  settings.name = "Decorator Shard"
  settings.support_email = "no-reply@decorator_shard.com"
end
