#!/bin/env ruby
# encoding: utf-8

require 'everypolitician'
require 'wikidata/fetcher'

existing = EveryPolitician::Index.new.country("Colombia").lower_house.popolo.persons.map(&:wikidata).compact

names = WikiData::Category.new( 'Categoría:Representantes de la Cámara de Colombia 2014-2018', 'es').member_titles
EveryPolitician::Wikidata.scrape_wikidata(ids: existing, names: { es: names })
