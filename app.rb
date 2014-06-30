require 'sinatra'

class FishApp < Sinatra::Base

  @fish = ["salmon", "trout", "halibut"]

  get '/' do
    erb :index
  end

  get '/salmon' do
    erb :fish_layout, :locals => {:fish_name => "Atlantic Salmon",
                             :fish_scie => "Salmo salar",
                             :fish_salt => "Salt Water",
                             :fish_disc => "The Atlantic Salmon, is a fish in the family Salmonidae, which is found in the northern Atlantic Ocean and in rivers that flow into the north Atlantic and, due to human introduction, the north Pacific.",
                             :fish_imag => "http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Salmo_salar.jpg/440px-Salmo_salar.jpg",
                             :fish_wiki => "http://en.wikipedia.org/wiki/Atlantic_salmon",
    }
  end

  get '/trout' do
    erb :fish_layout, :locals => {:fish_name => "Brown Trout",
                            :fish_scie => "Salmo trutta",
                            :fish_salt => "Salt Water",
                            :fish_disc => "The brown trout is an originally European species of salmonid fish. It includes both purely freshwater populations, referred to Salmo trutta morpha fario and S. trutta morpha lacustris, and anadromous forms known as the sea trout, S. trutta morpha trutta. The latter migrates to the oceans for much of its life and returns to freshwater only to spawn.[3] Sea trout in the UK and Ireland have many regional names, including sewin (Wales), finnock (Scotland), peal (West Country), mort (North West England) and white trout (Ireland).",
                            :fish_imag => "http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bachforelle_Zeichnung.jpg/440px-Bachforelle_Zeichnung.jpg",
                            :fish_wiki => "http://en.wikipedia.org/wiki/Brown_trout",
    }
  end

  get '/halibut' do
    erb :fish_layout, :locals => {:fish_name => "Atlantic Halibut",
                              :fish_scie => "Hippoglossus hippoglossus",
                              :fish_salt => "Salt Water",
                              :fish_disc => "The Atlantic halibut, is a flatfish of the family Pleuronectidae. They are demersal fish living on or near sand, gravel or clay bottoms at depths of between 50 and 2,000 m (160 and 6,560 ft). The halibut is among the largest teleost (bony) fish in the world. Halibut are strong swimmers and are able to migrate long distances. Halibut size is not age-specific, but rather tends to follow a cycle related to halibut (and therefore food) abundance.",
                              :fish_imag => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Hippoglossus_hippoglossus1.jpg/440px-Hippoglossus_hippoglossus1.jpg",
                              :fish_wiki => "http://en.wikipedia.org/wiki/Atlantic_halibut",
    }
  end

end
