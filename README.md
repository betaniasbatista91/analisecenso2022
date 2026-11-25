
<img width="1155" height="629" alt="image" src="https://github.com/user-attachments/assets/bb5deb89-6f59-451a-a792-e8c47e058a83" />

Este projeto representa meu primeiro passo na área de Ciência de Dados e foi uma oportunidade de colocar em prática conhecimentos de tratamento de dados, análise exploratória, criação de medidas em DAX e visualização no Power BI.

# 💡Projeto Be: Análise Potencial de Público Feminino

📊 Dashboard em Power BI com dados do Censo 2022 (IBGE), desenvolvido como primeiro projeto do curso de Ciência de Dados (Univesp).📊

## Contexto:

Case hipotético: Uma empresa de cosméticos quer investir em território nacional e precisa saber quais regiões e estados têm maior distribuição do sexo feminino e, qual a faixa etária delas.

## ❓ Perguntas de negócio:

Em quais regiões e estados há mais mulheres?

Qual faixa etária concentra mais mulheres?

Qual é o perfil de idade das mulheres em cada território (urbano, rural, favelas e comunidades, indígena e quilombola)?

Há públicos de nicho, como quilombolas e indígenas, com potencial?

## 📊Dados utilizados 

Tabela 9514 (SIDRA): quantidade de mulheres por município e faixa etária. Usada para saber onde estão as mulheres.
Tabela 17 (Censo 2022): percentual de mulheres em cada faixa etária, por território. Usada para o perfil de idade em cada território, com os valores já calculados pelo IBGE para o Brasil e para as regiões.

## Faixa Etária: 
19 a 39 | 40 a 59 | 60 a 79 | 80+


## 🌍Territórios: 
- Rural  | Urbano  | Favelas e Comunidades
- Terras Indígenas | Território Quilombola
------------------------------------------

## Abrangência (Tabela 9514):
- 27 Estados
- 5.570 Municípios

Total: 79.229.798 (79,2 milhões) mulheres de 19 anos ou mais.

## 👩‍💻Tratamento dos dados:

- Separei as siglas dos Estados dos Municípios.
- Removi as faixas de 0 a 18 anos, pois o público analisado tem 19 anos ou mais.
- Criei a coluna com o nome dos estados por extenso e a coluna das regiões, duplicando a de siglas e substituindo os valores;
- Criei medidas em DAX (SUM) para obter o total de mulheres e as medidas percentuais de cada idade na tabela renomeada Mulheres;
- Utilizei duas tabelas para a criação do projeto: uma com o valor bruto (quantidade de mulheres) e outra com os percentuais por território e idade;
- Ao conferir a Tabela 17, identifiquei que ela traz percentuais, e não quantidades;
- Baixei a Tabela 9514 que trás a quantidade;
- Somei os totais de cada faixa etária;
- Conferi os totais dos estados;
- Separei a sigla do estado no Power BI.

# 📚 Resultados:

**Estados com maior número de mulheres:**

- 1º SP | 18,0 milhões
- 2º MG | 8,2 milhões
- 3º RJ | 6,7 milhões
- 4º BA | 5,5 milhões
- 5º PR | 4,5 milhões

**Total: 42,9 milhões**
 
**Representa 54% do total de mulheres, São Paulo concentra 22,7%.**

# 👩Faixa Etária (Percentual do Total)

- 19 a 39 anos | 41,9% 
- 40 a 59 anos | 35,5%
- 60 a 79 anos | 19,0%
- 80+          | 3,6%

# Quantidade e Percentual por Regiões**

- Sudeste: 34,3 milhões (43,3%)
- Nordeste: 20,9 milhões (26,4%)
- Sul: 11,9 milhões (15,0%)
- Centro-Oeste: 6,1 milhões (7,8%)
- Norte: 5,9 milhões (7,5%)

## Regiões com percentual por idade

Em quantidade, o Sudeste lidera em todas as faixas etárias. Em proporção, o perfil varia:

**Mulheres de 19 a 39 anos têm maior proporção**:

- Norte (50,7%),
- Centro-Oeste (44,8%) e;
- Nordeste (43,9%).

