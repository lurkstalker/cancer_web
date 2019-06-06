class ImportData < ActiveRecord::Migration[5.2]
  def change
    Rake::Task['db:data:load'].invoke
  end
end
