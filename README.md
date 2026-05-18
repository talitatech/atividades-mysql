# 📚 Atividades - Banco de Dados Relacional (MySQL)

Repositório criado para as atividades práticas do módulo de MySQL - **Generation Brasil**.

---

## 📁 Estrutura do Repositório

```
atividades-mysql/
│
├── atividade1_basico/
│   ├── exe01_rh.sql
│   ├── exe02_ecommerce.sql
│   └── exe03_escola.sql
│
└── atividade2_join/
    ├── exe01_games_online.sql
    ├── exe02_pizzaria_legal.sql
    └── exe03_cursos_online.sql
```

---

## 📄 Atividade 1 - Introdução ao MySQL (Básico) ✅ CONCLUÍDA

Scripts com conceitos fundamentais: CREATE DATABASE, CREATE TABLE, INSERT, SELECT, UPDATE.

| Arquivo | Descrição | Requisitos atendidos |
|---------|-----------|----------------------|
| `exe01_rh.sql` | **RH** - Colaboradores | 5 atributos, 5 registros, SELECT salário > 2000 e < 2000, UPDATE |
| `exe02_ecommerce.sql` | **E-commerce** - Produtos | 5 atributos, 8 registros, SELECT preço > 500 e < 500, UPDATE |
| `exe03_escola.sql` | **Escola** - Estudantes | 5 atributos, 8 registros, SELECT nota > 7.0 e < 7.0, UPDATE |

---

## 📄 Atividade 2 - JOIN (Relacionamento entre Tabelas) ⏳ EM ANDAMENTO

Scripts com relacionamento entre duas tabelas usando **Chave Estrangeira** e consultas com **INNER JOIN**.

| Arquivo | Descrição | Requisitos atendidos |
|---------|-----------|----------------------|
| `exe01_games_online.sql` | **Games Online** | 2 tabelas (tb_classes, tb_personagens), FK, 5+8 registros, INNER JOIN, LIKE '%C%', poder > 2000, defesa BETWEEN 1000-2000 |
| `exe02_pizzaria_legal.sql` | **Pizzaria Legal** | 2 tabelas (tb_categorias, tb_pizzas), FK, 5+8 registros, INNER JOIN, LIKE '%M%', preço > 45, preço BETWEEN 50-100 |
| `exe03_cursos_online.sql` | **Cursos Online** | 2 tabelas (tb_categorias, tb_cursos), FK, 5+8 registros, INNER JOIN, LIKE '%J%', valor > 500, valor BETWEEN 600-1000 |

---

## 🔍 Exemplos de consultas da Atividade 2

### Games Online
```sql
-- Personagens com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Personagens com nome contendo a letra C
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Unindo personagens com suas classes
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
```

### Pizzaria Legal
```sql
-- Pizzas com valor > 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Pizzas com nome contendo a letra M
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Unindo pizzas com suas categorias
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
```

### Cursos Online
```sql
-- Cursos com valor > 500
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- Cursos com nome contendo a letra J
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- Unindo cursos com suas categorias
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
```

---

## 🚀 Como executar

1. Abra o **MySQL Workbench**
2. Conecte ao seu servidor MySQL local
3. Abra cada arquivo `.sql` (File → Open SQL Script)
4. Execute o script inteiro (⚡ raio)

```bash
# Clonar o repositório
git clone https://github.com/talitatech/atividades-mysql.git

# Entrar na pasta
cd atividades-mysql
```

---

## 🛠️ Tecnologias

- MySQL 8.0
- MySQL Workbench
- Git & GitHub

---

## 👩‍💻 Autora

**Talita Oliveira Santos**  
[GitHub](https://github.com/talitatech)

---

📌 *Repositório com todas as entregas do módulo de MySQL - Generation Brasil*
