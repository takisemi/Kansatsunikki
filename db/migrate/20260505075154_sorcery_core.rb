class SorceryCore < ActiveRecord::Migration[7.2]
  def change
    # Sorcery 用のカラムを追加
    add_column :users, :crypted_password, :string unless column_exists?(:users, :crypted_password)
    add_column :users, :salt, :string unless column_exists?(:users, :salt)
    add_index :users, :email, unique: true unless index_exists?(:users, :email)
     # 古い認証カラムを削除(has_secure_password で使っていた場合)
    remove_column :users, :password_digest, :string if column_exists?(:users, :password_digest)
  end
end
