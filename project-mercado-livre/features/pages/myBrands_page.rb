class MyBrands < SitePrism::Page
    
    set_url 'marcas'

    def click_select_region(regiao)
        binding.pry
        Common.new.scroll_to(find(EL["button_open_filter"]).hover().click)
        Common.new.wait_for(5) { assert_selector(EL["select_regiao"]) }
        Common.new.scroll_to(find(EL["select_regiao"]).click)
        find(regiao]).select_option
        Common.new.scroll_to(find(EL["lab_delbone"]).click)
    end

    def click_link_open_page
        find('*[//*[@id="overlay"]/div[3]/div/div/div/div[1]/div/div[2]/div/div/a']).click
    end

    def validate_page_current(laboratorio)
        expect(page).to have_current_path(laboratorio)
    end
end