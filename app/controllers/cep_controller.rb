class CepController < ApplicationController



  def findCepSite cep
    HTTParty.post('http://www.buscacep.correios.com.br/servicos/dnec/consultaLogradouroAction.do',:query=>{:CEP =>cep,:Metodo =>'listaLogradouro',:TipoConsulta =>'cep' })
  end


  def search
  	@address = Address.new
  	result = findCepSite params[:id]
  	page = Nokogiri::HTML(result.force_encoding("windows-1252"))
    select =  page.css('table tr td').select{|td| td['style'] == "padding: 2px"}
    if !select.empty?
    @address.main =  select[0].text
    @address.district =  select[1].text
    @address.city =  select[2].text
    @address.state = select[3].text
    @address.cep  = select[4].text
    end
    respond_to do |format|
  		format.json { render json: @address }
	  end
  end
end
