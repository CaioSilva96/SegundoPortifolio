-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jan-2022 às 21:48
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `caio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agencia`
--

CREATE TABLE `agencia` (
  `id_agencia` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `contacto` int(11) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `NIF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agencia`
--

INSERT INTO `agencia` (`id_agencia`, `nome`, `contacto`, `morada`, `NIF`) VALUES
(1, 'CleitonTour´s', 195487523, 'Rua Joao Mantas lt5 3F', 963258741),
(2, 'RogerioTour´s', 741258963, 'Av N10 LT.3 5F', 852145698),
(3, 'AdemilsonTour´s', 512154241, 'Rua Jonilson Neves LT.87 7E', 852741963),
(4, 'CleitinhoTour´s', 159756486, 'AV N57', 654852789),
(5, 'MamacitaTour´s', 753951456, 'Rua mamae', 951753654),
(6, 'HenriqueTour´s', 852456987, 'Rua Henrique', 753654897);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `id_atividade` int(11) NOT NULL,
  `nome_atividade` varchar(20) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `local` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id_atividade`, `nome_atividade`, `descricao`, `titulo`, `local`) VALUES
(1, 'Jungle', 'Linda caminhada pela floresta', 'Uma incrível floresta', 'Floresta da alcachofra'),
(2, 'Montanha', 'Bela visão e exercícios pela montanha do Himalaia', 'A montanha dos que não foram', 'Montanha dos Himalaia´s'),
(3, 'Antartica', 'Uma deslumbrante atividade pelos montes gelados da Antartica ', 'Os pinguins carecas', 'Lado Sul da Antartica'),
(4, 'Canoagem', 'Sensações radicais nas Cataratas do Iguaçu', 'Uma visão inesquecivel', 'Foz do iguaçu, Paraná, Brasil'),
(5, 'Paraquedismo', 'Salto realizado em queda livre, normalmente entre 3 e 4 mil metros de altura, onde o “passageiro” en', 'Uma experiência incrível', 'Áustria'),
(6, 'Surfe', 'Maresias é abraçada pela floresta tropical, ostentando uma paisagem e fauna incríveis', 'Surfando no talento', 'Maresias, Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `contacto` int(11) DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `NIF` int(9) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `contacto`, `Data_Nascimento`, `NIF`, `email`) VALUES
(1, 'Caio Silva', 965485741, '2003-03-15', 987456321, 'caio.silva.29601@esgc.pt'),
(2, 'Gabriel Ribeiro', 985872456, '2004-02-08', 2147483647, 'Gabriel.Ribeiro.29789@esgc.pt'),
(3, 'João Antunes', 967546821, '2005-01-10', 2147483647, 'Joao.antunes.29748@esgc.pt'),
(4, 'Diogo Oliveira', 965485741, '2003-05-18', 2147483647, 'Diogo.Oliveira.29546@esgc.pt'),
(5, 'Luiz Nogueira', 965745865, '2004-09-29', 987753654, 'Luiz.nogueira.29685@esgc.pt'),
(6, 'João Boeiero', 965962147, '2005-12-12', 852364951, 'joao.boeiero.29675@esgc.pt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_agencia`
--

CREATE TABLE `clientes_agencia` (
  `id_cliente` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes_agencia`
--

INSERT INTO `clientes_agencia` (`id_cliente`, `id_agencia`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 2),
(5, 4),
(6, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_pacote` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `preco` decimal(15,2) NOT NULL,
  `data_compra` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id_compra`, `id_pacote`, `id_cliente`, `preco`, `data_compra`) VALUES
(1, 1, 1, '140.00', '2022-01-09 21:44:43'),
(2, 2, 2, '250.00', '2022-01-09 21:44:43'),
(3, 3, 3, '170.00', '2022-01-09 21:45:46'),
(4, 4, 4, '258.00', '2022-01-09 21:45:46'),
(5, 5, 5, '265.00', '2022-01-09 21:46:16'),
(6, 6, 6, '471.00', '2022-01-09 21:46:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratos`
--

CREATE TABLE `contratos` (
  `id_contrato` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `data_assinatura` datetime NOT NULL,
  `prazo` datetime NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contratos`
--

INSERT INTO `contratos` (`id_contrato`, `id_funcionario`, `id_agencia`, `data_assinatura`, `prazo`, `valor`) VALUES
(1, 1, 1, '2022-01-09 21:01:46', '2028-01-09 21:01:46', 1200),
(2, 2, 1, '2022-01-09 21:01:46', '2029-01-09 21:01:46', 1024),
(3, 6, 5, '2022-01-09 21:02:51', '2032-01-09 21:02:51', 500),
(4, 5, 5, '2022-01-09 21:02:51', '2031-01-09 21:02:51', 425),
(5, 3, 1, '2022-01-09 21:03:44', '2050-01-09 21:03:44', 20214),
(6, 4, 6, '2022-01-09 21:03:44', '2054-01-09 21:03:44', 2214);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `contacto` int(11) DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `NIF` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome`, `contacto`, `Data_Nascimento`, `NIF`) VALUES
(1, 'Jacinda Almeida', 995859545, '1995-01-09', 288847569),
(2, 'Rodrigo Carlos', 789632541, '1996-04-15', 147852369),
(3, 'Cleiton Delas', 985698645, '1999-09-15', 852456987),
(4, 'Harry Potter', 852159762, '1997-01-18', 951236548),
(5, 'Vitor Fernandes', 895745854, '1798-05-17', 753698524),
(6, 'Carlos Almeida', 159753654, '1878-11-02', 159852365);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario_atividade`
--

CREATE TABLE `horario_atividade` (
  `id_atividade` int(11) NOT NULL,
  `id_pacote` int(11) NOT NULL,
  `data_hora_inicio` datetime NOT NULL,
  `data_hora_termino` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `horario_atividade`
--

INSERT INTO `horario_atividade` (`id_atividade`, `id_pacote`, `data_hora_inicio`, `data_hora_termino`) VALUES
(1, 1, '2022-01-17 20:10:39', '2022-01-17 23:10:39'),
(2, 2, '2022-01-09 21:47:17', '2022-01-09 21:47:17'),
(3, 3, '2022-01-09 21:47:17', '2022-01-09 21:47:17'),
(4, 4, '2022-01-09 21:47:30', '2022-01-09 21:47:30'),
(5, 5, '2022-01-09 21:47:30', '2022-01-09 21:47:30'),
(6, 6, '2022-01-09 21:47:54', '2022-01-09 21:47:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hoteis`
--

CREATE TABLE `hoteis` (
  `id_hotel` int(11) NOT NULL,
  `nome_hotel` varchar(20) NOT NULL,
  `contacto` int(13) NOT NULL,
  `n_quartos` int(11) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `hoteis`
--

INSERT INTO `hoteis` (`id_hotel`, `nome_hotel`, `contacto`, `n_quartos`, `endereco`, `email`) VALUES
(1, 'The Oberoi Cecil', 967951487, 35, 'The Oberoi Cecil, Shimla é um estabelecimento no centro da cidade e perto da estação de trem, em uma área que conta com uma boa área de compras.\r\n\r\nRua the Oberoi Cecil N 3', 'theoberoi@cecil.com'),
(2, 'Barry Memle Lakeside', 852159753, 74, 'Rua mamae do Ceu, Austria', 'BarryMemle@gmail.com'),
(3, 'Pousada Brig Maresia', 951745862, 47, 'Praia Maresias, São Sebastião', 'BrigMaresias@gmail.com'),
(4, 'San Rafael Comfort C', 369258177, 64, 'Rua San Rafael, Foz do Iguaçu', 'SanRafael@gmail.com'),
(5, 'Errante Ecolodge', 258963147, 3, 'Errante Ecolodge, Antartica', 'Errante@gmail.com'),
(6, 'Himalaia Experience ', 753963154, 23, 'Rua VallNod, Himalia', 'VallNod@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacotes_viagens`
--

CREATE TABLE `pacotes_viagens` (
  `id_pacote` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `id_voo` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nome_pacote` varchar(20) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `data_ida` datetime NOT NULL,
  `data_volta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pacotes_viagens`
--

INSERT INTO `pacotes_viagens` (`id_pacote`, `id_agencia`, `id_voo`, `id_hotel`, `nome_pacote`, `titulo`, `descricao`, `data_ida`, `data_volta`) VALUES
(1, 1, 1, 1, 'Floresta Espanha', 'Novos Ares', 'Linha caminhada pela floresta espanhola, com estadia no magnifico The Oberoi Cecil.', '2022-01-09 21:07:10', '2022-01-31 20:07:10'),
(2, 2, 2, 2, 'Alturas', 'Nas Alturas', 'Incrivel salto de paraquedas, deslumbrando tudo de melhor da Austria e com hospedagem no Barry Memle', '2022-01-09 21:23:27', '2022-05-09 21:23:27'),
(3, 3, 3, 4, 'Foz do Iguaçu', 'Pelas Aguas', 'Hospedagem no hotel de luxo San Rafael Comfort, seguido de muitas aventuras e sensações inesquecieve', '2022-04-10 21:23:27', '2022-09-02 21:23:27'),
(4, 4, 4, 3, 'Maresias no Talento', 'Surfando no talento', 'Estadia na linha pousada Brig Maresia, com um ar bem rustico e confortante. Experiencias radicais pelas praias de Maresias nessa viagem irá se tornar um verdadeiro amante do esporte', '2022-02-09 21:32:53', '2022-06-09 21:32:53'),
(5, 5, 5, 5, 'Ai que frio!!', 'Pinguins Montanhosos', 'Acho bom gostar de frio e de caminhadas, pois esta viagem ira te deixar totalmente fora da sua zona de conforto. Uma estadia no Errante Ecolodge com passeis pelas montanhas geladas da Antartica e o melhor de tudo conhecendos os pinguis carecas.', '2022-08-09 21:32:53', '2022-12-09 21:32:53'),
(6, 6, 6, 6, 'Pé Grande', 'Montanha', 'Se você sempre foi fanatico pelo Pé Grande, nesta viagem vai se deparar com coisas extraordinarias', '2022-05-09 21:38:17', '2022-06-09 21:38:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `voos`
--

CREATE TABLE `voos` (
  `id_voo` int(11) NOT NULL,
  `nome_voo` varchar(20) NOT NULL,
  `nome_aviao` varchar(20) NOT NULL,
  `empresa` varchar(20) NOT NULL,
  `contacto_empresa` int(13) NOT NULL,
  `data_hora_ida` datetime NOT NULL,
  `data_hora_volta` datetime NOT NULL,
  `capacidade` int(11) NOT NULL,
  `preco_voo` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `voos`
--

INSERT INTO `voos` (`id_voo`, `nome_voo`, `nome_aviao`, `empresa`, `contacto_empresa`, `data_hora_ida`, `data_hora_volta`, `capacidade`, `preco_voo`) VALUES
(1, 'Espanha', 'AirPlano445', 'TAP', 852697412, '2021-12-23 08:10:01', '2021-12-31 15:10:01', 54, '1200.00'),
(2, 'Austria', 'Boeing 747-8', 'TAP', 965985974, '2022-01-10 12:17:28', '2022-01-31 21:05:17', 474, '157.00'),
(3, 'Paraná, Brasil', 'Aero Spacelines 377-', 'GOL', 748568245, '2022-01-24 19:07:16', '2022-02-15 18:07:16', 477, '800.00'),
(4, 'Maresias, Brasil', 'Boeing C-17 Globemas', 'Avianca', 852741963, '2022-02-16 08:13:07', '2022-03-15 21:17:22', 570, '705.00'),
(5, 'Antartica', 'Antonov An-124', 'LATAM', 741852789, '2022-01-27 11:11:34', '2022-03-24 18:11:34', 875, '1024.00'),
(6, 'Himalaia´s', 'Lockheed C-5 Galaxy', 'IBERIA', 654987321, '2022-01-17 14:11:34', '2022-02-28 18:11:34', 701, '1154.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`id_agencia`);

--
-- Índices para tabela `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id_atividade`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `clientes_agencia`
--
ALTER TABLE `clientes_agencia`
  ADD KEY `fk_id_cliente` (`id_cliente`),
  ADD KEY `fk_id_agencia` (`id_agencia`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_id_pacote` (`id_pacote`),
  ADD KEY `fk_id_cliente` (`id_cliente`);

--
-- Índices para tabela `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `fk_id_funcionarios` (`id_funcionario`),
  ADD KEY `fk_id_agencia` (`id_agencia`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `horario_atividade`
--
ALTER TABLE `horario_atividade`
  ADD KEY `fk_id_atividade` (`id_atividade`),
  ADD KEY `fk_id_plano` (`id_pacote`);

--
-- Índices para tabela `hoteis`
--
ALTER TABLE `hoteis`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Índices para tabela `pacotes_viagens`
--
ALTER TABLE `pacotes_viagens`
  ADD PRIMARY KEY (`id_pacote`),
  ADD KEY `fk_id_agencia` (`id_agencia`),
  ADD KEY `fk_id_pacote` (`id_pacote`),
  ADD KEY `fk_id_voo1` (`id_voo`),
  ADD KEY `fk_id_hotel1` (`id_hotel`);

--
-- Índices para tabela `voos`
--
ALTER TABLE `voos`
  ADD PRIMARY KEY (`id_voo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agencia`
--
ALTER TABLE `agencia`
  MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id_atividade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `hoteis`
--
ALTER TABLE `hoteis`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pacotes_viagens`
--
ALTER TABLE `pacotes_viagens`
  MODIFY `id_pacote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `voos`
--
ALTER TABLE `voos`
  MODIFY `id_voo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clientes_agencia`
--
ALTER TABLE `clientes_agencia`
  ADD CONSTRAINT `fk_id_agencias` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`),
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_id_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_id_pacote` FOREIGN KEY (`id_pacote`) REFERENCES `pacotes_viagens` (`id_pacote`);

--
-- Limitadores para a tabela `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `fk_id_agencia` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`),
  ADD CONSTRAINT `fk_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`);

--
-- Limitadores para a tabela `horario_atividade`
--
ALTER TABLE `horario_atividade`
  ADD CONSTRAINT `fk_id_atividade` FOREIGN KEY (`id_atividade`) REFERENCES `atividades` (`id_atividade`),
  ADD CONSTRAINT `fk_id_pacote1` FOREIGN KEY (`id_pacote`) REFERENCES `pacotes_viagens` (`id_pacote`);

--
-- Limitadores para a tabela `pacotes_viagens`
--
ALTER TABLE `pacotes_viagens`
  ADD CONSTRAINT `fk_id_agencia2` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`),
  ADD CONSTRAINT `fk_id_hotel1` FOREIGN KEY (`id_hotel`) REFERENCES `hoteis` (`id_hotel`),
  ADD CONSTRAINT `fk_id_voo1` FOREIGN KEY (`id_voo`) REFERENCES `voos` (`id_voo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
