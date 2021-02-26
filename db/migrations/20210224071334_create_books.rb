Hanami::Model.migration do
  change do
    create_table :books do
      primary_key :id

      column :created_at,   DateTime,          null: false
      column :updated_at,   DateTime,          null: false
      column :data_created, Date,              null: false
      column :title,        String, size: 100, null: false
      column :message,      String,            null: false
      column :author,       String, size: 50,  null: false
      column :category,     String, size: 50,  null: true

    end
  end
end
