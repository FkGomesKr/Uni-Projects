module Tarefa1_2022li1g073_Spec where

import LI12223
import Tarefa1_2022li1g073
import Test.HUnit

testsT1 = test [ "Teste 1" ~: True ~=? mapaValido1 (Mapa 1 ((Relva, (Arvore:[])) : [])),
		       "Teste 2" ~: True ~=? mapaValido1 (Mapa 1 ((Relva, (Nenhum:[])) : [])),
		       "Teste 3" ~: False ~=? mapaValido1 (Mapa 1 ((Relva, (Tronco:[])) : [])),
		       "Teste 4" ~: False ~=? mapaValido1 (Mapa 1 ((Relva, (Carro:[])) : [])),
		       "Teste 5" ~: True ~=? mapaValido1 (Mapa 1 ((Rio 0, (Tronco:[])) : [])),
			   "Teste 6" ~: True ~=? mapaValido1 (Mapa 1 ((Rio 0, (Nenhum:[])) : [])),
			   "Teste 7" ~: False ~=? mapaValido1 (Mapa 1 ((Rio 0, (Arvore:[])) : [])),
			   "Teste 8" ~: False ~=? mapaValido1 (Mapa 1 ((Rio 0, (Carro:[])) : [])),
			   "Teste 9" ~: True ~=? mapaValido1 (Mapa 1 ((Estrada 0, (Carro:[])) : [])),
			   "Teste 10" ~: True ~=? mapaValido1 (Mapa 1 ((Estrada 0, (Nenhum:[])) : [])),
			   "Teste 11" ~: False ~=? mapaValido1 (Mapa 1 ((Estrada 0, (Arvore:[])) : [])),
			   "Teste 12" ~: False ~=? mapaValido1 (Mapa 1 ((Estrada 0, (Tronco:[])) : [])),
			   "Teste 13" ~: True ~=? mapaValido2 (Mapa 1 ((Rio 1, (Tronco:[])):(Rio (-1), (Nenhum:[])):[])),
			   "Teste 14" ~: False ~=? mapaValido2 (Mapa 1 ((Rio 1, (Tronco:[])):(Rio 1, (Nenhum:[])):[])),
			   "Teste 15" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Nenhum:Nenhum:Nenhum:[])):[])),
			   "Teste 16" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Arvore:Nenhum:Nenhum:[])):[])),
			   "Teste 17" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Nenhum:Arvore:Nenhum:[])):[])),
			   "Teste 18" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Nenhum:Nenhum:Arvore:[])):[])),
			   "Teste 19" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Nenhum:Arvore:Arvore:[])):[])),
			   "Teste 20" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Arvore:Arvore:Nenhum:[])):[])),
			   "Teste 21" ~: True ~=? mapaValido5 (Mapa 3 ((Relva, (Arvore:Nenhum:Arvore:[])):[])),
			   "Teste 22" ~: False ~=? mapaValido5 (Mapa 3 ((Relva, (Arvore:Arvore:Arvore:[])):[])),
			   "Teste 23" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Nenhum:Nenhum:Nenhum:[])):[])),
			   "Teste 24" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Tronco:Nenhum:Nenhum:[])):[])),
			   "Teste 25" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Nenhum:Tronco:Nenhum:[])):[])),
			   "Teste 26" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Nenhum:Nenhum:Tronco:[])):[])),
			   "Teste 27" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Nenhum:Tronco:Tronco:[])):[])),
			   "Teste 28" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Tronco:Tronco:Nenhum:[])):[])),
			   "Teste 29" ~: True ~=? mapaValido5 (Mapa 3 ((Rio 0, (Tronco:Nenhum:Tronco:[])):[])),
			   "Teste 30" ~: False ~=? mapaValido5 (Mapa 3 ((Rio 0, (Tronco:Tronco:Tronco:[])):[])),
			   "Teste 31" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Nenhum:Nenhum:Nenhum:[])):[])),
			   "Teste 32" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Carro:Nenhum:Nenhum:[])):[])),
			   "Teste 33" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Nenhum:Carro:Nenhum:[])):[])),
			   "Teste 34" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Nenhum:Nenhum:Carro:[])):[])),
			   "Teste 35" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Nenhum:Carro:Carro:[])):[])),
			   "Teste 36" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Carro:Carro:Nenhum:[])):[])),
			   "Teste 37" ~: True ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Carro:Nenhum:Carro:[])):[])),
			   "Teste 38" ~: False ~=? mapaValido5 (Mapa 3 ((Estrada 0, (Carro:Carro:Carro:[])):[])),
			   "Teste 39" ~: True ~=? mapaValido6 (Mapa 3 ((Relva, (Arvore:Nenhum:Arvore:[])):[])),
			   "Teste 40" ~: True ~=? mapaValido6 (Mapa 3 ((Rio 0, (Tronco:Nenhum:Tronco:[])):[])),
			   "Teste 41" ~: True ~=? mapaValido6 (Mapa 3 ((Estrada 0, (Carro:Nenhum:Carro:[])):[])),
			   "Teste 42" ~: False ~=? mapaValido6 (Mapa 3 ((Relva, (Arvore:Nenhum:[])):[])),
			   "Teste 43" ~: False ~=? mapaValido6 (Mapa 3 ((Rio 0, (Tronco:Nenhum:[])):[])),
			   "Teste 44" ~: False ~=? mapaValido6 (Mapa 3 ((Estrada 0, (Carro:Nenhum:[])):[])),
			   "Teste 45" ~: True ~=? mapaValido3 (Mapa 6 ((Rio 0, (Tronco:Tronco:Tronco:Tronco:Tronco:Nenhum:[])) : [])),
			   "Teste 46" ~: True ~=? mapaValido3 (Mapa 6 ((Rio 0, (Tronco:Tronco:Nenhum:Tronco:Tronco:Tronco:[])) : [])),
			   "Teste 47" ~: False ~=? mapaValido3 (Mapa 6 ((Rio 0, (Tronco:Tronco:Tronco:Tronco:Tronco:Tronco:[])) : [])),
			   "Teste 48" ~: True ~=? mapaValido4 (Mapa 4 ((Estrada 0, (Carro:Carro:Carro:Nenhum:[])) : [])),
			   "Teste 49" ~: True ~=? mapaValido4 (Mapa 4 ((Estrada 0, (Carro:Nenhum:Carro:Carro:[])) : [])),
			   "Teste 50" ~: False ~=? mapaValido4 (Mapa 4 ((Estrada 0, (Carro:Carro:Carro:Carro:[])) : [])),
			   "Teste 51" ~: True ~=? mapaValido7 (Mapa 1 []),
			   "Teste 52" ~: False ~=? mapaValido7 (Mapa 1 ((Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : [])),
			   "Teste 53" ~: False ~=? mapaValido7 (Mapa 1 ((Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : [])),
			   "Teste 54" ~: False ~=? mapaValido7 (Mapa 1 ((Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : [])),
		       "Teste 56" ~: True ~=? mapaValido (Mapa 1 ((Relva, (Nenhum:[])) : [])),
		       "Teste 57" ~: False ~=? mapaValido (Mapa 1 ((Relva, (Tronco:[])) : [])),
		       "Teste 58" ~: False ~=? mapaValido (Mapa 1 ((Relva, (Carro:[])) : [])),
			   "Teste 61" ~: False ~=? mapaValido (Mapa 1 ((Rio 0, (Arvore:[])) : [])),
			   "Teste 62" ~: False ~=? mapaValido (Mapa 1 ((Rio 0, (Carro:[])) : [])),
			   "Teste 64" ~: True ~=? mapaValido (Mapa 1 ((Estrada 0, (Nenhum:[])) : [])),
			   "Teste 65" ~: False ~=? mapaValido (Mapa 1 ((Estrada 0, (Arvore:[])) : [])),
			   "Teste 66" ~: False ~=? mapaValido (Mapa 1 ((Estrada 0, (Tronco:[])) : [])),
			   "Teste 68" ~: False ~=? mapaValido (Mapa 1 ((Rio 1, (Tronco:[])):(Rio 1, (Nenhum:[])):[])),
			   "Teste 69" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Nenhum:Nenhum:Nenhum:[])):[])),
			   "Teste 70" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Nenhum:Nenhum:[])):[])),
			   "Teste 71" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Nenhum:Arvore:Nenhum:[])):[])),
			   "Teste 72" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Nenhum:Nenhum:Arvore:[])):[])),
			   "Teste 73" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Nenhum:Arvore:Arvore:[])):[])),
			   "Teste 74" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Arvore:Nenhum:[])):[])),
			   "Teste 75" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Nenhum:Arvore:[])):[])),
			   "Teste 76" ~: False ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Arvore:Arvore:[])):[])),
			   "Teste 78" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Nenhum:Nenhum:[])):[])),
			   "Teste 79" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Nenhum:Tronco:Nenhum:[])):[])),
			   "Teste 80" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Nenhum:Nenhum:Tronco:[])):[])),
			   "Teste 81" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Nenhum:Tronco:Tronco:[])):[])),
			   "Teste 82" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Tronco:Nenhum:[])):[])),
			   "Teste 83" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Nenhum:Tronco:[])):[])),
			   "Teste 84" ~: False ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Tronco:Tronco:[])):[])),
			   "Teste 85" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Nenhum:Nenhum:Nenhum:[])):[])),
			   "Teste 86" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Nenhum:Nenhum:[])):[])),
			   "Teste 87" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Nenhum:Carro:Nenhum:[])):[])),
			   "Teste 88" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Nenhum:Nenhum:Carro:[])):[])),
			   "Teste 89" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Nenhum:Carro:Carro:[])):[])),
			   "Teste 90" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Carro:Nenhum:[])):[])),
			   "Teste 91" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Nenhum:Carro:[])):[])),
			   "Teste 92" ~: False ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Carro:Carro:[])):[])),
			   "Teste 93" ~: True ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Nenhum:Arvore:[])):[])),
			   "Teste 94" ~: True ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Nenhum:Tronco:[])):[])),
			   "Teste 95" ~: True ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Nenhum:Carro:[])):[])),
			   "Teste 96" ~: False ~=? mapaValido (Mapa 3 ((Relva, (Arvore:Nenhum:[])):[])),
			   "Teste 97" ~: False ~=? mapaValido (Mapa 3 ((Rio 0, (Tronco:Nenhum:[])):[])),
			   "Teste 98" ~: False ~=? mapaValido (Mapa 3 ((Estrada 0, (Carro:Nenhum:[])):[])),
			   "Teste 99" ~: True ~=? mapaValido (Mapa 6 ((Rio 0, (Tronco:Tronco:Tronco:Tronco:Tronco:Nenhum:[])) : [])),
			   "Teste 100" ~: True ~=? mapaValido (Mapa 6 ((Rio 0, (Tronco:Tronco:Nenhum:Tronco:Tronco:Tronco:[])) : [])),
			   "Teste 101" ~: False ~=? mapaValido (Mapa 6 ((Rio 0, (Tronco:Tronco:Tronco:Tronco:Tronco:Tronco:[])) : [])),
			   "Teste 102" ~: True ~=? mapaValido (Mapa 4 ((Estrada 0, (Carro:Carro:Carro:Nenhum:[])) : [])),
			   "Teste 103" ~: True ~=? mapaValido (Mapa 4 ((Estrada 0, (Carro:Nenhum:Carro:Carro:[])) : [])),
			   "Teste 104" ~: False ~=? mapaValido (Mapa 4 ((Estrada 0, (Carro:Carro:Carro:Carro:[])) : [])),
			   "Teste 105" ~: False ~=? mapaValido (Mapa 1 ((Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : (Relva, (Nenhum:[])) : [])),
			   "Teste 106" ~: False ~=? mapaValido (Mapa 1 ((Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : (Rio 0, (Nenhum:[])) : [])),
			   "Teste 107" ~: False ~=? mapaValido (Mapa 1 ((Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : (Estrada 0, (Nenhum:[])) : []))
              ]
