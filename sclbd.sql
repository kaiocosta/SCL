-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Out-2016 às 02:38
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
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `periodoTrocaCategoria` varchar(45) DEFAULT NULL,
  `proximaCategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `nome`, `descricao`, `periodoTrocaCategoria`, `proximaCategoria`) VALUES
(1, 'Lançamento', NULL, '3 meses', 'Novo'),
(2, 'Novo', NULL, '6 meses', 'Antigo'),
(3, 'Antigo', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `pessoa_codPessoa` int(11) NOT NULL,
  `pessoa_endereco_codEndereco` int(11) NOT NULL,
  `pessoa_contato_codContato` int(11) NOT NULL,
  `dependente_codDependente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `pessoa_codPessoa`, `pessoa_endereco_codEndereco`, `pessoa_contato_codContato`, `dependente_codDependente`, `nome`) VALUES
(1, 1, 1, 1, 1, 'Cliente Teste 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `codContato` int(11) NOT NULL,
  `telefone1` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`codContato`, `telefone1`, `telefone2`, `celular`, `email`) VALUES
(1, '99999999', '88888888', '88887777', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `codDependentes` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `grauDeParenteso` varchar(45) DEFAULT NULL,
  `dataDeNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`codDependentes`, `nome`, `grauDeParenteso`, `dataDeNascimento`) VALUES
(1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `codEndereco` int(11) NOT NULL,
  `logradouro` text,
  `bairro` text,
  `cidade` text,
  `estado` varchar(2) DEFAULT NULL,
  `complemento` text,
  `cep` int(11) DEFAULT NULL,
  `numero` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`codEndereco`, `logradouro`, `bairro`, `cidade`, `estado`, `complemento`, `cep`, `numero`) VALUES
(1, 'Rua Teste', 'bairro teste', 'cidade teste', 'MG', '01', 36052110, '45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE `filme` (
  `codFilme` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `tituloOriginal` varchar(45) DEFAULT NULL,
  `nomeDiretor` varchar(45) DEFAULT NULL,
  `nomeAtorPrincipal` varchar(45) DEFAULT NULL,
  `nomePremiacoes` text,
  `anoProducao` text,
  `anoLancamento` text,
  `codGenero` int(11) NOT NULL,
  `codCategoria` int(11) NOT NULL,
  `codTipoDeMidia` int(11) NOT NULL,
  `codFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`codFilme`, `titulo`, `tituloOriginal`, `nomeDiretor`, `nomeAtorPrincipal`, `nomePremiacoes`, `anoProducao`, `anoLancamento`, `codGenero`, `codCategoria`, `codTipoDeMidia`, `codFornecedor`) VALUES
