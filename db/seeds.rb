# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
State.create([{name:'Acre',sign:'AC'},
              {name:'Alagoas',sign:'AL'},
              {name:'Amapá',sign:'AP'},
              {name:'Amazonas',sign:'AM'},
              {name:'Bahia',sign:'BA'},
              {name:'Ceará',sign:'CE'},
              {name:'Distrito Federal',sign:'DF'},
              {name:'Espírito Santo',sign:'ES'},
              {name:'Goiás',sign:'GO'},
              {name:'Maranhão',sign:'MA'},
              {name:'Mato Grosso',sign:'MT'},
              {name:'Mato Grosso do Sul',sign:'MS'},
              {name:'Minas Gerais',sign:'MG'},
              {name:'Pará',sign:'PA'},
              {name:'Paraíba',sign:'PB'},
              {name:'Paraná',sign:'PR'},
              {name:'Pernambuco',sign:'PE'},
              {name:'Piauí',sign:'PI'},
              {name:'Rio de Janeiro',sign:'RJ'},
              {name:'Rio Grande do Norte',sign:'RN'},
              {name:'Rio Grande do Sul',sign:'RS'},
              {name:'Rondônia',sign:'RO'},
              {name:'Roraima',sign:'RR'},
              {name:'Santa Catarina',sign:'SC'},
              {name:'São Paulo',sign:'SP'},
              {name:'Sergipe',sign:'SE'},
              {name:'Tocantins',sign:'TO'}])
ServiceUnit.create([{name:'Metro quadrado'},
                    {name:'Metro linear'},
                    {name:'Diária'}])
categories = Category.create([{name:'Automoveis e Cia',description:'Automoveis e Cia',active:true,icon:'car'},
                 {name:'Residencial',description:'Residencial',active:true,icon:'home'},])
Service.create({name:'Funilaria',description:'Automoveis e Cia',category:categories.first})