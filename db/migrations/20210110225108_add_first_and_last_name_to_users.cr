class AddFirstAndLastNameToUsers::V20210110225108 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(User) do
      add first_name : String?
      add last_name : String?
    end
  end

  def rollback
    alter table_for(User) do
      remove :first_name
      remove :last_name
    end
  end
end
