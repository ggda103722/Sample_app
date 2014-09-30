require 'spec_helper'

describe "StaticPages" do
  describe "Pagina de Inicio (Home)" do
    it "debe tener el contenido 'Samle App' " do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "debe tener el titulo 'Predefinido' " do
    	visit '/static_pages/home'
    	expect(page).not_to have_title('Sample App / Home')
	 end 
end

describe "Pagina de ayuda" do
	it "Debe tener el contenido 'Ayuda' " do
		visit '/static_pages/help'
      expect(page).to have_content('Ayuda')
	end
	it "debe tener el titulo 'Sample App / Ayuda' " do
    	visit '/static_pages/help'
    	expect(page).not_to have_title('Sample App / Ayuda')
	end
end

describe "Pagina Acerca de" do
	it "Debe tener el contenido 'Acerca de' " do
		visit '/static_pages/acerca_de'
      expect(page).to have_content('Acerca de')
	end
	it "debe tener el titulo 'Sample App / Acerca de' " do
    	visit '/static_pages/acerca_de'
    	expect(page).not_to have_title('Sample App / Acerca de')
	end
end 

end