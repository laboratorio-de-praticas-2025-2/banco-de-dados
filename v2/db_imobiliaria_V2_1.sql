-- --------------------------------------------------------
-- Servidor:                     mysql-lpbortone.alwaysdata.net
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
	(1, '7980ec030591bd749412e790aa1055bf.png', 'Banner de promoção', 1, 1),
	(2, 'e190bceb25344d8e0b7164c5a5756fc5.png', 'Banner de terrenos', 4, 1),
	(3, 'b672d5e15be497e589e78c3fc610835e.png', 'Banner de apartamentos', 8, 1),
	(4, '44750e3a0d2ee559c25e957f8435f765.png', 'Banner de casas', 1, 1),
	(5, '438dc1ae1fef90ee6a564a17d9dac511.png', 'Banner de financiamento', 4, 1),
	(6, '292a2d19867fed863e5b088245139dfd.png', 'Banner de aluguel', 8, 1),
	(7, 'd9f31a1e861aebb017dbf1a7bf91d9f7.png', 'Banner de lançamento', 1, 1),
	(8, 'aff10a427db393af027dfca75d244782.png', 'Banner de rural', 4, 1),
	(9, 'bd20ff619fe6b96f7b6fe64fbb8ec12d.png', 'Banner de estudantes', 8, 1),
	(10, '1aebc4e12d31eacd36738ac6edc09a78.png', 'Banner de condomínio', 1, 1);
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
	(1, 'Mercado imobiliário em alta', 'Conteúdo sobre o mercado...', '2025-08-01', 'd2aaa96fdc68d556f7b2c6af76e6b4ef.png', 1),
	(2, 'Dicas para comprar imóvel', 'Conteúdo de dicas...', '2025-08-02', '529218f458ded5f535c47dc31908088c.png', 4),
	(3, 'Como financiar sua casa', 'Conteúdo sobre financiamento...', '2025-08-03', 'b0a77fabb307effb4afca3327486afed.png', 8),
	(4, 'Tendências de decoração', 'Conteúdo sobre decoração...', '2025-08-04', '1200d6926c4a9d967d78e8dc1e8a3799.png', 1),
	(5, 'Imóveis para investimento', 'Conteúdo sobre investimento...', '2025-08-05', 'cb6d2c73ed78028b3787adcae520a74d.png', 4),
	(6, 'Documentação necessária', 'Conteúdo sobre documentação...', '2025-08-06', 'f18785f1d151a4d415fec730b36ab5fd.png', 8),
	(7, 'Como escolher o bairro', 'Conteúdo sobre bairros...', '2025-08-07', '88112baf08532e681839c3786dd49f38.png', 1),
	(8, 'Vantagens do aluguel', 'Conteúdo sobre aluguel...', '2025-08-08', '0542929ba8cb255305eda7da520ddffd.png', 4),
	(9, 'Imóveis sustentáveis', 'Conteúdo sobre sustentabilidade...', '2025-08-09', '9277210b57e61513687990a7a3ff9d35.png', 8),
	(10, 'Cuidados ao comprar terreno', 'Conteúdo sobre terrenos...', '2025-08-10', '7d785ce038606bc0ae0e8183970259f7.png', 1);
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
	(1, 1, '2e4b28e1af31d23ca90aa058d63b201b.png', 'Fachada da casa'),
	(2, 1, 'cd8942058832fa6a1980684fd1c321db.png', 'Sala de estar'),
	(3, 2, '225393a30f025ff2e93b84bcdb330b7f.png', 'Vista do apartamento'),
	(4, 3, 'b7e3581ce95deb5bf255c5793e704008.png', 'Terreno amplo'),
	(5, 4, 'c004d6f794291fe992e0b91af5090a70.png', 'Cozinha moderna'),
	(6, 5, '7ba30bcf0a47395bb2f7deaf2ca37e2d.png', 'Quarto principal'),
	(7, 6, '910babac693bec38547cee19c0ee2353.png', 'Área externa'),
	(8, 7, 'bd55ffbfc4399b545583a3b30098318f.png', 'Piscina'),
	(9, 8, 'e411c8a459ee9215cbacac57aa411297.png', 'Varanda'),
	(10, 9, 'd3e3da5476f3b85f66a294ae0ca878e1.png', 'Terreno plano');
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
  `ativo` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inativo, 1 = ativo',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `publicidade_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela lp_imobiliaria.publicidade: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `publicidade` DISABLE KEYS */;
INSERT INTO `publicidade` (`id`, `titulo`, `conteudo`, `url_imagem`, `usuario_id`, `ativo`) VALUES
	(1, 'Promoção de Casas', 'Descontos especiais!', '0ca018d910b49fd344f0368a6a412e84.png', 1, 1),
	(2, 'Terrenos em oferta', 'Terrenos com preços reduzidos!', '35c567b05658fcd58233a279ef57269a.png', 4, 1),
	(3, 'Apartamentos mobiliados', 'Confira nossas opções!', 'a8fb05c658b4752667ec783fac343612.png', 8, 0),
	(4, 'Financiamento facilitado', 'Aproveite condições especiais!', '8e472b28ecb5a322ed19940350af0286.png', 1, 1),
	(5, 'Imóveis na praia', 'Viva perto do mar!', '0893bc36c1d8a05f2550000335d190f5.png', 4, 1),
	(6, 'Casas com piscina', 'Lazer garantido!', 'fe70189075d7f9eb9b49f7fe66599705.png', 8, 1),
	(7, 'Imóveis para estudantes', 'Opções econômicas!', 'fccda05f4ca5ec335dabcea1f6f0f4d3.png', 1, 1),
	(8, 'Lançamento de condomínio', 'Novidade no mercado!', '5de3958cf92ba235648f4071f6e6b1da.png', 4, 1),
	(9, 'Imóveis rurais', 'Tranquilidade e espaço!', 'afd58c990487392df26102b45add44b4.png', 8, 1),
	(10, 'Aluguel sem fiador', 'Facilidade para você!', '90178112cf057978e0468add787b12a3.png', 1, 1);
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;