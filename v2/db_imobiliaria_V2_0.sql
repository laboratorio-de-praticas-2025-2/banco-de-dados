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
DROP DATABASE IF EXISTS `lp_imobiliaria`;
CREATE DATABASE IF NOT EXISTS `lp_imobiliaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `lp_imobiliaria`;

-- Copiando estrutura para tabela lp_imobiliaria.banner_index
DROP TABLE IF EXISTS `banner_index`;
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
	(1, 'https://img.com/banner1.jpg', 'Banner de promoção', 1, 1),
	(2, 'https://img.com/banner2.jpg', 'Banner de terrenos', 4, 1),
	(3, 'https://img.com/banner3.jpg', 'Banner de apartamentos', 8, 1),
	(4, 'https://img.com/banner4.jpg', 'Banner de casas', 1, 1),
	(5, 'https://img.com/banner5.jpg', 'Banner de financiamento', 4, 1),
	(6, 'https://img.com/banner6.jpg', 'Banner de aluguel', 8, 1),
	(7, 'https://img.com/banner7.jpg', 'Banner de lançamento', 1, 1),
	(8, 'https://img.com/banner8.jpg', 'Banner de rural', 4, 1),
	(9, 'https://img.com/banner9.jpg', 'Banner de estudantes', 8, 1),
	(10, 'https://img.com/banner10.jpg', 'Banner de condomínio', 1, 1);
/*!40000 ALTER TABLE `banner_index` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.blog
DROP TABLE IF EXISTS `blog`;
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
	(1, 'Mercado imobiliário em alta', 'Conteúdo sobre o mercado...', '2025-08-01', 'https://img.com/blog1.jpg', 1),
	(2, 'Dicas para comprar imóvel', 'Conteúdo de dicas...', '2025-08-02', 'https://img.com/blog2.jpg', 4),
	(3, 'Como financiar sua casa', 'Conteúdo sobre financiamento...', '2025-08-03', 'https://img.com/blog3.jpg', 8),
	(4, 'Tendências de decoração', 'Conteúdo sobre decoração...', '2025-08-04', 'https://img.com/blog4.jpg', 1),
	(5, 'Imóveis para investimento', 'Conteúdo sobre investimento...', '2025-08-05', 'https://img.com/blog5.jpg', 4),
	(6, 'Documentação necessária', 'Conteúdo sobre documentação...', '2025-08-06', 'https://img.com/blog6.jpg', 8),
	(7, 'Como escolher o bairro', 'Conteúdo sobre bairros...', '2025-08-07', 'https://img.com/blog7.jpg', 1),
	(8, 'Vantagens do aluguel', 'Conteúdo sobre aluguel...', '2025-08-08', 'https://img.com/blog8.jpg', 4),
	(9, 'Imóveis sustentáveis', 'Conteúdo sobre sustentabilidade...', '2025-08-09', 'https://img.com/blog9.jpg', 8),
	(10, 'Cuidados ao comprar terreno', 'Conteúdo sobre terrenos...', '2025-08-10', 'https://img.com/blog10.jpg', 1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.casa
DROP TABLE IF EXISTS `casa`;
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
DROP TABLE IF EXISTS `faq`;
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
DROP TABLE IF EXISTS `imagem_imovel`;
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
	(1, 1, 'https://img.com/imovel1_1.jpg', 'Fachada da casa'),
	(2, 1, 'https://img.com/imovel1_2.jpg', 'Sala de estar'),
	(3, 2, 'https://img.com/imovel2_1.jpg', 'Vista do apartamento'),
	(4, 3, 'https://img.com/imovel3_1.jpg', 'Terreno amplo'),
	(5, 4, 'https://img.com/imovel4_1.jpg', 'Cozinha moderna'),
	(6, 5, 'https://img.com/imovel5_1.jpg', 'Quarto principal'),
	(7, 6, 'https://img.com/imovel6_1.jpg', 'Área externa'),
	(8, 7, 'https://img.com/imovel7_1.jpg', 'Piscina'),
	(9, 8, 'https://img.com/imovel8_1.jpg', 'Varanda'),
	(10, 9, 'https://img.com/imovel9_1.jpg', 'Terreno plano');
/*!40000 ALTER TABLE `imagem_imovel` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.imobiliaria
DROP TABLE IF EXISTS `imobiliaria`;
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
DROP TABLE IF EXISTS `imoveis`;
CREATE TABLE IF NOT EXISTS `imoveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `murado` tinyint(1) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tipo_negociacao` enum('venda','aluguel') NOT NULL DEFAULT 'venda',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `imoveis_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.imoveis: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `imoveis` DISABLE KEYS */;
INSERT INTO `imoveis` (`id`, `tipo`, `endereco`, `cidade`, `estado`, `preco`, `status`, `area`, `descricao`, `data_cadastro`, `murado`, `latitude`, `longitude`, `usuario_id`, `tipo_negociacao`) VALUES
	(1, 'Casa', 'Rua das Flores, 123', 'São Paulo', 'SP', 550000.00, 'venda', 80, 'Casa aconchegante', '2025-08-01', 1, -23.5616840, -46.6559810, 1, 'venda'),
	(2, 'Apartamento', 'Av. Brasil, 456', 'Rio de Janeiro', 'RJ', 1200000.00, 'venda', 200, 'Apartamento de luxo', '2025-07-15', 1, -22.9068470, -43.1728960, 4, 'venda'),
	(3, 'Terreno', 'Rua Verde, 789', 'Belo Horizonte', 'MG', 250000.00, 'venda', 300, 'Terreno amplo', '2025-08-10', 0, -19.9166810, -43.9344930, 8, 'venda'),
	(4, 'Casa', 'Rua Azul, 321', 'Curitiba', 'PR', 3500.00, 'aluguel', 120, 'Casa para família', '2025-08-05', 1, -25.4289540, -49.2671370, 1, 'venda'),
	(5, 'Apartamento', 'Av. Central, 654', 'Porto Alegre', 'RS', 800000.00, 'venda', 90, 'Apartamento moderno', '2025-07-20', 1, -30.0346470, -51.2176580, 4, 'venda'),
	(6, 'Terreno', 'Rua Sul, 852', 'Salvador', 'BA', 180000.00, 'venda', 400, 'Terreno para construção', '2025-08-12', 0, -12.9777490, -38.5016290, 8, 'venda'),
	(7, 'Casa', 'Rua Norte, 963', 'Fortaleza', 'CE', 450000.00, 'venda', 110, 'Casa com piscina', '2025-08-03', 1, -3.7172200, -38.5433080, 1, 'venda'),
	(8, 'Apartamento', 'Av. Leste, 147', 'Manaus', 'AM', 600000.00, 'venda', 75, 'Apartamento com vista', '2025-07-25', 1, -3.1190280, -60.0217310, 4, 'venda'),
	(9, 'Terreno', 'Rua Oeste, 258', 'Brasília', 'DF', 300000.00, 'venda', 350, 'Terreno plano', '2025-08-08', 0, -15.7938890, -47.8827780, 8, 'venda'),
	(10, 'Casa', 'Rua Centro, 369', 'Recife', 'PE', 500000.00, 'venda', 130, 'Casa reformada', '2025-08-06', 1, -8.0475620, -34.8770030, 1, 'venda');
