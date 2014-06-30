require 'spec_helper'

feature "Homepage" do
  scenario "should have a greeting" do
    visit "/"

    expect(page).to have_content("Fish Homepage")
  end

  scenario "are three fish listed" do
    visit "/"

    expect(page).to have_content("salmon", "trout", "halibut")
  end

  scenario "salmon page" do
    visit "/salmon"
    expect(page).to have_content("Atlantic Salmon")
    expect(page).to have_content("Salt Water")
    expect(page).to have_content("Salmo salar")
    expect(page).to have_content("The Atlantic Salmon, is a fish in the family Salmonidae, which is found in the northern Atlantic Ocean and in rivers that flow into the north Atlantic and, due to human introduction, the north Pacific.")
    expect(page).to have_css('img[src="http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Salmo_salar.jpg/440px-Salmo_salar.jpg"]')
  end

  scenario "trout page" do
    visit "/trout"
    expect(page).to have_content("Brown Trout")
    expect(page).to have_content("Salt Water")
    expect(page).to have_content("Salmo trutta")
    expect(page).to have_content("The brown trout is an originally European species of salmonid fish. It includes both purely freshwater populations, referred to Salmo trutta morpha fario and S. trutta morpha lacustris, and anadromous forms known as the sea trout, S. trutta morpha trutta. The latter migrates to the oceans for much of its life and returns to freshwater only to spawn.[3] Sea trout in the UK and Ireland have many regional names, including sewin (Wales), finnock (Scotland), peal (West Country), mort (North West England) and white trout (Ireland).")
    expect(page).to have_css('img[src="http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bachforelle_Zeichnung.jpg/440px-Bachforelle_Zeichnung.jpg"]')
  end

  scenario "halibut page" do
    visit "/halibut"
    expect(page).to have_content("Atlantic Halibut")
    expect(page).to have_content("Salt Water")
    expect(page).to have_content("Hippoglossus hippoglossus")
    expect(page).to have_content("The Atlantic halibut, is a flatfish of the family Pleuronectidae. They are demersal fish living on or near sand, gravel or clay bottoms at depths of between 50 and 2,000 m (160 and 6,560 ft). The halibut is among the largest teleost (bony) fish in the world. Halibut are strong swimmers and are able to migrate long distances. Halibut size is not age-specific, but rather tends to follow a cycle related to halibut (and therefore food) abundance.")
    expect(page).to have_css('img[src="http://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Hippoglossus_hippoglossus1.jpg/440px-Hippoglossus_hippoglossus1.jpg"]')
  end

end
