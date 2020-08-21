require 'httparty'


class StackExchange
  include HTTParty
  base_uri 'fr.dofus.dofapi.fr'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def questions(types) #filtre de resultat selon le type de monstres
    self.class.get("/monsters?filter"+"[where][type]="+"#{types}", @options)
  end

end



