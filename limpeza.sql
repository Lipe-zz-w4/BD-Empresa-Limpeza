CREATE TABLE IF NOT EXISTS `Produtos` (
	`idProduto` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nome` varchar(50) NOT NULL,
	`categoria` varchar(20) NOT NULL,
	`preco_uni` decimal(5) NOT NULL,
	`data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`idProduto`)
);
CREATE TABLE IF NOT EXISTS `Funcionarios` (
	`idFuncionario` int AUTO_INCREMENT NOT NULL UNIQUE,
	`cpf` varchar(11) NOT NULL UNIQUE,
	`nome` varchar(70) NOT NULL,
	`sexo` text NOT NULL,
	`data_nasc` date NOT NULL,
	`data_contrato` date NOT NULL,
	`celular` varchar(15) NOT NULL,
	`email` varchar(40) NOT NULL,
	`cep` int NOT NULL,
	`logradouro` varchar(50) NOT NULL,
	`numero` int NOT NULL,
	`bairro` varchar(50) NOT NULL,
	`cidade` varchar(50) NOT NULL,
	`UF` varchar(2) NOT NULL,
	`setor` int NOT NULL,
	PRIMARY KEY (`idFuncionario`)
);
CREATE TABLE IF NOT EXISTS `Lotes` (
	`idLote` int AUTO_INCREMENT NOT NULL UNIQUE,
	`data_producao` datetime NOT NULL,
	`validade` datetime NOT NULL,
	`quantidade` int NOT NULL,
	`idProduto` int NOT NULL,
	`funcionarioResp` int NOT NULL,
	`setor` int NOT NULL,
	PRIMARY KEY (`idLote`)
);
CREATE TABLE IF NOT EXISTS `Setores` (
	`idSetor` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nomeSetor` varchar(25) NOT NULL,
	PRIMARY KEY (`idSetor`)
);
CREATE TABLE IF NOT EXISTS `Clientes` (
	`cpfCliente` varchar(11) NOT NULL UNIQUE,
	`data_nasc` date NOT NULL,
	`nome` varchar(50) NOT NULL,
	`telefone` varchar(16) NOT NULL,
	`celular` varchar(16) NOT NULL,
	`email` varchar(50),
	`cep` int NOT NULL,
	`logradouro` varchar(50) NOT NULL,
	`numero` int NOT NULL,
	`bairro` varchar(50) NOT NULL,
	`cidade` varchar(25) NOT NULL,
	`UF` varchar(2) NOT NULL,
	`feedback` varchar(30) NOT NULL,
	PRIMARY KEY (`cpfCliente`)
);
CREATE TABLE IF NOT EXISTS `Pedidos` (
	`idPedido` int AUTO_INCREMENT NOT NULL UNIQUE,
	`data_pedido` date NOT NULL,
	`quantidade` int NOT NULL,
	`observacoes` varchar(100),
	`status` varchar(20) NOT NULL DEFAULT 'pendente',
	`valor_total` decimal(10) NOT NULL,
	`data_entrega` date,
	`pagamento` varchar(20) NOT NULL,
	`cpfCliente` varchar(11) NOT NULL,
	`idLote` int NOT NULL,
	`idProduto` int NOT NULL,
	PRIMARY KEY (`idPedido`)
);
ALTER TABLE `Funcionarios` ADD CONSTRAINT `Funcionarios_fk14` FOREIGN KEY (`setor`) REFERENCES `Setores`(`idSetor`);
ALTER TABLE `Lotes` ADD CONSTRAINT `Lotes_fk4` FOREIGN KEY (`idProduto`) REFERENCES `Produtos`(`idProduto`);
ALTER TABLE `Lotes` ADD CONSTRAINT `Lotes_fk5` FOREIGN KEY (`funcionarioResp`) REFERENCES `Funcionarios`(`idFuncionario`);
ALTER TABLE `Lotes` ADD CONSTRAINT `Lotes_fk6` FOREIGN KEY (`setor`) REFERENCES `Setores`(`idSetor`);
ALTER TABLE `Pedidos` ADD CONSTRAINT `Pedidos_fk8` FOREIGN KEY (`cpfCliente`) REFERENCES `Clientes`(`cpfCliente`);
ALTER TABLE `Pedidos` ADD CONSTRAINT `Pedidos_fk9` FOREIGN KEY (`idLote`) REFERENCES `Lotes`(`idLote`);
ALTER TABLE `Pedidos` ADD CONSTRAINT `Pedidos_fk10` FOREIGN KEY (`idProduto`) REFERENCES `Produtos`(`idProduto`);