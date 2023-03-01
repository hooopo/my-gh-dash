class FixRepos < ActiveRecord::Migration[7.0]
  def change
    user = CurrentUser.first 
    return if user.nil?
    user.update(last_repo_cursor: nil, last_starred_repo_cursor: nil)
  end
end
