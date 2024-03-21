# Sistema de Gerenciamento de Reservas

Este repositório contém um banco de dados SQL representando um sistema de gerenciamento de reservas de destinos turísticos, desenvolvido como parte de um curso sobre bancos de dados relacionais. O banco de dados inclui tabelas para usuários, destinos e reservas, juntamente com relacionamentos e dados de exemplo.

<p align="center">
  <img src="Banco relacional.png" alt="BancoDeDados">
</p>

## Estrutura do Banco de Dados

O banco de dados consiste em três tabelas principais:

### Tabela `usuarios`

- `id`: Identificador único do usuário (chave primária).
- `nome`: Nome do usuário.
- `email`: Endereço de e-mail do usuário.
- `data_nascimento`: Data de nascimento do usuário.
- `rua`: Rua do endereço do usuário.
- `numero`: Número do endereço do usuário.
- `cidade`: Cidade do endereço do usuário.
- `estado`: Estado do endereço do usuário.

### Tabela `destinos`

- `id`: Identificador único do destino (chave primária).
- `nome`: Nome do destino.
- `descrição`: Descrição do destino.

### Tabela `reservas`

- `id`: Identificador único da reserva (chave primária).
- `id_usuarios`: Referência ao ID do usuário que fez a reserva (chave estrangeira para a tabela `usuarios`).
- `id_destino`: Referência ao ID do destino da reserva (chave estrangeira para a tabela `destinos`).
- `data`: Data da reserva.
- `status`: Status da reserva (confirmado, pendente, cancelado, etc).

## Utilização do Banco de Dados

### Criação do Banco de Dados

```sql
CREATE DATABASE sistema_usuarios;
USE sistema_usuarios;

-- Tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(150) NOT NULL COMMENT 'E-mail do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
    rua VARCHAR(100),
    numero VARCHAR(10),
    cidade VARCHAR(50),
    estado VARCHAR(50)
);

-- Tabela de destinos
CREATE TABLE destinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE COMMENT 'Nome do destino',
    descrição VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);

-- Tabela de reservas
CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuarios INT,
    id_destino INT,
    data DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_usuarios) REFERENCES usuarios(id),
    FOREIGN KEY (id_destino) REFERENCES destinos(id)
);

-- Exemplo de consulta para exibir reservas com informações de usuários
SELECT * FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuarios;
```

## Agradecimento
Agradeço por explorar este repositório que contém um banco de dados SQL desenvolvido como parte de um curso sobre bancos de dados relacionais. Espero que este material seja útil para entender os conceitos fundamentais de gerenciamento de dados e inspire projetos futuros. Se houver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato. Obrigado pela sua atenção e interesse!



