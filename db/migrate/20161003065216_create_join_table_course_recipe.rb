class CreateJoinTableCourseRecipe < ActiveRecord::Migration[5.0]
  def change
    create_join_table :courses, :recipes do |t|
      # t.index [:course_id, :recipe_id]
      # t.index [:recipe_id, :course_id]
    end
  end
end
