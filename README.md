# EP4 - SQL (DML) - Projeto NovaMente Learning

**Curso:** Analise e Desenvolvimento de Sistemas  
**Disciplina:** Modelagem de Banco de Dados  
**Aluno:** Yuri Hayashida

## Objetivo

Este repositorio contem os scripts SQL da Experiencia Pratica 4. A proposta e praticar comandos DML a partir de um modelo logico para a plataforma ficticia **NovaMente Learning**.

O projeto cobre:

- Criacao das tabelas principais do banco de dados
- Insercao de dados de exemplo com `INSERT`
- Consultas com `SELECT`, `JOIN`, `WHERE`, `ORDER BY` e `LIMIT`
- Atualizacoes com `UPDATE`
- Remocoes controladas com `DELETE`
- Consultas de validacao para conferir a integridade dos dados

## Tecnologias

- MySQL 8.0
- SQL DDL e DML
- MySQL Command Line Client ou MySQL Workbench

## Estrutura

```text
sql/
  00_schema.sql
  01_inserts.sql
  02_selects.sql
  03_updates_deletes.sql
  04_validacao.sql
```

## Como executar

Execute os arquivos na ordem abaixo:

```sql
SOURCE sql/00_schema.sql;
SOURCE sql/01_inserts.sql;
SOURCE sql/02_selects.sql;
SOURCE sql/03_updates_deletes.sql;
SOURCE sql/04_validacao.sql;
```

Tambem e possivel abrir cada arquivo no MySQL Workbench e executar na mesma ordem.

## Modelo resumido

O banco representa uma plataforma de cursos online com alunos, instrutores, cursos, aulas, matriculas e avaliacoes.

- Um instrutor pode ministrar varios cursos
- Um curso possui varias aulas
- Um aluno pode se matricular em varios cursos
- Uma matricula pode receber uma avaliacao

## Observacoes

Os scripts foram escritos para serem reexecutaveis durante os testes. O arquivo `00_schema.sql` recria o banco do zero, evitando conflitos com execucoes anteriores.
