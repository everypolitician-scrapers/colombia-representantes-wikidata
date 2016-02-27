#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new( 'Categoría:Representantes de la Cámara de Colombia 2014-2018', 'es').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { es: names }, output: false)