*No total do Brasil, representam 41,9%.*

**Mulheres de 40 a 59 anos têm maior proporção:**

- Centro-Oeste (36,3%);
- Sudeste (35,9%) e;
- Sul (35,3%).
  
*No total do Brasil, representam 35,5%.*

# Perfil de Idade por Território
---
## Percentual das mulheres de cada território em cada faixa etária:

**Urbano:** 

- 19 a 39 anos | 32,1%
- 40 a 59 anos | 27,1%
- 60 a 79 anos | 14,5%
- 80+ | 2,8%

**Rural:**

- 19 a 39 anos | 29,5%
- 40 a 59 anos | 25,3%
- 60 a 79 anos | 14,0% 
- 80+ | 2,6%

**Favelas e Comunidades:**
- 19 a 39 anos | 34,4%
- 40 a 59 anos | 25,7%
- 60 a 79 anos | 10,1%
- 80+ | 1,4%

**Território Quilombola:**
- 19 a 39 anos | 31,9%
- 40 a 59 anos | 21,6%
- 60 a 79 anos | 10,1%
- 80+ | 2,1%

**Terras Indígenas:** 
- 19 a 39 anos | 31,2%
- 40 a 59 anos | 13,9%
- 60 a 79 anos | 5,3%
- 80+ | 1,3%

**Observações explicativas:**

Em todos os territórios, a faixa de 19 a 39 anos é a maior entre as mulheres adultas, e Favelas e Comunidades têm o perfil mais jovem (34,4%). 

Somando 19 a 59 anos, Favelas e Comunidades (60,1%) e Urbano (59,2%) têm as maiores proporções, e o território indígena a menor (45,1%). 

Esses percentuais consideram todas as mulheres do território, inclusive as de 0 a 18 anos, que não aparecem no dashboard. Por isso, as quatro faixas não somam 100%.

## Perfil por região, nas áreas urbana, rural e favelas e comunidades

Na área urbana, mulheres de 19 a 39 anos representam 35,5% no Norte, 33,7% no Centro-Oeste, 32,9% no Nordeste, 31,6% no Sul e 30,9% no Sudeste.
Na área urbana, mulheres de 40 a 59 anos representam 28,0% no Sudeste, 27,2% no Sul, 26,9% no Centro-Oeste, 26,4% no Nordeste e 23,5% no Norte.
Na área rural, mulheres de 19 a 39 anos representam 31,4% no Norte, 30,7% no Nordeste, 27,9% no Centro-Oeste, 27,6% no Sudeste e 26,3% no Sul.
Na área rural, mulheres de 40 a 59 anos representam 28,5% no Sudeste e no Sul, 28,2% no Centro-Oeste, 24,3% no Nordeste e 20,4% no Norte. Sul e Sudeste também têm mais mulheres de 60 a 79 anos no rural (19,0% e 16,8%).
Nas Favelas e Comunidades, mulheres de 19 a 39 anos representam 35,6% no Norte, 35,3% no Centro-Oeste e 34,5% no Sudeste. As de 40 a 59 anos representam 27,2% no Nordeste, 25,8% no Sudeste e 24,9% no Centro-Oeste.

# Territórios indígena e quilombola

19 a 39 anos: as indígenas têm maior percentual no Sul (36,3%) e no Sudeste (34,6%). As quilombolas, no Norte (33,1%) e no Nordeste (32,0%).
40 a 59 anos: as indígenas se destacam no Nordeste (18,2%), Sul (15,8%) e Sudeste (14,8%). As quilombolas, no Sul (26,9%), Sudeste (24,5%) e Centro-Oeste (23,2%).

Conclusão
O Sudeste, o Nordeste e o Sul concentram 84,7% das mulheres de 19 anos ou mais.
As mulheres de 19 a 59 anos somam 77,4% do público analisado.
O público mais jovem, em proporção, está no Norte, Centro-Oeste e Nordeste. O perfil de idade também varia entre os territórios, o que indica a necessidade de ações segmentadas.
Recomendações (case hipotético)
Concentrar investimentos iniciais nos cinco estados com mais mulheres (42,9 milhões, cerca de 54% do total).
Desenvolver campanhas específicas para mulheres de 19 a 59 anos (77,4% do público).
Testar campanhas segmentadas por território: Urbano e Favelas e Comunidades têm mais mulheres de 19 a 59 anos em proporção (59,2% e 60,1%).
Coletar dados de consumo para criar um banco de dados de perfilamento.

