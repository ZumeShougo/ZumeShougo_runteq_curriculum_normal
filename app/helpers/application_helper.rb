module ApplicationHelper
  def page_title(page_title = '', admin = false)
    base_title = if admin
                   'RUNTEQ BOARD APP(管理画面)'
                 else
                   'RUNTEQ BOARD APP'
                 end

    page_title.empty? ? base_title : page_title + ' | ' + base_title  #三項演算子を用いている
  end
end
