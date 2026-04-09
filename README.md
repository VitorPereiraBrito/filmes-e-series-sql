# 🎬 Filmes & Séries - SQL

Projeto simples criado para praticar consultas SQL utilizando PostgreSQL.

A ideia foi montar um pequeno banco de dados com filmes e séries e, a partir disso, explorar consultas desde o básico até algumas análises mais interessantes.

---

## 📌 Tecnologias utilizadas

* PostgreSQL
* SQL

---

## 🗂️ Estrutura do projeto

```
filmes-e-series-sql/
├── database.sql
└── queries.sql
```

---

## 🧱 Estrutura do banco

O projeto possui duas tabelas principais:

### 🎥 Filmes

* Título
* Diretor
* Ano
* Gênero
* Duração
* Avaliação
* Bilheteria
* Custo

### 📺 Séries

* Título
* Criador
* Ano
* Gênero
* Temporadas
* Episódios
* Avaliação
* Canal
* Situação

---

## 🔍 O que foi praticado

* SELECT, WHERE, ORDER BY
* Funções agregadas (AVG, COUNT)
* GROUP BY
* Subqueries
* JOIN entre tabelas
* Cálculo de lucro (bilheteria - custo)

---

## 📊 Exemplos de consultas

* Filmes ordenados por lucro
* Média de avaliação por duração
* Séries finalizadas mais bem avaliadas
* Relação entre filmes e séries do mesmo gênero

---

## 🚀 Como executar

1. Criar o banco:

```sql
CREATE DATABASE filmes_e_series;
```

2. Executar o arquivo:

```sql
database.sql
```

3. Rodar as consultas:

```sql
queries.sql
```

---

## 📈 Objetivo

Esse projeto faz parte dos meus estudos em SQL, com foco em melhorar a lógica de consultas e análise de dados.

---

## 👨‍💻 Autor

Vitor Brito
