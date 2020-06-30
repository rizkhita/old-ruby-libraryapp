class CreateBukus < ActiveRecord::Migration[5.2]
  def change
    create_table :bukus do |t|
      t.string :idBuku
      t.string :judulBuku
      t.string :namaPengarang
      t.string :penerbit
      t.integer :tahunTerbit

      t.timestamps
    end
  end
end
