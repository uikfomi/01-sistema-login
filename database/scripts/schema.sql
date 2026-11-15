-- Extrato dos scripts do sistema integrado. Somente para desenvolvimento.
CREATE DATABASE IF NOT EXISTS salgaderia_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE salgaderia_db;

CREATE TABLE IF NOT EXISTS contatos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('CLIENTE', 'FORNECEDOR') NOT NULL,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(30), email VARCHAR(255), documento VARCHAR(30), endereco VARCHAR(255)
) ENGINE=InnoDB;
ALTER TABLE contatos
    ADD COLUMN observacoes TEXT,
    ADD COLUMN whatsapp VARCHAR(30),
    ADD COLUMN ponto_referencia VARCHAR(255),
    ADD COLUMN nome_empresa VARCHAR(150),
    ADD COLUMN categoria_insumo ENUM('FARINHA','OLEO','FRANGO','QUEIJO','EMBALAGENS','BEBIDAS','OUTROS'),
    ADD COLUMN prazo_entrega_dias INT UNSIGNED;

CREATE TABLE IF NOT EXISTS usuarios (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    perfil ENUM('CLIENTE', 'ADMIN') NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;
ALTER TABLE usuarios
    ADD COLUMN nome VARCHAR(150),
    ADD COLUMN ativo BOOLEAN NOT NULL DEFAULT TRUE,
    ADD COLUMN cliente_id BIGINT UNSIGNED,
    ADD CONSTRAINT fk_usuario_cliente FOREIGN KEY (cliente_id) REFERENCES contatos(id),
    ADD CONSTRAINT uq_usuario_cliente UNIQUE (cliente_id);
-- Usuários e senhas devem ser cadastrados no ambiente local.
