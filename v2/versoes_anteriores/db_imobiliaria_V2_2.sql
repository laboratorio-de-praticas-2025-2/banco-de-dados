-- --------------------------------------------------------
-- Servidor:                     mysql-lp-imobiliaria.alwaysdata.net
-- Versão do servidor:           10.11.13-MariaDB - MariaDB Server
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para lp_imobiliaria
CREATE DATABASE IF NOT EXISTS `lp_imobiliaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `lp_imobiliaria`;

-- Copiando estrutura para tabela lp_imobiliaria.banner_index
CREATE TABLE IF NOT EXISTS `banner_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagem` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `banner_index_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.banner_index: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `banner_index` DISABLE KEYS */;
INSERT INTO `banner_index` (`id`, `url_imagem`, `descricao`, `usuario_id`, `ativo`) VALUES
	(1, '886b7dc997ba22ea656fd7ddee74d25d.png', 'Banner de promoção', 1, 1),
	(2, 'f09713a952f808e618746c2bf2865e80.png', 'Banner de terrenos', 4, 1),
	(3, '1a353146b3d3f2f8c3c52e631168eeed.png', 'Banner de apartamentos', 8, 1),
	(4, 'd15f4edb2802ea1281822c0b4f50b54a.png', 'Banner de casas', 1, 1),
	(5, '1f6554ad5353aba45c784f4d4250c708.png', 'Banner de financiamento', 4, 1),
	(6, '030c09d098ce5b6b09c2998435655157.png', 'Banner de aluguel', 8, 1),
	(7, 'c1912c07760bb20937b76e75c0a0e9a4.png', 'Banner de lançamento', 1, 1),
	(8, '1452bed35ae2c9b79caf6976be0ae134.png', 'Banner de rural', 4, 0),
	(9, 'a0d918e7fecee043aa705da0e0b87547.png', 'Banner de estudantes', 8, 1),
	(10, '52cf7d2ee1544c733c69c930f6327c69.png', 'Banner de condomínio', 1, 1);