(1, 'Jurassic World', 'Jurassic World', 'Colin Trevorrow', 'Chris Pratt', NULL, '2014', '2015', 1, 1, 1, 0),
(2, 'Matrix', 'The Matrix', 'Wachowski Sisters', 'Keanu Reeves', NULL, '1995', '1996', 1, 3, 2, 0),
(3, 'Mad Max - Estrada da fúria', 'Mad Max - Fury Road', 'George Miller', 'Tom Hardy', NULL, '2012', '2015', 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `codFornecedor` int(11) NOT NULL,
  `razaoSocial` text,
  `nomeFantasia` text,
  `cnpj` varchar(45) DEFAULT NULL,
  `nomeDoContato` varchar(45) DEFAULT NULL,
  `codEndereco` int(11) NOT NULL,
  `codContato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`codFornecedor`, `razaoSocial`, `nomeFantasia`, `cnpj`, `nomeDoContato`, `codEndereco`, `codContato`) VALUES
(1, 'Fornecedor de Teste', 'Fornecedor para teste', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `codGenero` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`codGenero`, `nome`, `descricao`) VALUES
(1, 'Aventura', NULL),
(2, 'Terror', NULL),
(3, 'Drama', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locadora`
--

CREATE TABLE `locadora` (
  `codUsuario` int(11) NOT NULL,
  `dataLocacao` text,
  `usuario_pessoa_codPessoa` int(11) NOT NULL,
  `usuario_pessoa_endereco_codEndereco` int(11) NOT NULL,
  `usuario_pessoa_contato_codContato` int(11) NOT NULL,
  `cliente_codCliente` int(11) NOT NULL,
  `cliente_pessoa_codPessoa` int(11) NOT NULL,
  `cliente_pessoa_endereco_codEndereco` int(11) NOT NULL,
  `cliente_pessoa_contato_codContato` int(11) NOT NULL,
  `cliente_dependentes_codDependentes` int(11) NOT NULL,
  `filme_codFilme` int(11) NOT NULL,
  `filme_genero_codGenero` int(11) NOT NULL,
  `filme_categoria_codCategoria` int(11) NOT NULL,
  `filme_tipoDeMidia_codTipoDeMidia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `codPessoa` int(11) NOT NULL,
  `nome` text,
  `sexo` varchar(2) DEFAULT NULL,
  `dataDeNascimento` date DEFAULT NULL,
  `estadoCivil` varchar(20) DEFAULT NULL,
  `cpf` varchar(12) DEFAULT NULL,
  `rg` varchar(10) DEFAULT NULL,
  `endereco_codEndereco` int(11) NOT NULL,
  `contato_codContato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`codPessoa`, `nome`, `sexo`, `dataDeNascimento`, `estadoCivil`, `cpf`, `rg`, `endereco_codEndereco`, `contato_codContato`) VALUES
(1, 'Pessoa Teste', NULL, NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodemidia`
--

CREATE TABLE `tipodemidia` (
  `codTipoDeMidia` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipodemidia`
--

INSERT INTO `tipodemidia` (`codTipoDeMidia`, `nome`, `descricao`) VALUES
(1, 'BlueRay', NULL),
(2, 'DVD', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `pessoa_codPessoa` int(11) NOT NULL,
  `pessoa_endereco_codEndereco` int(11) NOT NULL,
  `pessoa_contato_codContato` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `login`, `senha`, `pessoa_codPessoa`, `pessoa_endereco_codEndereco`, `pessoa_contato_codContato`, `nome`) VALUES
(1, 'root', 'root', 1, 1, 1, 'Usuario Teste');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`,`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`,`dependente_codDependente`),
  ADD KEY `fk_cliente_pessoa1_idx` (`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`),
  ADD KEY `fk_cliente_dependentes1_idx` (`dependente_codDependente`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`codContato`);

--
-- Indexes for table `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`codDependentes`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codEndereco`);

--
-- Indexes for table `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`codFilme`,`codGenero`,`codCategoria`,`codTipoDeMidia`),
  ADD KEY `fk_filmes_genero1_idx` (`codGenero`),
  ADD KEY `fk_filmes_categoria2_idx` (`codCategoria`),
  ADD KEY `fk_filmes_tipoDeMidia1_idx` (`codTipoDeMidia`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`codFornecedor`,`codEndereco`,`codContato`),
  ADD KEY `fk_fornecedor_endereco1_idx` (`codEndereco`),
  ADD KEY `fk_fornecedor_contato2_idx` (`codContato`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`codGenero`);

--
-- Indexes for table `locadora`
--
ALTER TABLE `locadora`
  ADD PRIMARY KEY (`codUsuario`,`usuario_pessoa_codPessoa`,`usuario_pessoa_endereco_codEndereco`,`usuario_pessoa_contato_codContato`,`cliente_codCliente`,`cliente_pessoa_codPessoa`,`cliente_pessoa_endereco_codEndereco`,`cliente_pessoa_contato_codContato`,`cliente_dependentes_codDependentes`,`filme_codFilme`,`filme_genero_codGenero`,`filme_categoria_codCategoria`,`filme_tipoDeMidia_codTipoDeMidia`),
  ADD KEY `fk_locadora_cliente1_idx` (`cliente_codCliente`,`cliente_pessoa_codPessoa`,`cliente_pessoa_endereco_codEndereco`,`cliente_pessoa_contato_codContato`,`cliente_dependentes_codDependentes`),
  ADD KEY `fk_locadora_filmes1_idx` (`filme_codFilme`,`filme_genero_codGenero`,`filme_categoria_codCategoria`,`filme_tipoDeMidia_codTipoDeMidia`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`codPessoa`,`endereco_codEndereco`,`contato_codContato`),
  ADD KEY `fk_pessoa_endereco2_idx` (`endereco_codEndereco`),
  ADD KEY `fk_pessoa_contato2_idx` (`contato_codContato`);

--
-- Indexes for table `tipodemidia`
--
ALTER TABLE `tipodemidia`
  ADD PRIMARY KEY (`codTipoDeMidia`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`,`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`),
  ADD KEY `fk_usuario_pessoa1_idx` (`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_dependentes1` FOREIGN KEY (`dependente_codDependente`) REFERENCES `dependente` (`codDependentes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cliente_pessoa1` FOREIGN KEY (`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`) REFERENCES `pessoa` (`codPessoa`, `endereco_codEndereco`, `contato_codContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `filme`
--
ALTER TABLE `filme`
  ADD CONSTRAINT `fk_filmes_categoria2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_filmes_genero1` FOREIGN KEY (`codGenero`) REFERENCES `genero` (`codGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_filmes_tipoDeMidia1` FOREIGN KEY (`codTipoDeMidia`) REFERENCES `tipodemidia` (`codTipoDeMidia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fk_fornecedor_contato2` FOREIGN KEY (`codContato`) REFERENCES `contato` (`codContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fornecedor_endereco1` FOREIGN KEY (`codEndereco`) REFERENCES `endereco` (`codEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `locadora`
--
ALTER TABLE `locadora`
  ADD CONSTRAINT `fk_locadora_cliente1` FOREIGN KEY (`cliente_codCliente`,`cliente_pessoa_codPessoa`,`cliente_pessoa_endereco_codEndereco`,`cliente_pessoa_contato_codContato`,`cliente_dependentes_codDependentes`) REFERENCES `cliente` (`codCliente`, `pessoa_codPessoa`, `pessoa_endereco_codEndereco`, `pessoa_contato_codContato`, `dependente_codDependente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_locadora_filmes1` FOREIGN KEY (`filme_codFilme`,`filme_genero_codGenero`,`filme_categoria_codCategoria`,`filme_tipoDeMidia_codTipoDeMidia`) REFERENCES `filme` (`codFilme`, `codGenero`, `codCategoria`, `codTipoDeMidia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_locadora_usuario1` FOREIGN KEY (`codUsuario`,`usuario_pessoa_codPessoa`,`usuario_pessoa_endereco_codEndereco`,`usuario_pessoa_contato_codContato`) REFERENCES `usuario` (`codUsuario`, `pessoa_codPessoa`, `pessoa_endereco_codEndereco`, `pessoa_contato_codContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `fk_pessoa_contato2` FOREIGN KEY (`contato_codContato`) REFERENCES `contato` (`codContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pessoa_endereco2` FOREIGN KEY (`endereco_codEndereco`) REFERENCES `endereco` (`codEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_pessoa1` FOREIGN KEY (`pessoa_codPessoa`,`pessoa_endereco_codEndereco`,`pessoa_contato_codContato`) REFERENCES `pessoa` (`codPessoa`, `endereco_codEndereco`, `contato_codContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
