1. Banco de dados
db_ticket

2. Tabela Clientes

CREATE TABLE tb_client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    document VARCHAR(20) NOT NULL,
    contact VARCHAR(14) NOT NULL,
    address VARCHAR(200) NOT NULL,
    phone VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,    
);

INSERT INTO tb_client (name, document, contact, address, phone, email) VALUES 
('Maria Fernandes', '060.719.330-13', 'Maria', 'Av. Almirante Barroso, 1020 - Belem-Pa', '(91)98179-3030', 'maria@email.com'), 
('Carlos Souza', '717.667.920-73', 'Carlos', 'Av. Presidente Vargas, 1050 - Belem-Pa', '(91)98080-3030', 'maria@email.com'), 
('Fernanda Silva', '722.593.780-48', 'Fernanda', 'Av. Julio Cezar, 2030 - Belem-Pa', '(91)98080-3030', 'maria@email.com')


