-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29-Mar-2017 às 20:43
-- Versão do servidor: 5.7.11
-- PHP Version: 7.0.4

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
(1, 'Lancamento', 'Tem nao', '3', 'Novo'),
(2, '2', 'Sei la', '3', '3');

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
(1, 'Zeca Urubu', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL);

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
(1, '23', '1', '1', '1', '1', '1', '2', 2, 1, 1, 1),
(2, '2', '2', '2', '2', '2', '2', '2', 1, 1, 1, 1);

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
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(2, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2'),
(3, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3');

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
(2, 'Terror', 'Doideras');

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
(1, 'BlueRay', 'Midia cara da porra'),
(2, '2', 'Dvd dad');

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
(1, 'Chuck Norris', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

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