/*!40000 ALTER TABLE `banner_index` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL,
  `url_imagem` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.blog: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `titulo`, `conteudo`, `data_publicacao`, `url_imagem`, `usuario_id`) VALUES
	(1, 'Mercado imobiliário em alta', 'Conteúdo sobre o mercado...', '2025-08-01', 'ebaa50a2f72853f108ee7150e5c9137f.png', 1),
	(2, 'Dicas para comprar imóvel', 'Conteúdo de dicas...', '2025-08-02', '21d768010a790144265bc13c251b2afe.png', 4),
	(3, 'Como financiar sua casa', 'Conteúdo sobre financiamento...', '2025-08-03', '46645f3cda60257fd3ba37005a85fcf7.png', 8),
	(4, 'Tendências de decoração', 'Conteúdo sobre decoração...', '2025-08-04', 'd1b94606023cfaf6cf18b8ab66ad3205.png', 1),
	(5, 'Imóveis para investimento', 'Conteúdo sobre investimento...', '2025-08-05', '7e1faf4253bf3a11b7bd118e624db7ac.png', 4),
	(6, 'Documentação necessária', 'Conteúdo sobre documentação...', '2025-08-06', 'c91824f1751e9da1c54d17e230228109.png', 8),
	(7, 'Como escolher o bairro', 'Conteúdo sobre bairros...', '2025-08-07', 'ebb40e00470af057bf9bc8efc7085e1f.png', 1),
	(8, 'Vantagens do aluguel', 'Conteúdo sobre aluguel...', '2025-08-08', '17327b4257e27af0f285688ffac239de.png', 4),
	(9, 'Imóveis sustentáveis', 'Conteúdo sobre sustentabilidade...', '2025-08-09', 'c2b2b1361c21854d899e3876ee3a8f45.png', 8),
	(10, 'Cuidados ao comprar terreno', 'Conteúdo sobre terrenos...', '2025-08-10', 'f829eb2a8c40550350142f8b2445b07e.png', 1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.casa
CREATE TABLE IF NOT EXISTS `casa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imovel_id` int(11) DEFAULT NULL,
  `quartos` int(11) DEFAULT NULL,
  `banheiros` int(11) DEFAULT NULL,
  `vagas` int(11) DEFAULT NULL,
  `possui_piscina` tinyint(1) DEFAULT NULL,
  `possui_jardim` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imovel_id` (`imovel_id`),
  CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.casa: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` (`id`, `imovel_id`, `quartos`, `banheiros`, `vagas`, `possui_piscina`, `possui_jardim`) VALUES
	(1, 1, 3, 2, 2, 0, 1),
	(2, 4, 4, 3, 2, 1, 1),
	(3, 7, 5, 4, 3, 1, 1),
	(4, 10, 3, 2, 1, 0, 1),
	(5, 2, 2, 1, 1, 0, 0),
	(6, 5, 3, 2, 2, 0, 1),
	(7, 8, 2, 1, 1, 0, 0),
	(8, 6, 4, 3, 2, 1, 1),
	(9, 3, 3, 2, 2, 0, 1),
	(10, 9, 2, 1, 1, 0, 0);
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.faq
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text DEFAULT NULL,
  `resposta` text DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.faq: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` (`id`, `pergunta`, `resposta`, `usuario_id`) VALUES
	(1, 'Como agendar uma visita?', 'Você pode agendar pelo site ou telefone.', 1),
	(2, 'Quais documentos são necessários?', 'RG, CPF e comprovante de renda.', 4),
	(3, 'Posso financiar qualquer imóvel?', 'Depende das condições do imóvel e do banco.', 8),
	(4, 'Como anunciar meu imóvel?', 'Apenas administradores podem anunciar.', 1),
	(5, 'Quais taxas são cobradas?', 'Taxa de corretagem e despesas administrativas.', 4),
	(6, 'Como funciona o aluguel sem fiador?', 'Utilizamos seguro fiança ou caução.', 8),
	(7, 'Imóveis aceitam pets?', 'Consulte as regras do condomínio.', 1),
	(8, 'Qual o prazo para resposta?', 'Até 48 horas úteis.', 4),
	(9, 'Como alterar meus dados?', 'Acesse sua conta e edite as informações.', 8),
	(10, 'Quais formas de pagamento?', 'Boleto, transferência ou cartão.', 1);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.imagem_imovel
CREATE TABLE IF NOT EXISTS `imagem_imovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imovel_id` int(11) DEFAULT NULL,
  `url_imagem` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imovel_id` (`imovel_id`),
  CONSTRAINT `imagem_imovel_ibfk_1` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.imagem_imovel: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `imagem_imovel` DISABLE KEYS */;
INSERT INTO `imagem_imovel` (`id`, `imovel_id`, `url_imagem`, `descricao`) VALUES
	(1, 1, 'b4c9a9a0af99f0ce96777c7d83545024.png', 'Fachada da casa'),
	(2, 1, '9f7bfffa7c2ffb57dc551c0714560571.png', 'Sala de estar'),
	(3, 2, '920f0ffe3de9b77beb33879ac336d10f.png', 'Vista do apartamento'),
	(4, 3, '3779aa3706a92973525577a233b7a7ca.png', 'Terreno amplo'),
	(5, 4, 'e2fbdada01973044f79f26b14a6dc38c.png', 'Cozinha moderna'),
	(6, 5, '8d06cbbc9a5e29279dd5c24b0919a863.png', 'Quarto principal'),
	(7, 6, 'cd963334417df01bf1441461e80319da.png', 'Área externa'),
	(8, 7, 'cdfb345b5d9e8dcbb879d8628e7e82e8.png', 'Piscina'),
	(9, 8, 'f6432be580f95a9cc93e5a583031005d.png', 'Varanda'),
	(10, 9, 'd2f01d50c0693be31ed2c3201cd64c53.png', 'Terreno plano');
/*!40000 ALTER TABLE `imagem_imovel` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.imobiliaria
CREATE TABLE IF NOT EXISTS `imobiliaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `imobiliaria_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.imobiliaria: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `imobiliaria` DISABLE KEYS */;
INSERT INTO `imobiliaria` (`id`, `nome`, `cnpj`, `telefone`, `email`, `endereco`, `cidade`, `estado`, `site`, `usuario_id`) VALUES
	(1, 'Imob Prime', '12.345.678/0001-99', '11988880001', 'contato@imobprime.com', 'Av. Paulista, 1000', 'São Paulo', 'SP', 'www.imobprime.com', 1);
