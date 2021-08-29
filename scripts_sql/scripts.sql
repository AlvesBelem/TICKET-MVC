1. Banco de dados
db_ticket

2. Tabela Clientes:

CREATE TABLE tb_client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    document VARCHAR(20) NOT NULL,
    contact VARCHAR(14) NOT NULL,
    address VARCHAR(200) NOT NULL,
    phone VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    img BLOB NOT NULL
)

INSERT INTO tb_client (name, document, contact, address, phone, email) VALUES 
('Maria Fernandes', '060.719.330-13', 'Maria', 'Av. Almirante Barroso, 1020 - Belem-Pa', '(91)98179-3030', 'maria@email.com', '123'), 
('Carlos Souza', '717.667.920-73', 'Carlos', 'Av. Presidente Vargas, 1050 - Belem-Pa', '(91)98080-3030', 'maria@email.com', '123'), 
('Fernanda Silva', '722.593.780-48', 'Fernanda', 'Av. Julio Cezar, 2030 - Belem-Pa', '(91)98023-3050', 'fernanda@email.com', '123')


3. Tabela Operador:

CREATE TABLE tb_operator (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    departament VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    img BLOB NOT NULL
)

INSERT INTO tb_operator (name, departament, email, password) VALUES 
('Fábio Souza', 'Bimer', 'fabio.belem@email.com', '123'), 
('Marcelo Alves', 'Pack', 'marcelo.belem@email.com', '123'),
('Marcelo Pires', 'Bimer', 'pires.belem@email.com', '123')

4. Tabela Tickets:

CREATE TABLE tb_ticket (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_client INT NOT NULL,
    id_operator INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    tag VARCHAR(100) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    status VARCHAR(100) NOT NULL
)

ALTER TABLE tb_ticket ADD CONSTRAINT fk_tb_client FOREIGN KEY (id_client) REFERENCES tb_client(id)

ALTER TABLE tb_ticket ADD CONSTRAINT fk_tb_operator FOREIGN KEY (id_operator) REFERENCES tb_operator(id)

INSERT INTO tb_ticket (id_client, id_operator, name, phone, email, tag, subject, description, status) VALUES 
('1', '1', 'Maria', '(91) 98220-5050', 'maria@email.com', 'Bimer', 'Cadastrar clientes', 'Alterar cadastro de clientes', 'aberto'), 
('1', '2', 'Carlos', '(91)98080-3030', 'carlos@email.com', 'Contábil', 'Cadastrar empresa', 'Incluir empresa no contábil', 'aberto'), 
('3', '3', 'Fernanda', '(91)98023-3050', 'fernanda@email.com', 'Shop', 'Cadastrar operação', 'Incluir uma operação de venda', 'aberto')
