class Common < SitePrism::Page

        #SCROLL ATÉ O ELEMENTO NA PAGINA
  def scroll_to(element)
    page_height = Capybara.current_session.driver.browser.manage.window.size.height
    element_axis_y = element.native.location.y
    element_offset = element.native.size.height
    final_screen_axis = calcular_final_screen_axis(element_axis_y, element_offset, page_height)
    final_screen_axis = final_screen_axis >= 0 ? final_screen_axis : 0
    Capybara.current_session.driver.browser.execute_script("scrollTo(0,#{final_screen_axis})")
  end

  def calcular_final_screen_axis(element_axis_y, element_offset, page_height)
    (element_axis_y + element_offset) - page_height / 2
  end

  def wait_for(timeout = Capybara.default_max_wait_time)
    timeout.times do
      break if yield
      sleep(15)
    end
  end

  def click_el(el, log = false)
    retries = 0
    begin
      element = find_el(el)
      element.click
    rescue StandardError
      retries += 1
      if retries < 3
        retry
      else
        click_error_log el
      end
    end
  end
  
end 