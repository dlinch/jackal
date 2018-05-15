class CreateDogs::V20180514205003 < LuckyMigrator::Migration::V1
  def migrate
    create :dogs do
      add name : String?
      add gender : String?
      add age : String?
      add breed : String?
      add description : String?
      add petfinder_id : Int32, index: true, unique: true
      add photo : String?
      add contact : String?
      add address : String?
    end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    drop :dogs
  end
end
