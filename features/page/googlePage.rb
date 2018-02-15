
class GOOGLEPAGE
  XPATHS = {
    btn: '//*[@value="Google 搜尋"]',
    textbox: '//*[@name="q"]'
  }.freeze

  def input_somethinga
    enter_text(:xpath, 'somethinga', XPATHS[:textbox])
  end

  def clear_something
    clear_text(:xpath, XPATHS[:textbox])
  end

  def input_somethingb
    enter_text(:xpath, 'somethingb', XPATHS[:textbox])
  end

  def click_btn
    is_element_displayed(:xpath, XPATHS[:btn])
    wait(1)
    click(:xpath, XPATHS[:btn])
  end

  def scroll_end
    scroll_page('end')
    wait(1)
  end

end