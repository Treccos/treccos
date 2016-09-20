class AddContentHtmlToTasks < ActiveRecord::Migration
  def change
  	# O comando gera esse migrate automaticamente => rails generate migration AddContent_htmlToTasks content_html:text
  	# adicione uma coluna na tabela tasks content_html tipo texto
    add_column :tasks, :content_html, :text
  end
end
