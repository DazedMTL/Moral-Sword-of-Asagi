Font.default_size = 20

class Window_Base
  def draw_item_name(item, x, y, enabled = true, width = 500)
    return unless item
    draw_icon(item.icon_index, x, y, enabled)
    change_color(normal_color, enabled)
    draw_text(x + 24, y, width, line_height, item.name)
  end
end
 
class Window_ItemList < Window_Selectable
  def col_max
    return 1
  end
end
 
class Window_SkillList < Window_Selectable
  def col_max
    return 1
  end
end