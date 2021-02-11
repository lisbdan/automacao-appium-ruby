module Helper
    
    def screen_shot(file_name, result)
        file_path = "report/screenshots/test_#{result}"
        selfie = "#{file_path}/#{file_name}.png"
        page.save_screenshot(selfie)
        attach(selfie, 'Clique aqui!')
    end
end