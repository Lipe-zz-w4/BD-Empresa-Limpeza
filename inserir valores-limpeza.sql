USE limpeza;
INSERT INTO Clientes VALUES ("94597007806", "1976-01-13", "Francisco Diego Castro", "(44) 3872-5526", "(44) 98324-6970", "francisco.diego.cas@outlock.us", 87300000, "Avenida João Batista Salvadori", 121, "Residencial Fortunato Perdoncini", "Campo Mourão", "PR", "Bom"),
("01023863740", "1997-05-02", "Paulo Enzo Barbosa", "(63) 2828-7006", "(63) 99909-9670", "paulo_enzo_barbosa@hotmail.co.uk",77816210, "Rua Minas Gerais", 623, "Setor Oeste", "Araguaína", "TO", "Neutro"),
("70884711676", "1977-03-16", "Luan Anderson Filipe Monteiro", "(81) 2745-0010)", "(81) 99848-8415", "luanandersonmonteiro@yahoo.ie", 55421533, "Rua Sessenta e Cinco A", 898, "Maranguape II", "Paulista", "PE", "Ruim");

INSERT INTO Setores VALUES
(0, "Produção A"),
(0, "Produção B"),
(0, "Laboratório A");

INSERT INTO Funcionarios VALUES 
(0, "46070212100", "Gabrielly Natália Fátima Monteiro", "F", "1999-04-02", "2019-05-03", "(79) 98286-7518", "gabrielly_monteiro@oticascarol.com.br", 49082360, "Rua Novo Paraíso", 934, "Novo Paraíso", "Aracaju", "SE", 3),
(0, "63874441601", "Luís Antonio dos Santos", "M", "2001-04-26", "2021-03-07", "(65) 99140-8757", "luisantoniodossantos@meiryjoias.com.br", 78115550, "Rua Ipiranga", 607, "Ponte Nova", "Várzea Grande", "MT", 2),
(0, "09529552610","Sophia Catarina Fernandes", "F", "1995-01-26", "2016-02-02", "(62) 98915-5745", "sophia_catarina_fernandes@hotcom.br", 74922565, "Rua X 20", 399, "Sítios Santa Luzia", "Aparecida de Goiânia", "GO", 1);

INSERT INTO Produtos VALUES
(0, "Detergente líquido 500ml", "Limpeza geral", 4.99, "2024-03-10 08:30:00"),
(0, "Desinfetante 1L", "Desinfetação", 8.50, "2024-03-11 09:00:00"),
(0, "Sabão em Pó 2.5KG", "Higiene", 15.90, "2024-03-12 10:15:00");

INSERT INTO Lotes VALUES
(0, "2024-03-01 06:00:00", "2025-03-01 06:00:00", 200, 1, 2, 2),
(0, "2024-03-05 07:30:00", "2025-06-05 07:30:00", 150, 2, 3, 1),
(0, "2024-03-10 08:00:00", "2026-03-10 08:00:00", 320, 3, 3, 1);

INSERT INTO Pedidos VALUES
(0, "2024-03-15", 3, "Entregar pela manhã", "Entregue", 24.95, "2024-03-17", "Pix", "01023863740", 2, 2),
(0, "2025-05-22", 10, "Vazio", "Entregue", 159.00, "2025-05-25", "Boleto", "70884711676", 3, 3),
(0, "2026-05-31", 3, "Campainha quebrada", "Enviado", 13.97, "2026-06-05", "Boleto", "94597007806", 1, 1);