/*!40000 ALTER TABLE `imobiliaria` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.imoveis
CREATE TABLE IF NOT EXISTS `imoveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `murado` tinyint(1) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tipo_negociacao` enum('venda','aluguel') NOT NULL DEFAULT 'venda',
  `status` enum('disponivel','indisponivel','vendido','locado') NOT NULL DEFAULT 'disponivel',
  `data_update_status` timestamp NULL DEFAULT NULL COMMENT 'Campo guarda o update do atributo status do imovel, atualizando para "vendido" vai ficar registrado que foi atualizado no determinado dia',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `imoveis_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.imoveis: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `imoveis` DISABLE KEYS */;
INSERT INTO `imoveis` (`id`, `tipo`, `endereco`, `cidade`, `estado`, `preco`, `area`, `descricao`, `data_cadastro`, `murado`, `latitude`, `longitude`, `usuario_id`, `tipo_negociacao`, `status`, `data_update_status`) VALUES
	(1, 'Casa', 'Rua das Flores, 123', 'São Paulo', 'SP', 550000.00, 80, 'Casa aconchegante', '2025-08-01', 1, -23.5616840, -46.6559810, 1, 'venda', 'locado', '2025-08-27 08:53:29'),
	(2, 'Apartamento', 'Av. Brasil, 456', 'Rio de Janeiro', 'RJ', 1200000.00, 200, 'Apartamento de luxo', '2025-07-15', 1, -22.9068470, -43.1728960, 4, 'venda', 'disponivel', NULL),
	(3, 'Terreno', 'Rua Verde, 789', 'Belo Horizonte', 'MG', 250000.00, 300, 'Terreno amplo', '2025-08-10', 0, -19.9166810, -43.9344930, 8, 'venda', 'disponivel', NULL),
	(4, 'Casa', 'Rua Azul, 321', 'Curitiba', 'PR', 3500.00, 120, 'Casa para família', '2025-08-05', 1, -25.4289540, -49.2671370, 1, 'venda', 'disponivel', NULL),
	(5, 'Apartamento', 'Av. Central, 654', 'Porto Alegre', 'RS', 800000.00, 90, 'Apartamento moderno', '2025-07-20', 1, -30.0346470, -51.2176580, 4, 'venda', 'disponivel', NULL),
	(6, 'Terreno', 'Rua Sul, 852', 'Salvador', 'BA', 180000.00, 400, 'Terreno para construção', '2025-08-12', 0, -12.9777490, -38.5016290, 8, 'venda', 'disponivel', NULL),
	(7, 'Casa', 'Rua Norte, 963', 'Fortaleza', 'CE', 450000.00, 110, 'Casa com piscina', '2025-08-03', 1, -3.7172200, -38.5433080, 1, 'venda', 'disponivel', NULL),
	(8, 'Apartamento', 'Av. Leste, 147', 'Manaus', 'AM', 600000.00, 75, 'Apartamento com vista', '2025-07-25', 1, -3.1190280, -60.0217310, 4, 'venda', 'disponivel', NULL),
	(9, 'Terreno', 'Rua Oeste, 258', 'Brasília', 'DF', 300000.00, 350, 'Terreno plano', '2025-08-08', 0, -15.7938890, -47.8827780, 8, 'venda', 'disponivel', NULL),
	(10, 'Casa', 'Rua Centro, 369', 'Recife', 'PE', 500000.00, 130, 'Casa reformada', '2025-08-06', 1, -8.0475620, -34.8770030, 1, 'venda', 'disponivel', NULL);
