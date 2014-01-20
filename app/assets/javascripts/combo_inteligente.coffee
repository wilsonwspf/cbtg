$ ->
  new ComboInteligente '#registration_mtg_id', '#registration_rt_id'

class ComboInteligente
  constructor: (@origem, @destino)->
    @origem = $(@origem)
    @destino = $(destino)
    @origem.change @change

  change: =>
    json =
      primeira: 'UM'
      SEGUNDA: 'DOIS'
    $.each json, (key, value)=>
      @destino.append(new Option(key, value))
