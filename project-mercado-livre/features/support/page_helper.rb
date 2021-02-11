Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def myBrands
        return MyBrands.new
    end

    def common
        return Common.new
    end
end
