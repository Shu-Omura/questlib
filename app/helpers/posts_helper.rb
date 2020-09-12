module PostsHelper
  def show_type(type)
    case type
    when 'question'
      '質問'
    when 'memo'
      'メモ'
    else
      '未分類'
    end
  end

  def show_state(state)
    if state
      '解決済'
    else
      '未解決'
    end
  end
end