Limitações e próximos passos

Os dados mostram a quantidade de mulheres e o perfil de idade, mas não trazem renda nem consumo. Por isso, a conclusão é exploratória e não permite afirmar se essas mulheres consomem cosméticos. Além disso, a quantidade de mulheres (Tabela 9514) e os percentuais por território (Tabela 17) vêm de tabelas diferentes, e a quantidade por território não foi analisada.

Próximos passos: cruzar com dados de renda e de consumo, e buscar a quantidade de mulheres por território.

# Ferramentas

- Power BI Desktop 
- Excel
- DBeaver

# Informações Autora:

Betania Batista, estudante de Ciência de Dados (Univesp) 
🔗 LinkedIn: <https://www.linkedin.com/in/betaniasb/>

# Nota final

Mais do que apresentar números, o objetivo foi transformar dados públicos em informações que possam apoiar a tomada de decisões.

Sei que a análise possui limitações e que ainda há oportunidades de aprofundamento, especialmente com o cruzamento de dados socioeconômicos e de consumo.

Este é o início de uma jornada de aprendizado, desenvolvimento e construção de novos projetos na área de Dados.

Obrigada por visitar meu projeto!


<img width="1166" height="660" alt="image" src="https://github.com/user-attachments/assets/e283a9c1-c3ab-4135-9150-754d7712ea1e" />
<img width="6150" height="3525" alt="Projeto1 (2)" src="https://github.com/user-attachments/assets/be332ed7-6774-449a-bc0d-4bbc5b24f483" />
<img width="1164" height="656" alt="image" src="https://github.com/user-attachments/assets/e45bf4bb-7a25-49a4-8054-fd765cf3fadf" />
<img width="12150" height="6900" alt="Projeto1 (4)" src="https://github.com/user-attachments/assets/b3c6414d-b8fd-4ad8-a6bf-94c090919010" />
<img width="6150" height="3525" alt="Projeto1 (5)" src="https://github.com/user-attachments/assets/dcf5d5d1-1241-4f40-9d91-8856620c25e9" />
<img width="12150" height="6900" alt="Projeto1 (6)" src="https://github.com/user-attachments/assets/3c269be2-d12f-4e88-9321-3fa5b3653291" />
<img width="6150" height="3525" alt="Projeto1 (7)" src="https://github.com/user-attachments/assets/3f3589b6-d6df-4d76-93f4-305469b03151" />
<img width="6150" height="3525" alt="Projeto1 (8)" src="https://github.com/user-attachments/assets/9b479742-45b1-42a8-a032-00a02741a6a9" />
<img width="6150" height="3525" alt="Projeto1 (9)" src="https://github.com/user-attachments/assets/7f937a71-536e-4cb0-98e4-7f21d7f986d5" />
<img width="1163" height="658" alt="image" src="https://github.com/user-attachments/assets/668f47a2-42ed-41c7-8322-8543b504a91f" />

[Tabela_17_Idade_e_caracteristicas_do_territorio.xlsx](https://github.com/user-attachments/files/35058825/Tabela_17_Idade_e_caracteristicas_do_territorio.xlsx)
[Tabela_9514_BE.xlsx](https://github.com/user-attachments/files/35058837/Tabela_9514_BE.xlsx)

[README.md.txt](https://github.com/user-attachments/files/35059002/README.md.txt)

Vídeo do Projeto
[Vídeo projeto Power Bi.zip](https://github.com/user-attachments/files/35062010/Video.projeto.Power.Bi.zip)

Arquivo Power BI
[Projeto_Be_Análise_de_Mulheres.zip](https://github.com/user-attachments/files/35060034/Projeto_Be_Analise_de_Mulheres.zip)

[Vídeo projeto Power Bi.zip](https://github.com/user-attachments/files/35062002/Video.projeto.Power.Bi.zip)