/*!40000 ALTER TABLE `imoveis` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.publicidade
CREATE TABLE IF NOT EXISTS `publicidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `url_imagem` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inativo, 1 = ativo',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `publicidade_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.publicidade: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `publicidade` DISABLE KEYS */;
INSERT INTO `publicidade` (`id`, `titulo`, `conteudo`, `url_imagem`, `usuario_id`, `ativo`) VALUES
	(1, 'Promoção de Casas', 'Descontos especiais!', '389bba8366270c959834284c73c52f6b.png', 1, 1),
	(2, 'Terrenos em oferta', 'Terrenos com preços reduzidos!', 'e4dbfa108b7f3c0b82ffe937501d9dcc.png', 4, 1),
	(3, 'Apartamentos mobiliados', 'Confira nossas opções!', '9bfb7c277bda7764bad9de1a98de79d2.png', 8, 0),
	(4, 'Financiamento facilitado', 'Aproveite condições especiais!', '785a6f50ac49ffdf1d8f24ced4c7b8e9.png', 1, 1),
	(5, 'Imóveis na praia', 'Viva perto do mar!', 'f89c735071f460e2f844a56836e63c17.png', 4, 1),
	(6, 'Casas com piscina', 'Lazer garantido!', '97b17a19dfc37a4737f8c17881cfd302.png', 8, 1),
	(7, 'Imóveis para estudantes', 'Opções econômicas!', '74af630132ee09f0d8dd224e6b75c91a.png', 1, 1),
	(8, 'Lançamento de condomínio', 'Novidade no mercado!', 'ff3f4a26a52efa177b3619580000ea79.png', 4, 1),
	(9, 'Imóveis rurais', 'Tranquilidade e espaço!', '1cf8f0671f1ab3178c89dfd20257d6d9.png', 8, 1),
	(10, 'Aluguel sem fiador', 'Facilidade para você!', '4d0ff5cea20329d9cf7389ac624de2c9.png', 1, 1);
/*!40000 ALTER TABLE `publicidade` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.recomendacao_imovel
CREATE TABLE IF NOT EXISTS `recomendacao_imovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `imovel_id` int(11) DEFAULT NULL,
  `data_visita` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `imovel_id` (`imovel_id`),
  CONSTRAINT `recomendacao_imovel_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `recomendacao_imovel_ibfk_2` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.recomendacao_imovel: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `recomendacao_imovel` DISABLE KEYS */;
INSERT INTO `recomendacao_imovel` (`id`, `usuario_id`, `imovel_id`, `data_visita`) VALUES
	(1, 2, 1, '2025-08-01'),
	(2, 3, 2, '2025-08-02'),
	(3, 5, 3, '2025-08-03'),
	(4, 6, 4, '2025-08-04'),
	(5, 7, 5, '2025-08-05'),
	(6, 9, 6, '2025-08-06'),
	(7, 10, 7, '2025-08-07'),
	(8, 2, 8, '2025-08-08'),
	(9, 3, 9, '2025-08-09'),
	(10, 5, 10, '2025-08-10');
/*!40000 ALTER TABLE `recomendacao_imovel` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.terreno
CREATE TABLE IF NOT EXISTS `terreno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imovel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imovel_id` (`imovel_id`),
  CONSTRAINT `terreno_ibfk_1` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.terreno: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `terreno` DISABLE KEYS */;
INSERT INTO `terreno` (`id`, `imovel_id`) VALUES
	(7, 1),
	(4, 2),
	(1, 3),
	(8, 4),
	(5, 5),
	(2, 6),
	(9, 7),
	(6, 8),
	(3, 9),
	(10, 10);
/*!40000 ALTER TABLE `terreno` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `nivel` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = administrador, 1 = visitante',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.usuario: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `celular`, `nivel`) VALUES
	(1, 'Ana Silva', 'ana@email.com', 'senha1', '11999990001', 0),
	(2, 'Bruno Costa', 'bruno@email.com', 'senha2', '11999990002', 1),
	(3, 'Carlos Souza', 'carlos@email.com', 'senha3', '11999990003', 1),
	(4, 'Daniela Lima', 'daniela@email.com', 'senha4', '11999990004', 0),
	(5, 'Eduardo Alves', 'eduardo@email.com', 'senha5', '11999990005', 1),
	(6, 'Fernanda Rocha', 'fernanda@email.com', 'senha6', '11999990006', 1),
	(7, 'Gabriel Pinto', 'gabriel@email.com', 'senha7', '11999990007', 1),
	(8, 'Helena Dias', 'helena@email.com', 'senha8', '11999990008', 0),
	(9, 'Igor Martins', 'igor@email.com', 'senha9', '11999990009', 1),
	(10, 'Juliana Melo', 'juliana@email.com', 'senha10', '11999990010', 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para trigger lp_imobiliaria.trigger_on_update_status_imoveis
DELIMITER //
CREATE TRIGGER trigger_on_update_status_imoveis
BEFORE UPDATE ON imoveis
FOR EACH ROW
BEGIN
	IF NEW.status <> OLD.status THEN
		SET NEW.data_update_status = CONVERT_TZ(UTC_TIMESTAMP(), 'UTC', 'America/Sao_Paulo');
	END IF;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;