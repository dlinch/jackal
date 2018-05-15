class Dog < BaseModel
  table :dogs do
    column name : String?
    column gender : String?
    column age : String?
    column breed : String?
    column description : String?
    column petfinder_id : Int32
    column photo : String?
    column contact : String?
    column address : String?
  end
end