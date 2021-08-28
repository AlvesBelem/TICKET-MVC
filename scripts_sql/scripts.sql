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

