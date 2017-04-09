-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Abr-2017 às 18:43
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sclbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `codCategoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `periodoTrocaCategoria` varchar(45) DEFAULT NULL,
  `proximaCategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`codCategoria`, `nome`, `descricao`, `periodoTrocaCategoria`, `proximaCategoria`) VALUES
(1, 'Super Lancamento', '', '3', '2'),
(2, 'Lancamento', '', '5', '3'),
(3, 'Normal', '', '12', '4'),
(4, 'Catalogo', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `dataDeNasc` varchar(45) DEFAULT NULL,
  `estadoCIvil` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `telefone1` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `codDependente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`codCliente`, `nome`, `sexo`, `dataDeNasc`, `estadoCIvil`, `cpf`, `rg`, `cep`, `bairro`, `logradouro`, `numero`, `complemento`, `estado`, `cidade`, `telefone1`, `telefone2`, `celular`, `email`, `codDependente`) VALUES
(1, 'Nicolas Marcelo Carvalho', 'M', '25101995', 'Solteiro', '47587421629', '484453439', '36016180', 'Paineiras', 'Praca Coronel Aprigio Ribeiro', '455', '1', 'Minas Gerais', 'Juiz de Fora', '3232558878', '', '32984885778', '', NULL),
(2, 'Antonella Olivia Fernandes', 'F', '24081992', 'Casada', '69030229616', '157787333', '36020580', 'Vila Ideal', 'Rua Jose Monteiro', '24', '1', 'Minas Gerais', 'Juiz de Fora', '3232256497', '', '32984557889', '', NULL),
(3, 'Bianca Sophia Campos', 'F', '08041985', 'Casada', '62156123675', '264196132', '36055120', 'Grama', 'Rua Cinco', '45', '2', 'Minas Gerais', 'Juiz de Fora', '3232554685', '', '32985253211', '', NULL),
(4, 'Stefany Rafaela Carolina Oliveira', 'F', '25021970', 'Casada', '74238242670', '350133347', '36035790', 'Vila Montanhesa', 'Rua Vereador Jose Gasparete', '251', '2', 'Minas Gerais', 'Juiz de Fora', '3232254487', '', '32991995874', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `codDependente` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `grauParentesco` varchar(45) DEFAULT NULL,
  `dataNascimento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `codFilme` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `tituloOriginal` varchar(45) DEFAULT NULL,
  `nomeDiretor` varchar(45) DEFAULT NULL,
  `nomeAtorPrincipal` varchar(45) DEFAULT NULL,
  `nomePremiacoes` varchar(45) DEFAULT NULL,
  `anoProducao` varchar(45) DEFAULT NULL,
  `anoLancamento` varchar(45) DEFAULT NULL,
  `codGenero` int(11) NOT NULL,
  `codFornecedor` int(11) NOT NULL,
  `codCategoria` int(11) NOT NULL,
  `codTipoDeMidia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`codFilme`, `titulo`, `tituloOriginal`, `nomeDiretor`, `nomeAtorPrincipal`, `nomePremiacoes`, `anoProducao`, `anoLancamento`, `codGenero`, `codFornecedor`, `codCategoria`, `codTipoDeMidia`) VALUES
(1, 'Fragmentado', 'Fragmentado', '', '', '', '2017', '2017', 6, 2, 1, 3),
(2, 'O Chamado 3', 'O Chamado 3', '', '', '', '2016', '2017', 2, 5, 1, 1),
(3, 'Batman Vs Superman - A origem da Justica', 'Batman Vs Superman - A origem da Justica', '', '', '', '2016', '2016', 1, 1, 2, 1),
(4, 'Velozes e Furiosos 7', 'Velozes e Furiosos 7', '', '', '', '2016', '2016', 1, 2, 1, 2),
(5, 'O chamado 2', 'O chamado 2', '', '', '', '', '', 2, 4, 4, 3),
(6, 'Os Smurfs', 'Os Smurfs', '', '', '', '', '', 7, 3, 4, 3),
(7, 'Madagascar', 'Madagascar', '', '', '', '2002', '2002', 7, 1, 4, 3),
(8, 'Mad Max', 'Mad Max', '', '', '', '2016', '2016', 1, 3, 2, 2),
(9, 'O homem de aco', 'O homem de aco', '', '', '', '2013', '2013', 1, 4, 3, 3),
(10, 'Logan', 'Logan', '', '', '', '2017', '2017', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `codFornecedor` int(11) NOT NULL,
  `razaoSocial` varchar(45) DEFAULT NULL,
  `nomeFantasia` varchar(45) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `nomeContato` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `telefone1` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`codFornecedor`, `razaoSocial`, `nomeFantasia`, `cnpj`, `nomeContato`, `cep`, `bairro`, `logradouro`, `numero`, `complemento`, `estado`, `cidade`, `telefone1`, `telefone2`, `celular`, `email`) VALUES
(1, 'Felipe e Agatha Videos Ltda', 'Felipe e Agatha Videos Ltda', '06274399000185', 'Felipe', '36046680', 'Quintas das Avenidas', 'Rua Darcilia B. Nobrega', '215', '1', 'Minas Gerais', 'Juiz de Fora', '3237838947', '', '32985432872', 'qualidade@felipeagatha.com.br'),
(2, 'Benjamin e Nicolas Locadora Ltda', 'Benjamin e Nicolas Locadora Ltda', '36684957000141', 'Nicolas', '36051110', 'Alto Grajau', 'Nossa Senhora da Abadia', '2', '2', 'Minas Gerais', 'Juiz de Fora', '3232255456', '', '32984887858', 'contato@benjaminnicolas.com.br'),
(3, 'Yuri e Eduarda Midias ME', 'Yuri e Eduarda Midias ME', '78165527000163', 'Yuri', '38701213', 'Copacabana', 'Avenida Carlos Nogueira ', '3251', '3', 'Minas Gerais', 'Patos de Minas', '3435039157', '', '34988545478', ''),
(4, 'Alice e Marcelo Filmes Ltda', 'Alice e Marcelo Filmes Ltda', '01724445000187', 'Alice', '28910450', 'Jardim Flamboyant', 'Rua AntÃ´nio de Oliveira Gama', '632', '', 'Rio de Janeiro', 'Cabo Frio', '2238803902', '', '22992364808', 'manutencao@alicemarcelo.com.br'),
(5, 'Brenda e Benjamin Grafica ME', 'Brenda e Benjamin Grafica ME', '36780887000125', 'Brenda', '11676470', 'BalneaÂ¡rio Copacabana', 'Rua Yasushige Nagae', '552', '1', 'SÃ?Â£o Paulo', 'Caraguatatuba', '1236608570', '', '12992670658', 'atendimento@brendabenjamin.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `codGenero` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`codGenero`, `nome`, `descricao`) VALUES
(1, 'Acao', ''),
(2, 'Terror', ''),
(3, 'Comedia', ''),
(4, 'Romance', ''),
(5, 'Drama', ''),
(6, 'Suspense', ''),
(7, 'Animacao', ''),
(8, 'Ficcao', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locadora`
--

CREATE TABLE `locadora` (
  `codLocadora` int(11) NOT NULL,
  `dataDeLocacao` varchar(45) DEFAULT NULL,
  `codUsuario` int(11) NOT NULL,
  `codCliente` int(11) NOT NULL,
  `codFilme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodemidia`
--

CREATE TABLE `tipodemidia` (
  `codTipoDeMidia` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipodemidia`
--

INSERT INTO `tipodemidia` (`codTipoDeMidia`, `nome`, `descricao`) VALUES
(1, 'BlueRay', ''),
(2, 'DVD-DL', ''),
(3, 'DVD', 'Normal'),
(4, 'CD', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codUsuario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `dataDeNasc` varchar(45) DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `telefone1` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codUsuario`, `nome`, `sexo`, `dataDeNasc`, `estadoCivil`, `cpf`, `rg`, `login`, `senha`, `cep`, `bairro`, `logradouro`, `numero`, `complemento`, `estado`, `cidade`, `telefone1`, `telefone2`, `celular`, `email`) VALUES
(1, 'Matheus Rafael Juan Lima', 'M', '02051995', 'Solteiro', '16663648608', '180446642', 'mrlima', '5O4E5iqOLG', '36081782', 'Monte Castelo', 'Rua Rogerio Fernando Scoralick', '254', '1', 'Minas Gerais', 'Juiz de Fora', '3225655268', '', '32999602999', ''),
(2, 'Ramon de Souza Almeida', 'M', '06031992', 'Solteiro', '10039797694', '16640030', 'rsouza', 'rsa2146', '36052110', 'Sao Tarcisio', 'Rua Augusto Vicente Vieira', '45', '2', 'Minas Gerais', 'Juiz de Fora', '32379037', '', '32984919714', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codCliente`),
  ADD KEY `fk_Clientes_Dependentes1_idx` (`codDependente`);

--
-- Indexes for table `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`codDependente`);

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`codFilme`),
  ADD KEY `fk_Filmes_Generos1_idx` (`codGenero`),
  ADD KEY `fk_Filmes_Fornecedores1_idx` (`codFornecedor`),
  ADD KEY `fk_Filmes_Categorias1_idx` (`codCategoria`),
  ADD KEY `fk_Filmes_TipoDeMidia1_idx` (`codTipoDeMidia`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`codFornecedor`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`codGenero`);

--
-- Indexes for table `locadora`
--
ALTER TABLE `locadora`
  ADD PRIMARY KEY (`codLocadora`),
  ADD KEY `fk_Locadora_Usuarios1_idx` (`codUsuario`),
  ADD KEY `fk_Locadora_Clientes1_idx` (`codCliente`),
  ADD KEY `fk_Locadora_Filmes1_idx` (`codFilme`);

--
-- Indexes for table `tipodemidia`
--
ALTER TABLE `tipodemidia`
  ADD PRIMARY KEY (`codTipoDeMidia`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codUsuario`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_Clientes_Dependentes1` FOREIGN KEY (`codDependente`) REFERENCES `dependentes` (`codDependente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_Filmes_Categorias1` FOREIGN KEY (`codCategoria`) REFERENCES `categorias` (`codCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Filmes_Fornecedores1` FOREIGN KEY (`codFornecedor`) REFERENCES `fornecedores` (`codFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Filmes_Generos1` FOREIGN KEY (`codGenero`) REFERENCES `generos` (`codGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Filmes_TipoDeMidia1` FOREIGN KEY (`codTipoDeMidia`) REFERENCES `tipodemidia` (`codTipoDeMidia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `locadora`
--
ALTER TABLE `locadora`
  ADD CONSTRAINT `fk_Locadora_Clientes1` FOREIGN KEY (`codCliente`) REFERENCES `clientes` (`codCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Locadora_Filmes1` FOREIGN KEY (`codFilme`) REFERENCES `filmes` (`codFilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Locadora_Usuarios1` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
