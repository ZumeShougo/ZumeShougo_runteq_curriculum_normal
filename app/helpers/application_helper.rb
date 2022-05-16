module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'RUNTEQ BOARD APP'

    page_title.empty? ? base_title : page_title + ' | ' + base_title  #三項演算子を用いている
  end
end
