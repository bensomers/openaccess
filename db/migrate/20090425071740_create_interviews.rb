class CreateInterviews < ActiveRecord::Migration
  def self.up
    create_table :interviews do |t|
      t.string :interviewer
      t.string :interviewee
      t.string :title
      t.date :date
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :interviews
  end
end