/*!40000 ALTER TABLE `imoveis` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.publicidade
DROP TABLE IF EXISTS `publicidade`;
CREATE TABLE IF NOT EXISTS `publicidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `url_imagem` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `publicidade_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.publicidade: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `publicidade` DISABLE KEYS */;
INSERT INTO `publicidade` (`id`, `titulo`, `conteudo`, `url_imagem`, `usuario_id`) VALUES
	(1, 'Promoção de Casas', 'Descontos especiais!', 'https://img.com/pub1.jpg', 1),
	(2, 'Terrenos em oferta', 'Terrenos com preços reduzidos!', 'https://img.com/pub2.jpg', 4),
	(3, 'Apartamentos mobiliados', 'Confira nossas opções!', 'https://img.com/pub3.jpg', 8),
	(4, 'Financiamento facilitado', 'Aproveite condições especiais!', 'https://img.com/pub4.jpg', 1),
	(5, 'Imóveis na praia', 'Viva perto do mar!', 'https://img.com/pub5.jpg', 4),
	(6, 'Casas com piscina', 'Lazer garantido!', 'https://img.com/pub6.jpg', 8),
	(7, 'Imóveis para estudantes', 'Opções econômicas!', 'https://img.com/pub7.jpg', 1),
	(8, 'Lançamento de condomínio', 'Novidade no mercado!', 'https://img.com/pub8.jpg', 4),
	(9, 'Imóveis rurais', 'Tranquilidade e espaço!', 'https://img.com/pub9.jpg', 8),
	(10, 'Aluguel sem fiador', 'Facilidade para você!', 'https://img.com/pub10.jpg', 1);
/*!40000 ALTER TABLE `publicidade` ENABLE KEYS */;

-- Copiando estrutura para tabela lp_imobiliaria.recomendacao_imovel
DROP TABLE IF EXISTS `recomendacao_imovel`;
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
DROP TABLE IF EXISTS `terreno`;
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
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nivel` enum('visitante','administrador') DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.usuario: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `nivel`, `celular`) VALUES
	(1, 'Ana Silva', 'ana@email.com', 'senha1', 'administrador', '11999990001'),
	(2, 'Bruno Costa', 'bruno@email.com', 'senha2', 'visitante', '11999990002'),
	(3, 'Carlos Souza', 'carlos@email.com', 'senha3', 'visitante', '11999990003'),
	(4, 'Daniela Lima', 'daniela@email.com', 'senha4', 'administrador', '11999990004'),
	(5, 'Eduardo Alves', 'eduardo@email.com', 'senha5', 'visitante', '11999990005'),
	(6, 'Fernanda Rocha', 'fernanda@email.com', 'senha6', 'visitante', '11999990006'),
	(7, 'Gabriel Pinto', 'gabriel@email.com', 'senha7', 'visitante', '11999990007'),
	(8, 'Helena Dias', 'helena@email.com', 'senha8', 'administrador', '11999990008'),
	(9, 'Igor Martins', 'igor@email.com', 'senha9', 'visitante', '11999990009'),
	(10, 'Juliana Melo', 'juliana@email.com', 'senha10', 'visitante', '11999990010');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
