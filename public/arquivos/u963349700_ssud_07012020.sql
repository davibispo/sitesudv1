-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07/01/2020 às 14:38
-- Versão do servidor: 10.2.27-MariaDB
-- Versão do PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u963349700_ssud`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `calendars`
--

CREATE TABLE `calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizacao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evento` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `horario` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publico` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `calendars`
--

INSERT INTO `calendars` (`id`, `stake`, `organizacao`, `evento`, `data`, `horario`, `local`, `publico`, `ativo`, `created_at`, `updated_at`) VALUES
(102, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao templo.', '2019-01-12', 'Saída às 18:00 - 11/01/2019', 'Templo', 'Todos membros da estaca.', '1', '2019-01-11 17:09:35', '2019-10-25 14:06:50'),
(103, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-02-09', '18:00', 'Templo (Saída dia 08/02 as 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-13 22:38:43', '2019-12-08 14:00:26'),
(104, 'Maceió Tabuleiro', 'Estaca', 'Cara a Cara - JAS', '2019-02-10', 'as 16:00', 'Sede da Estaca Tabuleiro', 'Todos Jovens Adultos Solteiro de 18 á 30 anos.', '1', '2019-01-13 22:42:55', '2019-12-08 14:00:30'),
(105, 'Maceió Tabuleiro', 'Estaca', 'Baile do Reencontro ORM (ORM, MAS e JAS)', '2019-03-15', '18:30 as 22:30', 'Sede da Estaca Tabuleiro', 'Membros da  ORM, JAS e MAS', '1', '2019-01-13 22:46:53', '2019-03-11 08:16:37'),
(106, 'Maceió Tabuleiro', 'Estaca', 'Acampamento CREJAS 2019', '2019-03-02', NULL, 'Saída Sede da Estaca', 'Membros do JAS da Estaca..', '1', '2019-01-13 22:59:20', '2019-02-17 08:48:30'),
(107, 'Maceió Tabuleiro', 'Estaca', 'Acampamento ORM - 2019', '2019-03-02', NULL, 'Saída Sede da Estaca Tabuleiro', 'Jovens da  ORM da Estaca Tabuleiro', '1', '2019-01-13 23:03:47', '2019-12-08 14:00:39'),
(108, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-03-09', '18:00', 'Templo (Saída dia 08/03 as 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-13 23:04:51', '2019-12-08 14:00:43'),
(109, 'Maceió Tabuleiro', 'Estaca', 'Convenção de Professores Escola Dominical', '2019-03-10', '16:00 as 17:30', 'Sede da Estaca Tabuleiro', 'Todos Professores da Escolas da Estaca Tabuleiro..', '1', '2019-01-13 23:07:56', '2019-12-08 14:00:46'),
(110, 'Maceió Tabuleiro', 'Estaca', 'Jantar Dançante para casais.', '2019-05-18', '19:00 as 22:00', 'Sede da Estaca Tabuleiro', 'Casais da Estaca Tabuleiro (Sociedade de Socorro)', '1', '2019-01-13 23:11:34', '2019-12-08 14:02:17'),
(111, 'Maceió Tabuleiro', 'Estaca', 'Conferência da ala Aeroclube', '2019-03-24', '10:10 as 12:10', 'Capela do Tabuleiro', 'Membros da Ala Aeroclube e convidados.', '1', '2019-01-13 23:13:56', '2019-12-08 14:00:50'),
(112, 'Maceió Tabuleiro', 'Estaca', 'Encontro de Coros da Primária', '2019-03-31', '15:00 as 16:30', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-13 23:15:40', '2019-12-08 14:00:54'),
(113, 'Maceió Tabuleiro', 'Estaca', 'Conferência da ala Benedito Bentes', '2019-03-31', '10:10 as 12:10', 'Capela do Benedito Bentes', 'Todos membros da Ala Benedito Bentes e convidados.', '1', '2019-01-13 23:17:46', '2019-12-08 14:00:56'),
(114, 'Maceió Tabuleiro', 'Estaca', 'Sacramental do amigo', '2019-03-31', '09:00 - 11:00/10:10 - 12:10', 'Para as unidades que não tiveram conferência neste mês.', 'Todas membros das ala que não tiveram conferência no mês.', '1', '2019-01-13 23:24:12', '2019-01-14 12:18:22'),
(115, 'Maceió Tabuleiro', 'Mundial', 'Conferência Geral', '2019-04-06', '00', 'Capelas do Benedito Bentes e Tabuleiro', 'Todos Membros e convidados', '1', '2019-01-13 23:51:24', '2019-12-08 14:01:43'),
(116, 'Maceió Tabuleiro', 'Mundial', 'Conferência Geral', '2019-04-07', '00', 'Capelas do Benedito Bentes e Tabuleiro', 'Todos Membros e convidados', '1', '2019-01-13 23:52:22', '2019-12-08 14:01:46'),
(117, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Contra incêndio', '2019-02-16', 'A combinar com a unidade', 'Capela do Universitario', 'Somente para o conselho ala Universitário', '1', '2019-01-13 23:56:33', '2019-12-08 14:00:32'),
(118, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Contra incêndio', '2019-04-20', NULL, 'Capela Gurguri', 'Somente para o conselho da ala Gurguri', '1', '2019-01-13 23:58:29', '2019-12-08 14:01:53'),
(119, 'Maceió Tabuleiro', 'Estaca', 'Serão de Palestras Workshop - JAS', '2019-04-27', '18:00 as 21:00', 'Sede da Estaca Tabuleiro', 'Adultos Solteiros de 18 a 30 anos.', '1', '2019-01-14 00:01:44', '2019-04-14 10:47:29'),
(120, 'Maceió Tabuleiro', 'Estaca', 'Treinamento geral da liderança da estaca', '2019-04-28', '16:00 as 18:00', 'Sede da Estaca Tabuleiro', 'Lideranças da Estaca Tabuleiro', '1', '2019-01-14 00:02:48', '2019-02-08 00:37:44'),
(121, 'Maceió Tabuleiro', 'Estaca', 'Aniversário da OM', '2019-05-04', '08:00 às 12:00', 'Piquenique no Parque Municipal', 'Jovens e Lideres da OM da Estaca Tabuleiro', '1', '2019-01-14 00:08:22', '2019-04-23 16:43:40'),
(122, 'Maceió Tabuleiro', 'Estaca', 'Torneio de futsal da Estaca da OR', '2019-05-18', '06:00 às 14:00', 'Sede da Estaca Tabuleiro', 'Jovens da OR da Estaca Tabuleiro', '1', '2019-01-14 00:10:09', '2019-12-08 14:02:06'),
(123, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-05-11', '18:00', 'Templo (Saída dia 10/05 as 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 00:11:47', '2019-12-08 14:02:03'),
(124, 'Maceió Tabuleiro', 'Estaca', 'Super Mutual - ORM', '2019-05-25', '10:00 as 18:00', 'Sede da Estaca Tabuleiro', 'Jovens da  ORM da Estaca Tabuleiro', '1', '2019-01-14 00:13:02', '2019-12-08 14:02:20'),
(125, 'Maceió Tabuleiro', 'Estaca', 'Reunião Geral do Sacerdócio', '2019-06-02', '16:00 às 18:00', 'Sede da Estaca Tabuleiro', 'Todos portadores do Sacerdócio da Estaca Tabuleiro', '1', '2019-01-14 00:14:35', '2019-12-08 14:02:23'),
(126, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-06-08', 'as 18:00', 'Templo (Saída dia 07/06 às 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 00:46:42', '2019-12-08 14:02:26'),
(127, 'Maceió Tabuleiro', 'Estaca', 'Prologo - Vinde a casa do Senhor!. (Atividade Pré-Conferência)', '2019-06-14', '19:00 às 21:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 00:49:32', '2019-12-08 14:02:29'),
(128, 'Maceió Tabuleiro', 'Estaca', 'Lual do JAS', '2019-06-28', '19:00 às 23:00', 'Sede da Estaca Tabuleiro', 'Todos Jovens Adultos Solteiro de 18 á 30 anos.', '1', '2019-01-14 00:51:17', '2019-06-07 22:02:22'),
(129, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Estaca Tabuleiro - 1ª Sessão Sabado', '2019-06-15', 'das 16:00 as 18:00', 'Sede da Estaca Tabuleiro', 'Todos lideres das Alas e Estaca.', '1', '2019-01-14 00:56:10', '2019-12-08 14:02:35'),
(130, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Estaca Tabuleiro', '2019-06-16', '10:00 as 12:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 00:57:12', '2019-12-08 14:02:37'),
(131, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Ala Pratagy', '2019-09-29', '09:00 as 11:00', 'Capela do Benedito Bentes', 'Todos membros da Ala e visitantes.', '1', '2019-01-14 00:59:19', '2019-12-08 14:03:46'),
(132, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Contra incêndio', '2019-06-29', 'Á combinar', 'Sede da Estaca Tabuleiro', 'Somente para o conselho das alas Tabuleiro e Aeroclube', '1', '2019-01-14 01:00:29', '2019-12-08 14:02:40'),
(133, 'Maceió Tabuleiro', 'Estaca', 'Conferência da ala Gurguri', '2019-10-27', '09:00 as 11:00', 'Capela Gurguri', 'Todos membros da Ala e visitantes.', '1', '2019-01-14 01:01:42', '2019-12-08 14:04:16'),
(134, 'Maceió Tabuleiro', 'Estaca', 'Sacramental do amigo', '2019-06-30', 'Horário dominical das Alas', 'Aeroclube, Benedito Bentes, Tabuleiro, Universitário', 'Todos membros das alas que não tiveram conferência neste mês..', '1', '2019-01-14 01:03:36', '2019-12-08 14:02:43'),
(135, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-07-13', '18:00', 'Templo (Saída dia 12/07 as 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 10:48:12', '2019-12-08 14:02:48'),
(136, 'Maceió Tabuleiro', 'Estaca', 'Encontro Missionário', '2019-07-14', '15:00 às 17:00', 'Sede da Estaca Tabuleiro', 'Todos missionários retornados da Estaca Tabuleiro.', '1', '2019-01-14 10:52:45', '2019-12-08 14:02:58'),
(137, 'Maceió Tabuleiro', 'Estaca', 'Projeto Mãos que ajudam: Mãozinhas Que Ajudam a Vovó e o Vovô', '2019-07-27', '08:00 às 12:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 10:55:21', '2019-12-08 14:03:06'),
(138, 'Maceió Tabuleiro', 'Estaca', 'Treinamento geral da liderança da estaca', '2019-07-28', '16:00 as 18:00', 'Sede da Estaca Tabuleiro', 'Lideranças da Estaca Tabuleiro', '1', '2019-01-14 10:56:49', '2019-06-30 06:35:48'),
(139, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-08-10', '18:00', 'Templo (Saída dia 09/08 as 18:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 11:00:41', '2019-12-08 14:03:09'),
(140, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Contra incêndio', '2019-08-17', 'A definir', 'Sede da Estaca Tabuleiro', '(Somente para o conselho das alas Pratagy e Benedito Bentes', '1', '2019-01-14 11:01:50', '2019-12-08 14:03:14'),
(141, 'Maceió Tabuleiro', 'Estaca', 'Festival de oratória - ORM (A nível de ala)', '2019-08-18', '16:00 as 18:00', '(A nível de ala)', 'Jovens da  ORM da Estaca Tabuleiro', '1', '2019-01-14 11:08:33', '2019-12-08 14:03:17'),
(142, 'Maceió Tabuleiro', 'Estaca', 'Convenção de Professores Escola Dominical', '2019-09-08', '16:00 as 18:00', 'Sede da Estaca Tabuleiro', 'Todos Professores da Escolas da Estaca Tabuleiro..', '1', '2019-01-14 11:13:19', '2019-12-08 14:03:22'),
(143, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-09-10', '08:00', 'Templo (Saída dia 10/09, volta 13/09)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 11:35:44', '2019-12-08 14:03:29'),
(144, 'Maceió Tabuleiro', 'Estaca', 'Atividade quórum de Sumo Sacerdotes da Estaca', '2019-09-16', '09:00 as 17:00', 'Capela Ala Universitário', 'Todos Sumo Sacerdotes da Estaca Tabuleiro', '1', '2019-01-14 11:38:03', '2019-12-08 14:03:31'),
(145, 'Maceió Tabuleiro', 'Estaca', 'Festival de oratória - ORM', '2019-09-29', '16:00 às 18:00', 'Sede da Estaca Tabuleiro', 'Jovens da  ORM da Estaca Tabuleiro', '1', '2019-01-14 11:52:37', '2019-12-08 14:03:49'),
(146, 'Maceió Tabuleiro', 'Estaca', 'Conferência da ala Tabuleiro', '2019-09-22', '09:00 as 11:00', 'Capela da Ala Tabuleiro', 'Todos membros da Ala Tabuleiro e convidados.', '1', '2019-01-14 11:59:34', '2019-12-08 14:03:34'),
(147, 'Maceió Tabuleiro', 'Estaca', 'Conferência da ala Universitário', '2019-11-24', '09:00 as 11:00', 'Capela da Ala Universitário', 'Todos membros da Ala Universitário e convidados.', '1', '2019-01-14 12:08:36', '2019-12-08 14:04:26'),
(148, 'Maceió Tabuleiro', 'Estaca', 'Sacramental do amigo', '2019-09-29', 'Horário dominical das Alas', 'Aeroclube, Benedito Bentes, Gurguri.', 'Todos membros das alas que não tiveram conferência no mês.', '1', '2019-01-14 12:11:07', '2019-12-08 14:03:52'),
(149, 'Maceió Tabuleiro', 'Estaca', 'Sacramental do amigo', '2019-03-31', 'Horário dominical das Alas', 'Alas Pratagy, Tabuleiro e Universitário', 'Todos membros das alas que não tiveram conferência neste mês..', '1', '2019-01-14 12:20:54', '2019-12-08 14:01:00'),
(150, 'Maceió Tabuleiro', 'Mundial', 'Conferência Geral', '2019-10-05', 'Local', 'Capelas do Benedito Bentes e Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:30:00', '2019-12-08 14:03:54'),
(151, 'Maceió Tabuleiro', 'Mundial', 'Conferência Geral', '2019-10-06', 'Local', 'Capelas do Benedito Bentes e Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:33:09', '2019-12-08 14:03:57'),
(152, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-10-12', '19:00', 'Templo (Saída dia 11/10 as 19:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 12:35:24', '2019-12-08 14:04:00'),
(153, 'Maceió Tabuleiro', 'Estaca', 'Atividade História da Família', '2019-10-19', '19:00h às 21:30h', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 12:36:17', '2019-12-08 14:04:05'),
(154, 'Maceió Tabuleiro', 'Estaca', 'Atividade da primária conjunta com a sociedade de Socorro', '2019-09-28', '08:00 às 16:30', 'Chácara Aracauã, Ltº Aracauã - Cidade Universitária', 'Mulheres e crianças + Líderes Sociedade de Socorro, Primária e Presidência da Estaca.', '1', '2019-01-14 12:38:04', '2019-12-08 14:03:44'),
(155, 'Maceió Tabuleiro', 'Estaca', 'Reunião do Quórum de Sumo Sacerdotes da Estaca', '2018-10-27', '16:00 às 18:00', 'se', NULL, '1', '2019-01-14 12:38:50', '2019-01-14 12:38:50'),
(156, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Trimestral da Liderança.da Estaca', '2019-10-27', '16:00 às 18:00', 'Sede da Estaca Tabuleiro', 'Todos que tenham um chamado na liderança  da Estaca', '1', '2019-01-14 12:40:38', '2019-12-08 14:04:19'),
(157, 'Maceió Tabuleiro', 'Estaca', 'Projeto Mãos que Ajudam - Casa Aberta Nacional e Prêmios da Comunidade', '2019-11-02', '15:00 às 21:00', 'Sede da Estaca Tabuleiro', 'A todos membros a comunidade em Geral.', '1', '2019-01-14 12:43:06', '2019-12-08 14:04:21'),
(158, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-11-15', '18:00', 'Templo (Saída dia 08/11 às 19:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 12:43:58', '2019-12-08 14:04:24'),
(159, 'Maceió Tabuleiro', 'Estaca', 'Noite dos Padrões - OM', '2019-12-13', '18:30 às 23:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 12:45:32', '2019-12-08 14:05:12'),
(160, 'Maceió Tabuleiro', 'Estaca', 'Super Mutual - Abelinhas/Diaconos', '2019-11-09', '10:00 as 15:00', 'Sede da Estaca Tabuleiro', 'Estaca Tabuleiro e lideres, abelinhas e diáconos.', '1', '2019-01-14 12:50:51', '2019-11-18 02:31:32'),
(161, 'Maceió Tabuleiro', 'Estaca', 'Recital Natalino (Atividade Pré-Conferência)', '2019-11-29', '19:00 as 21:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:52:18', '2019-11-12 13:35:43'),
(162, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Estaca Tabuleiro', '2019-11-30', 'Local', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:54:09', '2019-12-08 14:04:31'),
(163, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Estaca Tabuleiro', '2019-12-01', '10:00 as 12:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:54:59', '2019-12-08 14:04:34'),
(164, 'Maceió Tabuleiro', 'Estaca', 'Entrega de Brinquedos no Orfanato - JAS', '2019-12-07', '08:00 às 12:00', 'Sede da Estaca Tabuleiro', 'Todos Jovens Adultos Solteiro de 18 á 30 anos.', '1', '2019-01-14 12:55:56', '2019-12-08 14:04:56'),
(165, 'Maceió Tabuleiro', 'Estaca', 'Devocional de Natal da Presidência da Estaca', '2019-12-08', '16:00 às 18:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:56:45', '2019-12-08 14:05:01'),
(166, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2019-12-03', '08:00', 'Templo (Saída dia 03/12 às 08:00)', 'Todos membros da Estaca Tabuleiro', '1', '2019-01-14 12:58:13', '2019-12-08 14:04:49'),
(167, 'Maceió Tabuleiro', 'Estaca', 'Natal Branco', '2019-12-22', '17:00 às 18:00', 'Sede da Estaca Tabuleiro', 'Todos membros da Estaca Tabuleiro e convidados.', '1', '2019-01-14 12:58:50', '2019-12-08 14:05:15'),
(168, 'Maceió Pajuçara', 'Estaca', 'Caravana ao Templo', '2019-01-18', '20h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:02:44', '2019-01-29 17:02:44'),
(169, 'Maceió Pajuçara', 'Estaca', 'Reunião de Conselho de Liderança', '2019-01-20', '16h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:03:14', '2019-01-29 17:03:14'),
(170, 'Maceió Pajuçara', 'Mundial', 'Transmissão do Devocional Mundial para os Jovens Audltos', '2019-01-20', '18h00', 'Sede da Estaca', 'Jovens Adultos', '1', '2019-01-29 17:03:55', '2019-01-30 14:27:32'),
(171, 'Maceió Pajuçara', 'Estaca', 'Reunião do Comitê de Bem-Estar com os Bispos', '2019-01-26', '17h00', 'Sede da Estaca', 'Bispos', '1', '2019-01-29 17:04:22', '2019-01-30 14:27:39'),
(172, 'Maceió Pajuçara', 'Estaca', 'Reunião de Bispados da Estaca', '2019-01-26', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:04:50', '2019-01-29 17:04:50'),
(173, 'Maceió Pajuçara', 'Estaca', 'Devocional de Autossuficiência', '2019-01-27', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:05:11', '2019-01-29 17:05:11'),
(174, 'Maceió Pajuçara', 'Estaca', 'Fechando as Malas Acampamento 2019', '2019-02-09', '17h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:05:43', '2019-01-29 17:05:43'),
(175, 'Maceió Pajuçara', 'Estaca', 'Caravana ao Templo', '2019-02-15', '20h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:06:04', '2019-01-29 17:06:04'),
(176, 'Maceió Pajuçara', 'Estaca', 'Curso do BAE - Busca Acelerada de Emprego', '2019-02-23', '09h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:06:42', '2019-01-29 17:06:42'),
(177, 'Maceió Pajuçara', 'Estaca', 'Reunião de Treinamento de Liderança do Sacerdócio e Auxiliares da Estaca', '2019-02-24', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:07:04', '2019-01-29 17:07:04'),
(178, 'Maceió Pajuçara', 'Estaca', 'Acampamento da ORM', '2019-03-02', '08h00', NULL, NULL, '1', '2019-01-29 17:07:40', '2019-01-29 17:07:40'),
(179, 'Maceió Pajuçara', 'Estaca', 'Acampamento da ORM', '2019-03-03', '08h00', NULL, NULL, '1', '2019-01-29 17:07:59', '2019-01-29 17:07:59'),
(180, 'Maceió Pajuçara', 'Estaca', 'Acampamento da ORM', '2019-03-04', '08h00', NULL, NULL, '1', '2019-01-29 17:08:08', '2019-01-29 17:08:08'),
(181, 'Maceió Pajuçara', 'Estaca', 'Acampamento da ORM', '2019-03-05', '08h00', NULL, NULL, '1', '2019-01-29 17:08:17', '2019-01-29 17:08:17'),
(182, 'Maceió Pajuçara', 'Estaca', 'Acampamento da ORM', '2019-03-06', '08h00', NULL, NULL, '1', '2019-01-29 17:08:25', '2019-01-29 17:08:25'),
(183, 'Maceió Pajuçara', 'Soc. Socorro', 'Aniversário Sociedade de Socorro', '2019-03-09', '17h00', 'Sede da Estaca', NULL, '1', '2019-01-29 17:09:35', '2019-01-29 17:09:35'),
(184, 'Maceió Pajuçara', 'Ala', 'Conferência da Ala Feitosa', '2019-03-10', '08h00', 'Ala Feitosa', NULL, '1', '2019-01-30 14:22:28', '2019-01-30 14:22:28'),
(185, 'Maceió Pajuçara', 'Estaca', 'Caravana ao Templo', '2019-03-15', '20h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:22:50', '2019-01-30 14:22:50'),
(186, 'Maceió Pajuçara', 'Estaca', 'Projeto Raizes', '2019-03-24', '18h00', 'Sede da Estaca', 'Recém conversos', '1', '2019-01-30 14:23:34', '2019-01-30 14:23:34'),
(187, 'Maceió Pajuçara', 'Estaca', 'Baile do Reencontro - Acampamento ORM', '2019-03-30', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:28:31', '2019-01-30 14:28:31'),
(188, 'Maceió Pajuçara', 'Ala', 'Conferência da Ala Antares', '2019-03-31', '10h20', 'Ala Antares', NULL, '1', '2019-01-30 14:28:54', '2019-01-30 14:28:54'),
(189, 'Maceió Pajuçara', 'Estaca', 'Reunião do Comitê de Bem-Estar com os Bispos', '2019-04-14', '17h00', 'Sede da Estaca', 'Bispos', '1', '2019-01-30 14:29:17', '2019-01-30 14:29:17'),
(190, 'Maceió Pajuçara', 'Estaca', 'Reunião de Bispados da Estaca', '2019-04-14', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:29:36', '2019-01-30 14:29:36'),
(191, 'Maceió Pajuçara', 'Estaca', 'Conferência de Estaca - Presidida por Autoridade Geral', '2019-04-20', '16h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:29:57', '2019-01-30 14:29:57'),
(192, 'Maceió Pajuçara', 'Estaca', 'Conferência de Estaca - Presidida por Autoridade Geral - Para Membros Adultos', '2019-04-20', '16h00', 'Sede da Estaca', 'Membros Adultos', '1', '2019-01-30 14:30:35', '2019-01-30 14:30:35'),
(193, 'Maceió Pajuçara', 'Estaca', 'Sessão Geral Conferência de Estaca - Presidida por Autoridade Geral', '2019-04-21', '10h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:30:56', '2019-01-30 14:30:56'),
(194, 'Maceió Pajuçara', 'Estaca', 'Devocional Templo e História da Família', '2019-04-21', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:31:11', '2019-01-30 14:31:11'),
(195, 'Maceió Pajuçara', 'Estaca', 'Pioneer47 - Atividade do JAS (Sábado de atividades variadas)', '2019-05-11', '16h00', 'Sede da Estaca', 'JAS', '1', '2019-01-30 14:35:26', '2019-01-30 14:35:26'),
(196, 'Maceió Pajuçara', 'Estaca', 'Atividade do MAS', '2019-05-11', '08h00', 'Sede da Estaca', 'MAS', '1', '2019-01-30 14:36:02', '2019-01-30 14:36:02'),
(197, 'Maceió Pajuçara', 'Estaca', 'Reunião de Treinamento de Liderança do Sacerdócio e Auxiliares da Estaca', '2019-05-12', '16h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:36:21', '2019-01-30 14:36:21'),
(198, 'Maceió Pajuçara', 'Estaca', 'Caravana ao Templo', '2019-05-17', '20h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:36:36', '2019-01-30 14:36:36'),
(199, 'Maceió Pajuçara', 'Estaca', 'Super Mutual', '2019-05-25', '16h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:36:53', '2019-01-30 14:36:53'),
(200, 'Maceió Pajuçara', 'Estaca', 'Reunião de Liderança da Escola Dominical da Estaca', '2019-05-26', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:37:19', '2019-01-30 14:37:19'),
(201, 'Maceió Pajuçara', 'Ala', 'Conferência da Ala Bariloche', '2019-06-09', '09h40', 'Ala Bariloche', NULL, '1', '2019-01-30 14:37:38', '2019-01-30 14:37:38'),
(202, 'Maceió Pajuçara', 'Estaca', 'Caravana ao Templo', '2019-06-14', '20h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:37:53', '2019-01-30 14:37:53'),
(203, 'Maceió Pajuçara', 'Ala', 'Conferência da Ala Canadá', '2019-06-23', '10h10', 'Ala Canadá', NULL, '1', '2019-01-30 14:38:10', '2019-01-30 14:38:10'),
(204, 'Maceió Pajuçara', 'Estaca', 'Reunião de Conselho de Liderança', '2019-06-30', '18h00', 'Sede da Estaca', NULL, '1', '2019-01-30 14:38:32', '2019-01-30 14:38:32'),
(205, 'Maceió Tabuleiro', 'Estaca', 'Caravana da Estaca', '2019-04-13', 'Saída 12/04 as 18:00', 'Sede da estaca', 'Todos membros  da estaca.', '1', '2019-03-10 14:54:37', '2019-12-08 14:01:48'),
(206, 'Maceió Tabuleiro', 'Estaca', 'Baile Reencontro', '2019-03-15', 'Das 18:30 as 22:00', 'Sede da estaca', 'Todos jovens da ORM.', '1', '2019-03-11 08:20:00', '2019-12-08 14:00:48'),
(207, 'Maceió Tabuleiro', 'Estaca', 'Conferência da Estaca Tabuleiro - 2ª Sessão Sabado', '2019-06-15', 'das 19:00 ás 21:00', 'Sede da Estaca Tabuleiro', 'Todos Adultos membros estaca.', '1', '2019-06-02 12:21:01', '2019-12-08 14:02:32'),
(208, 'Maceió Tabuleiro', 'Ala', 'Conferência da Ala Caetés', '2019-08-25', '10:10', 'Capela da Ala', 'Todos os membros e Convidadods', '1', '2019-07-15 14:10:00', '2019-12-08 14:03:20'),
(209, 'Maceió Tabuleiro', 'Estaca', 'Devocional do JAS. CREJAS 2020', '2019-10-13', '15:00', 'Capela B. Bentes', 'Todos os Jovens Adultos Solteiros', '1', '2019-10-04 13:34:00', '2019-12-08 14:04:02'),
(210, 'Maceió Tabuleiro', 'Estaca', 'Reunião anual do quórum de sumo sacerdotes da estaca', '2019-10-20', '15:00', 'Sede da estaca', 'Presidência da estaca, bispados, Sumo conselheiros e patriarca', '1', '2019-10-04 13:40:26', '2019-12-08 14:04:08'),
(211, 'Maceió Tabuleiro', 'Estaca', 'Teste', '2019-01-17', '12h', 'Capela', 'Todos', '1', '2019-12-17 07:15:32', '2019-12-17 07:15:32'),
(212, 'Maceió Tabuleiro', 'Rapazes', 'Oficina do sacerdócio Aarônico', '2020-01-26', '16h', 'Sede da estaca', 'presidência dos quóruns, Consultores dos quóruns e bispados', '1', '2019-12-20 15:04:28', '2019-12-20 15:04:28'),
(213, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Trimestral da Liderança.da Estaca', '2020-01-05', '16h', 'Sede da estaca', 'Todos que tenham um chamado na liderança  da Estaca', '0', '2019-12-20 15:07:05', '2019-12-28 04:34:47'),
(214, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2020-01-10', '19h', 'Sede da estaca', 'Todos que estação alistados', '0', '2019-12-20 15:11:18', '2019-12-28 04:22:01'),
(215, 'Maceió Tabuleiro', 'Mundial', 'Devocional Mundial para os Jovens Adultos solteiros', '2020-01-12', '18h(Horário de Salt Lake)', 'Nas capelas sedes das Alas', 'Todos os Jovens Adultos 18 a 30 anos', '1', '2019-12-20 15:14:16', '2019-12-28 04:46:54'),
(216, 'Maceió Tabuleiro', 'Estaca', 'Reunião de Liderança do Sacerdócio', '2020-02-02', '16h', 'Sede da estaca', 'Sumo Conselho, presidência dos rapazes e presidência da escola dominical.', '0', '2019-12-20 15:16:31', '2019-12-28 05:03:52'),
(217, 'Maceió Tabuleiro', 'Estaca', 'Reunião Mensal do Conselho da Estaca', '2020-02-09', '16h', 'Sede da estaca', 'Sumo Conselho, Presidências da Soc. de Socorro, Moças e Primária', '1', '2019-12-20 15:18:42', '2019-12-28 05:10:40'),
(218, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao Templo', '2020-02-08', 'Saída, dia 07, às 19h', 'Sede da estaca', 'Para todos os membros alistados', '1', '2019-12-20 15:19:41', '2019-12-28 05:08:03'),
(219, 'Maceió Tabuleiro', 'Estaca', 'Conferência de Jovens da Estaca.', '2020-02-22', '08 da Manhã', 'Sede da estaca', 'Para todos Os Jovens de 14 a 18 anos', '1', '2019-12-20 15:22:48', '2019-12-20 15:22:48'),
(220, 'Maceió Tabuleiro', 'Estaca', 'Noite temática do JAS- O Reencontro', '2020-02-28', '18hs', 'Orla marítima', 'JAS da estaca', '1', '2019-12-20 15:24:55', '2019-12-28 05:21:36'),
(221, 'Maceió Tabuleiro', 'Ass. Públicos', 'Fóruns, Painéis e Palestras em pró da Cidadania, direitos Humanos e da Liberdade religiosa.', '2020-02-29', NULL, NULL, 'Todos os Membros da Estaca e Convidados', '1', '2019-12-20 15:26:42', '2019-12-20 15:26:42'),
(222, 'Maceió Tabuleiro', 'Mundial', 'Cara a Cara Para os Jovens', '2020-02-23', NULL, NULL, 'Para todos os Jovens', '1', '2019-12-20 15:27:57', '2019-12-20 15:27:57'),
(225, 'Maceió Tabuleiro', 'Estaca', 'Treinamento Trimestral da Liderança da Estaca', '2020-01-05', 'Das 16h às 18hs', 'Sede da Estaca', 'Sumo Conselho, Liderança da Estaca Consultores  JAS e MAS, CHF, e lideres de Autossuficiência;', '1', '2019-12-25 18:29:24', '2019-12-25 18:29:24'),
(226, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao templo', '2020-01-11', 'Saída dia 10, às 19h,', 'Sede da Estaca', 'Para todos os membros alistados', '1', '2019-12-25 18:33:30', '2019-12-25 18:33:30'),
(227, 'Maceió Tabuleiro', 'Estaca', 'Reunião geral trimestral com as lideranças das Alas', '2020-01-12', 'Das 16h, às 18hs.', 'Sede da Estaca', 'Presidências e Consultores de Organizações nas alas e especialistas de Autossuficiência.', '1', '2019-12-28 04:45:53', '2019-12-29 08:46:01'),
(228, 'Maceió Tabuleiro', 'Estaca', 'Reunião trimestral com os Bispados', '2020-01-18', '19hs', 'Sede da Estaca', 'Bispos e conselheiros, secretários das alas e executivos', '1', '2019-12-28 04:50:21', '2019-12-28 04:50:21'),
(229, 'Maceió Tabuleiro', 'Estaca', 'Reunião Mensal do Comitê do programa para as Crianças e Jovens', '2020-01-29', '19hs', 'Sede da Estaca', 'Presidência ORM da Estaca, Sumo Conselheiro responsável pelas Moças e Primária.', '1', '2019-12-28 04:56:05', '2019-12-28 04:56:05'),
(230, 'Maceió Tabuleiro', 'Estaca', 'Reunião Anual do Quórum de Sumo Sacerdotes da Estaca', '2020-02-02', 'Das 16h às 18hs.', 'Sede da Estaca', 'Presidência da Estaca, Sumo Conselho, Bispados e Patriarca Operante', '1', '2019-12-28 05:05:49', '2019-12-28 05:05:49'),
(231, 'Maceió Tabuleiro', 'Estaca', 'Reunião Mensal do Comitê do programa para as Crianças e Jovens', '2020-02-26', '19hs', 'Sede da Estaca', 'Presidência ORM da Estaca, Sumo Conselheiro responsável pelas Moças e Primária.', '1', '2019-12-28 05:14:10', '2019-12-28 05:14:10'),
(232, 'Maceió Tabuleiro', 'Mundial', 'Instruções de Templo e História da Família Para a Liderança (Eventos Mundiais)', '2020-02-27', 'Às 19h (Horário de Salt Lake)', NULL, NULL, '1', '2019-12-28 05:17:54', '2019-12-28 05:17:54'),
(233, 'Maceió Tabuleiro', 'Estaca', 'Convenção do ensino na estaca', '2020-03-01', 'Às 16hs.', 'Sede da Estaca', 'Para todos os professores da escola dominical das alas, instrutores e líderes das Organizações', '1', '2019-12-28 05:33:58', '2019-12-28 05:33:58'),
(234, 'Maceió Tabuleiro', 'Estaca', 'Atividade com as lideranças das Primárias', '2020-03-07', 'Às 16hs.', 'Sede da Estaca', 'Todas as irmãs que servem na presidência da primária das alas, professores e líderes de berçario.', '1', '2019-12-28 05:37:00', '2019-12-28 05:37:00'),
(235, 'Maceió Tabuleiro', 'Estaca', 'Reunião Geral do Sacerdócio da Estaca', '2020-03-08', 'Às 16hs.', 'Sede da Estaca', 'Para todos os portadores do sacerdócio Aarônico e de Melquesedeque da estaca', '1', '2019-12-28 05:38:01', '2019-12-28 05:38:01'),
(236, 'Maceió Tabuleiro', 'Estaca', 'Reunião com as Lideranças da Sociedade de Socorro das alas (Homenagem as Presidentas pioneiras - sociedade de socorro)', '2020-03-08', 'Às 16hs.', 'Sede da Estaca', 'Presidências das Soc. de Socorro das alas. (Irmãs que possuem outros chamados na org são convidadas)', '1', '2019-12-28 05:43:06', '2019-12-28 05:43:06'),
(237, 'Maceió Tabuleiro', 'Estaca', 'Caravana ao templo (SEMANAL)', '2020-03-17', 'Saída, dia 17, às 07h', 'Sede da Estaca', 'Para todos os membros alistados', '1', '2019-12-28 05:49:18', '2019-12-28 05:49:18'),
(238, 'Maceió Tabuleiro', 'Estaca', 'Reunião Mensal do Comitê do programa para as Crianças e Jovens', '2020-03-17', 'Às 19h', 'Sede da Estaca', 'Presidência ORM da Estaca, Sumo Conselheiro responsável pelas Moças e Primária.', '1', '2019-12-28 05:51:25', '2019-12-28 05:51:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `calleds`
--

CREATE TABLE `calleds` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `called` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priesthood` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `obs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_reject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `calleds`
--

INSERT INTO `calleds` (`id`, `stake`, `called`, `member`, `priesthood`, `ward`, `user_id`, `obs`, `status`, `reason_reject`, `ativo`, `created_at`, `updated_at`) VALUES
(82, 'Maceió Tabuleiro', 'Conselheiro na Presidência do Quorum de Élderes', 'Sammuel José Lourenço da Silva', 'Élder', 'Tabuleiro', 42, 'Um dos conselheiros vai servir em outro chamado.', '3', NULL, '1', '2019-01-10 20:16:59', '2019-09-28 17:31:16'),
(83, 'Maceió Colina', 'Auxiliar Especialista de Tercnologia', 'Luiz Felipe Pessoa Gama', 'Élder', 'Colina', 324, 'Indicação do Bispado da Ala Colina', '1', NULL, '1', '2019-01-13 17:06:56', '2019-01-13 17:06:56'),
(84, 'Maceió Tabuleiro', 'Presidente do quórum de Elderes da ala Aeroclube', 'Tonyone Ferreira Alves', 'Sumo Sacerdote', 'Aeroclube', 9, 'Homem fiel e compromissado com a obra. O mesmo tem uma ótima convivência com os membros da ala.', '4', NULL, '1', '2019-01-14 02:39:36', '2019-09-23 19:51:38'),
(85, 'Maceió Tabuleiro', 'Sumo Conselheiro da Estaca', 'Edinaldo Vieira Dultra', 'Sumo Sacerdote', 'Pratagy', 9, 'Homem fiel e experiente.', '1', NULL, '0', '2019-01-14 02:44:08', '2019-02-02 21:40:58'),
(86, 'Maceió Tabuleiro', 'Consultores do MAS da Estaca', 'José Luís da Silva/Glauciane Costa do Nascimento Silva', 'Sumo Sacerdote', 'Universitário', 9, 'Casal muito criativo.', '3', NULL, '1', '2019-01-21 13:08:47', '2019-09-28 17:07:10'),
(87, 'Maceió Tabuleiro', 'Presidente da Organização das Moças da Estaca', 'Natersia Santos', NULL, 'B. Bentes', 9, 'Airmã tem experiencia com a juventude', '1', NULL, '0', '2019-01-21 13:16:47', '2019-09-28 17:32:10'),
(88, 'Maceió Tabuleiro', 'Sumo Conselheiro da Estaca', 'Carlos Henrique Delmiro da Silva', 'Élder', 'Aeroclube', 9, 'Um bom homem para ser treinado.', '3', NULL, '1', '2019-01-21 13:22:46', '2019-09-28 17:33:31'),
(89, 'Maceió Tabuleiro', 'Segunda conselheira da primária da estaca', 'Ednalva do vale', NULL, 'Benedito', 89, NULL, '3', NULL, '1', '2019-01-22 14:27:07', '2019-02-02 21:38:20'),
(90, 'Maceió Tabuleiro', 'Primeiro conselheiro da or', 'Douglas moronni santos', 'Élder', 'Universitariio', 232, 'Estar servindo no momento como professor da primária.', '4', NULL, '0', '2019-01-27 03:40:02', '2019-02-02 21:42:21'),
(91, 'Maceió Tabuleiro', 'Secretário da or', 'José Ascânio da silva', 'Élder', 'Universitario', 232, 'No momento estar sem chamado.pronto para servir', '2', NULL, '0', '2019-01-27 03:41:56', '2019-09-28 17:30:09'),
(92, 'Maceió Tabuleiro', 'Segundo conselheiro  da or', 'Beroaldo da Silva', 'Élder', 'Aeroclube', 232, 'Estar servindo como presidente da escola dominical.. cinto que e um bom homem para servir na presidência da or', '4', NULL, '0', '2019-01-27 03:44:24', '2019-09-28 17:29:34'),
(93, 'Maceió Tabuleiro', 'Sumo Conselheiro da Estaca', 'Henrique oscar dos santos', 'Sumo Sacerdote', 'Pratagy', 9, 'Irmão com experiência no chamado', '3', NULL, '1', '2019-02-02 22:29:36', '2019-09-28 17:05:53'),
(94, 'Maceió Tabuleiro', 'Segunda conselheira da sociedade de socorro ds estaca.', 'Rosemeire Maria dos Santos Lima', NULL, 'Aeroclube', 54, 'Indicava da presidente da sociedade de socorro da estaca,  Irmã. Luziene ao Sumocoselheiro Sebastião.', '3', NULL, '1', '2019-02-17 12:45:01', '2019-09-28 17:28:26'),
(95, 'Maceió Tabuleiro', '1 Cons. da presidencia da OM da estaca.', 'RecostaMaria Costa Sangremam Mayer.', NULL, 'Gurgurí', 9, 'Indicação da irmã Seni.\r\nCom relação o fato de ser esposa de bispo não impede, jaque não é presidente.', '1', NULL, '0', '2019-02-19 19:41:05', '2019-02-19 19:41:46'),
(96, 'Maceió Tabuleiro', '1 Cons. da presidencia da OM da estaca.', 'Renata Maria Costa Sangremam Mayer.', NULL, 'Gurgurí', 9, 'Indicação da irmã Seni. O fato de ser esposa de bispo não é problema, já que a mesma não será presidente.', '3', NULL, '1', '2019-02-19 19:44:17', '2019-09-28 17:27:38'),
(97, 'Maceió Tabuleiro', '2 Cons. da presidencia da OM da estaca.', 'Ligia Maria Pereira Costa da Silva do Nascimento.', NULL, 'Aeroclube', 9, 'Indicação da irmã Seni.\r\nMulher madura e com capacidade de treinamento.', '4', 'servindo na ala', '1', '2019-02-19 19:46:45', '2019-09-28 17:16:36'),
(98, 'Maceió Tabuleiro', 'Sec. da Om da estaca.', 'Derlani Bento Bráz.', NULL, 'Tabuleiro', 9, 'Indicação da irmã Seni.\r\nIrmã Derlani é muito diligente e organizada.', '1', NULL, '0', '2019-02-19 19:48:48', '2019-09-28 17:26:52'),
(99, 'Maceió Tabuleiro', 'Secretario da Ala', 'Douglas Moroni Ferreira dos Santos', 'Élder', 'Universitário', 3, 'Esse irmão tem os atributos necessários para esse chamado... Ele é comprometido , dedicado e tem um desejo enorme de servir.', '3', NULL, '1', '2019-02-24 21:15:47', '2019-09-28 17:26:28'),
(100, 'Maceió Tabuleiro', 'secretario executivo da ala tabuleiro', 'Joallisson José da Silva', 'Élder', 'Tabuleiro', 64, 'Solicitação de indicação para o chamado de secretario executivo da ala Tabuleiro', '1', NULL, '0', '2019-03-02 12:45:54', '2019-09-28 17:25:54'),
(101, 'Maceió Tabuleiro', 'Secretario adjunto financeiro', 'Ewerthon erbert silva de Araújo', 'Élder', 'Tabuleiro', 24, 'O irmão é  dedicado nas coisas do senhor é missionário retornado e muito organizado...', '1', NULL, '0', '2019-03-18 00:18:51', '2019-09-28 17:23:24'),
(102, 'Maceió Tabuleiro', 'Segundo conselheiro  da or', 'Jackson da Silva dantos', 'Élder', 'Ala Caetés', 232, 'E um membros muiiiiiiiiiit prestativo ama servir na obra do senhor', '1', NULL, '0', '2019-03-24 04:24:48', '2019-09-28 17:21:04'),
(103, 'Maceió Tabuleiro', 'Segunda Conselheira da OM', 'Azailde Santana', NULL, 'Aeroclube', 58, NULL, '3', NULL, '1', '2019-04-02 19:38:20', '2019-09-28 17:13:40'),
(104, 'Maceió Tabuleiro', 'Secretária OM Estaca', 'Carolinne Ribeiro', NULL, 'Tabuleiro', 58, NULL, '1', NULL, '0', '2019-04-02 19:39:13', '2019-09-28 17:22:31'),
(105, 'Maceió Tabuleiro', 'Pres. OR estaca.', 'Adriano Alves', 'Sumo Sacerdote', 'Gurgurí', 9, 'O irmão se endentifica com esse chamado.', '3', NULL, '1', '2019-04-25 23:37:24', '2019-09-28 17:11:07'),
(106, 'Maceió Tabuleiro', 'Sumo Conselheiro', 'Jivanildo Tomaz', 'Sumo Sacerdote', 'Gurgurí', 9, 'Experiencia', '3', NULL, '1', '2019-04-25 23:38:45', '2019-09-28 17:09:35'),
(107, 'Maceió Tabuleiro', 'Consultores do JAS da estaca', 'Valgeon e Jaqueline.', NULL, 'Universitário', 9, 'Seriamuito bom para o casal e o JAS.', '4', NULL, '1', '2019-04-25 23:42:54', '2019-09-28 17:19:44'),
(108, 'Maceió Tabuleiro', 'SECRETÁRIO ADJUNTO DE REGISTROS.', 'LUKAS REGINALDO LIMA DE AZEVEDO.', 'Élder', 'UNIVERSITÁRIO', 70, 'O BISPADO SE REUNIU E VERIFICOU QUE O IRMÃO TEM A DISPONIBILIDADE DE TEMPO PARA FAZER ESSE TRABALHO, COMO É UM TRABALHO QUE É FEITO EM CASA, E É UM TRABALHO QUE NECESSITAMOS DE AJUDA NA ALA.', '4', NULL, '1', '2019-05-05 11:10:41', '2019-09-28 17:08:43'),
(109, 'Maceió Tabuleiro', 'Consultora do JAS da estaca', 'Maria Luzia Cassia da Silva Ferreira', NULL, 'Universitário', 56, 'Atualmente ela é consultora do JAS da ala e tem feito um ótimo trabalho. Os jovens têm sido referência em frequência ao Instituto em nossa estaca.', '3', NULL, '1', '2019-05-05 19:38:10', '2019-09-23 19:52:01'),
(110, 'Maceió Tabuleiro', 'Consultor do JAS da estaca', 'Paolo Moroni Farias', 'Élder', 'Universitário', 56, 'Ele é namorado da Malu e tem tido uma boa frequência ao Instituto.', '3', NULL, '1', '2019-05-05 19:42:13', '2019-09-02 09:26:07'),
(111, 'Maceió Tabuleiro', '1 conselheiro do Quórum', 'José Arimateias', NULL, 'Aeroclube', 100, NULL, '3', NULL, '1', '2019-05-25 13:38:50', '2019-09-23 19:50:56'),
(112, 'Maceió Tabuleiro', '2 conselheiro do Quórum', 'Samuel', NULL, 'Aeroclube', 100, NULL, '3', NULL, '1', '2019-05-25 13:39:50', '2019-09-23 19:50:34'),
(113, 'Maceió Tabuleiro', 'Pres. Esc. Dominical da estaca', 'Geremias José Macena Da Silva', 'Élder', 'Tabuleiro', 9, 'Homem disposto e conhecedo da doutrina.', '3', NULL, '1', '2019-05-25 21:03:02', '2019-09-17 08:02:10'),
(114, 'Maceió Tabuleiro', '1°Conselheiro dos rapazes da estaca', 'Romàrio', 'Sumo Sacerdote', 'Universitário', 227, 'Preciso desse homem urgente', '1', NULL, '0', '2019-05-25 21:46:33', '2019-09-17 07:50:18'),
(115, 'Maceió Tabuleiro', '2°conselheiro rapazes da estaca', 'Talituan toledo', 'Élder', 'Guguri', 227, NULL, '4', NULL, '0', '2019-05-25 21:48:57', '2019-09-17 07:49:53'),
(116, 'Maceió Tabuleiro', 'Professor do seminario da estaca.', 'Valgeon de Jesus dos Santos', 'Élder', 'Universitário', 9, 'A indicação foi do bispado.', '3', NULL, '1', '2019-05-25 22:40:44', '2019-09-17 08:01:49'),
(117, 'Maceió Tabuleiro', '1°Conselheiro  da, OR  estaca', 'Ascanio', 'Élder', 'Universitário', 227, NULL, '3', NULL, '1', '2019-06-08 22:32:23', '2019-09-17 08:01:29'),
(118, 'Maceió Tabuleiro', '2°cons. OR da estaca', 'Everto herbethe', 'Élder', 'Tabuleiro', 227, NULL, '3', NULL, '1', '2019-06-08 22:34:45', '2019-09-17 08:01:10'),
(119, 'Maceió Tabuleiro', 'Secretário', 'Genilsom', 'Élder', 'Benedito bentre', 227, NULL, '3', NULL, '1', '2019-06-08 22:39:22', '2019-09-17 08:00:46'),
(120, 'Maceió Tabuleiro', 'Conselheira da sociedade de Socorro da estaca', 'Josinete barbosa does Santos', NULL, 'Benedicto bentes', 268, 'For indicacão da presidente Luziene', '3', NULL, '1', '2019-06-09 00:25:42', '2019-09-17 08:00:19'),
(121, 'Maceió Tabuleiro', 'Sec. Da sociedade de Socorro da estaca', 'Edna Ferreira\'s da Silva', NULL, 'Caetes', 268, 'Indica do por Presidente da soc. De Socorro', '3', NULL, '1', '2019-06-09 00:27:57', '2019-09-17 07:59:39'),
(122, 'Maceió Tabuleiro', 'sECRETÁRIO EXECUTIVO DA ALA', 'JEFFERSON CAVALCANTE', 'Élder', 'UNIVERSITÁRIO', 70, 'IREMOS UTILIZAR O IRMÃO CESAR JUNIOR QUE É O ATUAL SECRETÁRIO EXECUTIVO COMO LÍDER DA HISTÓRIA DA FAMÍLIA, E O IRMÃO JEFFERSON ESTÁ SEM CHAMADO NO MOMENTO E ACREDITAMOS COMO BISPADO, QUE ELE PODE DESEMPENHAR UM BOM PAPEL NO CHAMADO.', '4', NULL, '1', '2019-06-09 12:48:40', '2019-09-23 19:52:28'),
(123, 'Maceió Tabuleiro', 'QUORUM DE ELDERES', 'ADRIANO SILVA DOS SANTOS', 'Sumo Sacerdote', 'TABULEIRO', 411, 'SERIA CHAMADO COMO 2° CONSELHEIRO', '1', NULL, '0', '2019-06-10 21:32:34', '2019-09-17 07:48:26'),
(124, 'Maceió Tabuleiro', '2°conselheira da sociedade de socorro estaca', 'Rosimeire Maria dos santos lima', NULL, 'Aeroclube', 268, 'Esta indicação foi feita pela presidente da sociedade de socorro da estaca. (Luziene)', '3', NULL, '1', '2019-06-20 20:42:42', '2019-09-17 08:00:00'),
(125, 'Maceió Tabuleiro', 'QUORUM DE ELDERES', 'ADRIANO SILVA DOS SANTOS', 'Sumo Sacerdote', 'TABULEIRO', 411, '2° CONSELHEIRO', '1', NULL, '0', '2019-06-23 12:44:22', '2019-09-17 07:47:33'),
(126, 'Maceió Tabuleiro', '2° Conselheiro do Quórum de Élderes', 'Junior Cesar Antônio da Silva', 'Élder', 'Ala Universitário', 384, 'A presidência do Quórum da Ala Universitário indica o irmão para essa chamado. Sentimos que é uma boa indicação.', '1', NULL, '0', '2019-06-30 14:21:06', '2019-09-17 07:47:07'),
(127, 'Maceió Tabuleiro', 'Secretária OM Estaca', 'Ghabryella Karla Chagas Lobo', NULL, 'Pratagy', 58, NULL, '3', NULL, '1', '2019-07-01 20:44:19', '2019-09-02 09:26:36'),
(128, 'Maceió Tabuleiro', 'Professora do seminário', 'Mércia Dayanne da Silva Rodrigues', NULL, 'Ala Caetés', 41, NULL, '3', NULL, '1', '2019-07-07 11:41:19', '2019-09-17 07:58:58'),
(129, 'Maceió Tabuleiro', 'Primeiro Conselheiro do Quorum de Elderes', 'Jivanildo Ferreira Vieira', 'Élder', 'Ala Caetés', 41, 'Indicação do presidente do quorum', '3', NULL, '1', '2019-07-07 11:45:12', '2019-09-17 07:58:34'),
(130, 'Maceió Tabuleiro', 'Segundo Conselheiro do Quorum de Elderes', 'Marivan Rodrigues Santana', 'Élder', 'Ala Caetés', 41, NULL, '3', NULL, '1', '2019-07-07 14:12:37', '2019-09-17 07:57:58'),
(131, 'Maceió Tabuleiro', 'Secretário do Quorum de Elderes', 'Wil Robson de Souza', 'Élder', 'Ala Caetés', 41, NULL, '1', NULL, '0', '2019-07-07 14:14:02', '2019-09-17 07:45:27'),
(132, 'Maceió Tabuleiro', 'Secretário Executivo/Membro do Sumo Conselho', 'Guilherme Fábio Silva Couto', 'Élder', 'Ala Pratagy', 14, 'O irmão Guilherme é o ex-secretário da Ala Gurguri. Devido ao realinhamento das unidades, o irmão passou a ser membro da Ala Pratagy. Logo, não está mais atuando no chamado da secretaria, e não tenho informações se a nova unidade já o indicou para exercer alguma responsabilidade. \r\nTenho pensado à cerca do \"perfil\" dos homens que servem na estaca e o que o Senhor tem requerido de nós para que alcancemos a meta para a nossa região. \r\nSegundo informações colhidas com o bispo da Unidade anterior, enquanto serviu como secretário da ala, o Irmão Guilherme foi extremamente responsável em suas responsabilidades.  Compareceu pontualmente às reuniões, preparando eficazmente as pautas e as atas das reuniões de bispado, conselhos e sacramentais. Realizou junto ao bispo o acompanhamento eficaz das finanças e dos registros, bem como se mostrou prontamente disposto, sempre que lhe requeri alguma designação.\r\nSendo assim, embora o chamado de Secretário Executivo da Estaca esteja ocupado por homem excelente, o não comparecimento deste durante as reuniões e a ausência de um acompanhamento eficaz das designações, chamados, pautas das reuniões e demais responsabilidades atribuídas ao esse secretário, fazem-me perceber quão indispensável é a presença de um homem com as qualidades demonstradas pelo irmão Guilherme. E o quanto ele pode abençoar a Presidência em suas diversas atribuições.\r\nCom esses mesmos argumentos, ressalto ainda quão abençoados seríamos se tivéssemos a oportunidade de trabalhar ao seu lado como membro do sumo conselho, uma vez que estamos atualmente com 11 homens nesse quórum e sua conduta perante o Senhor tem demonstrado maturidade e conversão espiritual para exercer um chamado de tão grande importância no reino de Deus.', '4', NULL, '0', '2019-07-08 05:50:08', '2019-09-17 07:46:22'),
(133, 'Maceió Tabuleiro', 'secretario executivo da ala tabuleiro', 'Daniel Nunes Tobias', 'Élder', 'Tabuleiro', 64, 'Solicitamos a avaliação do referido irmão para o chamado proposto, tendo em vista que o atual secretário executivo que é o irmão Joallisson não vem atuando a contento em seu chamado e precisa ser desobrigado do mesmo, em bispado deliberamos em jejum e oração para que o irmão Daniel seja chamado no lugar do atual. Irmão Joallisson com muita dificuldade de servir nesse chamado, desde o memento em que foi chamado não vem desenvolvendo o seu pleno potencial para nos ajudar na ala.', '4', NULL, '1', '2019-07-15 19:27:34', '2019-07-21 06:32:15'),
(134, 'Maceió Tabuleiro', '1 conselRomeirode  quórum de elderes', 'Aloizio Romeiro', 'Sumo Sacerdote', 'Gurguri', 112, NULL, '3', NULL, '1', '2019-07-22 21:01:13', '2019-09-02 09:25:17'),
(135, 'Maceió Tabuleiro', '2 conselheiro do  quórum de elderes', 'Thallituam Toledo', 'Élder', 'Gurguri', 112, NULL, '3', NULL, '1', '2019-07-22 21:02:25', '2019-09-02 09:25:07'),
(136, 'Maceió Tabuleiro', 'Secretário', 'Wallyson Felipe', 'Élder', 'Gurguri', 112, NULL, '1', NULL, '0', '2019-07-22 21:03:37', '2019-09-17 07:44:55'),
(137, 'Maceió Tabuleiro', 'QUORUM DE ELDERES', 'CLAYTON COIMBRA DE LUCENA', 'Élder', 'TABULEIRO', 411, '2º CONSELHEIRO', '3', NULL, '1', '2019-07-27 22:20:04', '2019-09-02 09:24:52'),
(138, 'Maceió Tabuleiro', 'Professora do Seminário', 'Nathália Karolinne Firmino', NULL, 'Tabuleiro', 58, NULL, '1', NULL, '0', '2019-08-02 12:23:50', '2019-09-17 07:44:14'),
(139, 'Maceió Tabuleiro', '1° Conselheiro do quórum', 'Marivaldo Manoel da Silva', 'Sumo Sacerdote', 'Ala Universitária', 36, 'O irmão foi entrevistado por mim e tivemos experiências muito boas em nossa conversas. O irmão Marivaldo é um homem experiênte, já servia como presidente do quórum em sua unidade anterior, era extremamente ativo em seu chamado, frequenta o templo assiduamente, tem conseguido manter um ritmo diário de oração e leitura de escrituras e tem um casamento muito sólido e uma excelente ligação com a sua esposa. Ele já serviu missão também e já foi presidente da Ramo.\r\nObs.: Com toda a sua experiência, ele certamente será fundamental para o fortalecimento e qualificação da ala Universitária.', '3', NULL, '1', '2019-08-10 17:03:22', '2019-09-02 09:24:42'),
(140, 'Maceió Tabuleiro', '2° Conselheiro do quórum', 'Lukas Reginaldo Lima de Azevedo', 'Élder', 'Ala Universitária', 36, 'O irmão Lukas está bem mais maduro e focado depois do casamento, tem frequentado o templo com frequência e está se preparando para ser oficiante juntamente com a sua esposa. Lukas tem um forte testemunho do dízimo e confia em mim como presidente, tornando assim um homem doutrinável.', '3', NULL, '1', '2019-08-10 17:06:03', '2019-09-02 09:24:33'),
(141, 'Maceió Tabuleiro', 'Professor do Seminário', 'Alvis Costa Ponder', NULL, 'Tabuleiro', 58, 'Acredito que ele fará o melhor pelos jovens. Ele tem uma boa relação com eles.', '1', NULL, '0', '2019-08-14 22:33:47', '2019-09-17 07:43:08'),
(142, 'Maceió Tabuleiro', 'Professora do Seminário', 'Marjorie Azevedo', NULL, 'Universitário', 70, 'A Irmã já ensina os jovens na escola dominical, dando boas aulas e possui uma boa didática, mora próximo da igreja o facilitaria a ida e vinda para o seminário e pelo que sabemos não possui uma ocupação que a impossibilite de ministrar aulas do seminário.', '3', NULL, '1', '2019-09-02 11:40:28', '2019-09-17 07:57:30'),
(143, 'Maceió Tabuleiro', 'Professor do Seminário', 'Józimo Firmino Neto', NULL, 'Tabuleiro', 58, 'Netinho está voltando de missão início de outubro.', '1', NULL, '0', '2019-09-04 18:17:57', '2019-09-17 07:43:49'),
(144, 'Maceió Tabuleiro', 'Primeiro Conselheiro do Quórum de Èlderes', 'Marcos Roberto Gomes Bezerra', NULL, 'Pratagy', 108, NULL, '3', NULL, '1', '2019-09-05 16:47:16', '2019-09-17 07:57:11'),
(145, 'Maceió Tabuleiro', 'Professora do Seminário', 'Tássia Pauliana', NULL, 'Tabuleiro', 58, NULL, '3', NULL, '1', '2019-09-05 20:07:45', '2019-09-17 07:56:45'),
(146, 'Maceió Tabuleiro', 'Professora do seminário', 'Nathalia karoline firmino', NULL, 'Tabuleiro', 24, 'Uma mulher muito dedicada, e com muita vontade de servir.', '1', NULL, '0', '2019-09-08 07:34:10', '2019-09-17 07:43:34'),
(147, 'Maceió Tabuleiro', 'Presidente da Organização das Moças da Estaca', 'Azailde de Jesus Santana', NULL, 'Aeroclube', 9, 'Mulher valente na fé e obediente. Trata as coisas do Senhor com toda diligência. Não é dada ao murmúrio.', '1', NULL, '0', '2019-09-17 07:35:26', '2019-10-11 09:06:19'),
(148, 'Maceió Tabuleiro', 'Consultores do JAS da estaca', 'Samuel Antônio e Rosimeire Maria', NULL, 'Aeroclube', 9, 'O casal tem uma boa dinâmica com a juventude e são muito criativo.', '1', NULL, '0', '2019-09-17 07:54:31', '2019-10-11 09:06:02'),
(149, 'Maceió Tabuleiro', 'Consultores do JAS da estaca', 'Adriano Alves/Wilma Lima', NULL, 'Caetés', 9, 'Seria uma boa experiência para ambos. E acredito que isso se receberia em benefícios para os JAS.', '3', NULL, '1', '2019-10-09 20:04:31', '2019-10-26 19:13:47'),
(150, 'Maceió Tabuleiro', 'Diretor assistente no conselho de assuntos públicos da estaca', 'Ewerthon Erbert Silva de Araújo', 'Élder', 'Tabuleiro', 9, 'O irmão Ewrthon tem experiência no trato com as pessoas. Devido a missão saberá chegar nas pessoas com a técnica própria de um bom missionário. Os treinamento irá moldar essas técnica para os assuntos públicos.', '3', NULL, '1', '2019-10-11 09:01:31', '2019-10-26 19:13:58'),
(151, 'Maceió Tabuleiro', 'Diretor assistente no conselho de assuntos públicos da estaca', 'Geremias José Macena Da Silva', 'Élder', 'Tabuleiro', 9, 'Homem com uma boa didática e com experiencia em lidar com as pessoas. Será um grande instrumento no trato com os formadores de opiniões.', '4', NULL, '0', '2019-10-11 09:04:17', '2019-10-26 19:14:20'),
(152, 'Maceió Tabuleiro', 'Secretário do conselho dos assuntos públicos da estaca', 'José Ascânio da Silva', 'Élder', 'Universitário', 9, 'Homem amadurecendo no evangelho. O mesmo tem potencial para crescer nesse chamado ao mesmo tempo que será um apoio para o conselho. Segue as determinações e se esforça para cumprir com seus compromissos.', '4', NULL, '0', '2019-10-11 09:11:06', '2019-10-26 19:14:40'),
(153, 'Maceió Tabuleiro', 'Segundo conselheiro do quórum de Élder', 'Marco Glei Brandão', 'Élder', 'Benedito Bentes', 392, 'Desobrigar Roberto Vieira, colocar Jamerson como primeiro.', '3', NULL, '1', '2019-10-18 18:54:23', '2019-11-20 20:50:20'),
(154, 'Maceió Tabuleiro', 'Secretario da Ala Aeroclube', 'Jose Gilberto', 'Sumo Sacerdote', 'Aeroclube', 276, 'Homem de Muita Fé ,Dedicado e com Grande Experiencia .seria de grande ajuda ao bispado da aeroclube.', '1', NULL, '0', '2019-10-26 19:17:27', '2019-10-26 19:32:45'),
(155, 'Maceió Tabuleiro', 'Presidente do quorum de Elderes', 'Manilson Batista', 'Sumo Sacerdote', 'Tabuleiro', 9, 'O irmão adquiriu uma grande experiência no chamado de sumo conselheiro. Deu o apoio devido a ala Pratagy.', '2', NULL, '1', '2019-11-06 15:07:07', '2019-11-20 20:51:05'),
(156, 'Maceió Tabuleiro', 'Sumo Conselheiro da Estaca.', 'Antônio Basiliano', 'Sumo Sacerdote', 'Tabuleiro', 9, 'O irmão twm uma grande visão do trabalho, mas precisa adquirir a força do trabalho. O chamado de sumo conselheiro irá lhe propocionar essa força.', '3', NULL, '1', '2019-11-06 15:09:28', '2019-12-15 12:54:51'),
(157, 'Maceió Tabuleiro', 'Conselheiro do Quorum de Elderes', 'Leonardo Aguiar Freitas Lins', 'Élder', 'Cachoeira do Meirim', 444, 'agendar entrevista o quanto antes', '3', NULL, '1', '2019-11-16 21:58:38', '2019-12-15 12:54:38'),
(158, 'Maceió Tabuleiro', 'Conselheiro do Quorum de Elderes', 'Marcos Roberto Gomes Bezerra', 'Élder', 'Cachoeira do Meirim', 444, 'Agendar entrevista o quanto antes.', '2', NULL, '1', '2019-11-16 22:00:55', '2019-11-20 20:49:38'),
(159, 'Maceió Tabuleiro', 'Casal especialista de autossuficiencia da estaca', 'Alvis Costa Ponder e Alda Maria de Souza Ponder', 'Sumo Sacerdote', 'Tabuleiro', 25, 'Precisamos de pessoas com tempo e disposição para abrir o C A e ter a dinâmica para entender e ensinar sobre a autos suficiência.', '2', NULL, '1', '2019-11-20 19:44:39', '2019-12-15 12:54:23'),
(160, 'Maceió Tabuleiro', 'Sumo conselheiro', 'Jamerson da Silva', 'Élder', 'Benedito Bentes', 25, 'O irmão tem feito um bom trabalho no quorum de elderes da ala, tem se destacados nos últimos chamado que tem trabalhado, é esse perfil de sumo conselheiro que precisamos para dividir a estaca, proatividade é com ele mesmo, mesmo parecendo ser calado, sabe o que fazer para uma ala crescer.', '4', NULL, '1', '2019-11-20 20:48:35', '2019-12-18 05:13:15'),
(161, 'Maceió Tabuleiro', 'Elder', 'Antonio Alves Pereira', 'Élder', 'Benedito Bentes', 321, 'Para avançar no sacerdócio de Melquisedeque no ofício de Elder', '4', NULL, '1', '2019-11-21 20:01:11', '2019-12-15 12:53:53'),
(162, 'Maceió Tabuleiro', 'Sumo Conselheiro da Estaca.', 'Diogo Bandeira Ramalho', 'Sumo Sacerdote', 'Universitario', 9, NULL, '4', NULL, '1', '2019-11-23 13:17:06', '2019-12-15 12:53:42'),
(163, 'Maceió Tabuleiro', 'Professora do Seminário', 'Célia Ferreira da Silva Santos.', NULL, 'Universitário', 70, 'Achamos em bispado que a irmã tem o manejo correto para lidar com os jovens, e achamos que nós do bispado podemos cobrir os dias em que ela não puder ir por conta do trabalho.', '4', NULL, '1', '2019-11-24 07:29:56', '2019-12-15 12:53:30'),
(164, 'Aracajú Norte', 'Recepcionista', 'Claudivan Vieira', 'Élder', 'Centenário', 19, NULL, '3', NULL, '0', '2019-11-25 16:37:31', '2019-11-25 16:40:12'),
(165, 'Aracajú Norte', 'Tecnologia', 'John', 'Sumo Sacerdote', 'Soledade', 462, 'Entrevistar e apoio', '1', NULL, '1', '2019-11-30 23:31:18', '2019-11-30 23:31:18'),
(166, 'Aracajú Norte', 'Recepcionista', 'Bob', 'Élder', 'Centenário', 19, NULL, '1', NULL, '1', '2019-12-06 18:23:35', '2019-12-06 18:23:35'),
(167, 'Maceió Tabuleiro', 'Secretário financeiro da estaca', 'Adeílson Cruz da Silva', 'Sacerdote', 'Benedito Bentes', 25, 'O irmão tem muita experiência nessa área de finanças da igreja.', '1', NULL, '1', '2019-12-18 05:10:34', '2019-12-18 05:10:34'),
(168, 'Maceió Tabuleiro', 'Sumo conselheiro', 'Maurício Fernando dos Santos Imbroisi', 'Sumo Sacerdote', 'Praragy', 25, NULL, '1', NULL, '1', '2019-12-21 13:05:23', '2019-12-21 13:05:23'),
(169, 'Maceió Tabuleiro', 'Sumo conselheiro', 'Adriano José do Nascimento', 'Sumo Sacerdote', 'Aeroclube', 25, NULL, '1', NULL, '1', '2019-12-21 13:06:24', '2019-12-21 13:06:24'),
(170, 'Maceió Tabuleiro', 'Sumo conselheiro', 'Ademar Leandro Vasconcelos da Silva', 'Sumo Sacerdote', 'Benedito Bentes', 25, NULL, '1', NULL, '1', '2019-12-21 13:07:24', '2019-12-21 13:07:24'),
(171, 'Maceió Tabuleiro', 'Presidente da primária da estaca', 'Ana Luiza dos Santos Silva', NULL, 'Pratagy', 9, 'A irmã é uma mulher madura com experiência de vida. Seria uma boa treinamento.', '1', NULL, '0', '2019-12-26 16:58:58', '2019-12-26 18:50:05'),
(172, 'Maceió Tabuleiro', 'Presidente da primária da estaca', 'Claudia Cristina de Oliveira Pinheiro', NULL, 'Universitário', 9, 'Apesar da irmã não ter muita experiencia nos chamados da estaca ela estar firme e éstar muito comprometida com a obra. Hoje ela é uma serva fiel. A dignidade estar estampada na pessoa da irmã. Estar pronta a adquirir mais comhecimento e estar sempre disposta a seguir a liderança.', '1', NULL, '1', '2019-12-28 08:26:03', '2019-12-28 08:26:03'),
(173, 'Maceió Tabuleiro', 'Conselheiro na presidência do quórum de elderes da ala universitário', 'Antonio Ferreira da Silva', 'Élder', 'Universitária', 9, 'O presidente do quórum me fez aindicação. Homem ja com experiência nessafunção. Humilde porem resoluto.', '1', NULL, '1', '2019-12-28 09:21:14', '2019-12-28 09:21:14'),
(174, 'Maceió Tabuleiro', 'Conselheiro na presidência do quórum de elderes da ala universitário', 'José Luiz dos Santos', 'Sumo Sacerdote', 'Universitario', 9, 'Indicação do presidente do quórum. Homem humildo e resoluto. O mesmo tem uma certa habilidade de lidar com as pessoas.', '1', NULL, '1', '2019-12-28 09:23:38', '2019-12-28 09:23:38'),
(175, 'Maceió Tabuleiro', 'Secretário de Registro de Membros.', 'Josivan Santos', 'Élder', 'Universitário', 70, 'Acreditamos que ele nos ajudaria a resolver várias pendências para impulsionar a divisão da ala.', '1', NULL, '1', '2020-01-05 07:22:29', '2020-01-05 07:22:29'),
(176, 'Maceió Tabuleiro', 'Presidente do quorum da Ala Benedito Bentes', 'Jamerson da Silva', 'Élder', 'Benedito Bentes', 25, 'Ele hj é conselheiro do quorum e o presidente tem estado ausente e ele tem cuidado do quórum, o presidente atual não responde mensagem nem as ligações, viaja e não informa aos conselheiros.', '1', NULL, '1', '2020-01-05 19:42:43', '2020-01-05 19:42:43'),
(177, 'Maceió Tabuleiro', 'Sumo conselheiro', 'Cícero vieira do Nascimento', 'Sumo Sacerdote', 'Tabuleiro', 25, 'O irmão tem sido deslocado pelo bispado, tem grande vontade e conhecimento para servir.', '1', NULL, '1', '2020-01-06 12:22:10', '2020-01-06 12:22:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `caravans`
--

CREATE TABLE `caravans` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `leader` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus` decimal(10,2) DEFAULT 0.00,
  `accommodation` decimal(10,2) DEFAULT 0.00,
  `obs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qtdPoltronas` int(11) NOT NULL DEFAULT 50,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `caravans`
--

INSERT INTO `caravans` (`id`, `stake`, `data`, `leader`, `phone`, `bus`, `accommodation`, `obs`, `status`, `qtdPoltronas`, `ativo`, `created_at`, `updated_at`) VALUES
(2, 'Maceió Tabuleiro', '2018-04-14', 'presidente fabio silva', '82 987073118', '2000.00', '17.00', 'se colocarem o nome e não forem a caravana irão pagar mesmo sem ir.', '0', 50, '0', '2018-03-01 19:07:28', '2018-05-01 12:12:36'),
(3, 'Maceió Tabuleiro', '2018-05-19', 'presidente fabio silva', '82 987073118', '2000.00', '17.00', NULL, '0', 50, '0', '2018-03-01 19:20:14', '2018-11-10 11:00:41'),
(4, 'Maceió Tabuleiro', '2018-06-16', 'presidente fabio silva', '82 987073118', '2000.00', '17.00', NULL, '0', 50, '0', '2018-03-01 19:21:47', '2018-11-10 11:00:46'),
(5, 'Maceió Tabuleiro', '2018-07-20', 'Leandro Vasconcelos', '82 98806-4257', '2000.00', '0.00', 'A data da caravana de julho será dia 21 Caravana saindo da ala Gurguri de meia noite ja confirmado com a empresa de ônibus\r\nPassando em Benedito 0:30 em universitário 1:00 na estaca 1:30 partindo pra o templo.', '0', 50, '0', '2018-03-01 19:23:17', '2018-11-10 11:00:49'),
(6, 'Maceió Tabuleiro', '2018-08-25', 'presidente fabio silva', '82 987073118', '2000.00', '17.00', NULL, '0', 50, '0', '2018-03-01 19:26:53', '2018-11-10 11:00:51'),
(7, 'Maceió Tabuleiro', '2018-12-15', 'Leandro Vasconcelos', '82 999792027', '2000.00', '17.00', 'Só colocar o nome se tiver certeza de que vai.', '0', 50, '0', '2018-10-29 07:33:43', '2018-11-18 12:23:59'),
(8, 'Maceió Tabuleiro', '2019-01-12', 'presidente fabio', '82 98707-3118', '2000.00', '17.00', 'lembrando que toda a caravana sai na sexta a noite.. a data que esta no site é a data do sábado dia em trabalharemos no templo\r\n\r\nSó coloquem o nome na lista principal se tiverem a certeza de que iram para a caravana. Caso não tenham essa certeza coloquem na lista de reserva.', '0', 50, '2', '2018-11-18 12:33:53', '2019-10-01 06:18:33'),
(9, 'Maceió Tabuleiro', '2019-02-09', 'darley', '82 99302-1068', '2000.00', '17.00', 'lembrando que toda a caravana sai na sexta a noite.. a data que esta no site é a data do sábado dia em trabalharemos no templo', '0', 50, '2', '2018-12-20 14:27:35', '2019-10-01 06:18:39'),
(11, 'Maceió Tabuleiro', '2019-04-13', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'Lembrando que todas as caravanas saem na sexta a noite. A data que está no site, é a data do sábado, dia em que trabalharemos no templo.', '0', 50, '2', '2018-12-20 14:29:18', '2019-10-01 06:19:46'),
(12, 'Maceió Tabuleiro', '2019-05-11', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'Lembrando que todas as caravanas saem na sexta a noite. A data que está no site, é a data do sábado, dia em que trabalharemos no templo.', '0', 50, '2', '2018-12-20 14:30:08', '2019-11-20 06:40:50'),
(13, 'Maceió Tabuleiro', '2019-06-08', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'lembrando que todas as caravanas saem na sexta-feira a noite. A data que está no site é a data do sábado, dia em trabalharemos no templo.', '0', 50, '2', '2018-12-20 14:30:56', '2019-11-20 06:40:56'),
(20, 'Maceió Tabuleiro', '2019-03-09', 'DARLEY', '82 99302-1068', '2000.00', '17.00', 'lembrando que toda a caravana sai na sexta a noite.. a data que esta no site é a data do sábado dia em trabalharemos no templo', '0', 50, '2', '2019-01-06 09:35:52', '2019-10-01 06:19:15'),
(21, 'Maceió Tabuleiro', '2019-07-13', 'DARLEY', '82 99302-1068', '2000.00', '17.00', 'lembrando que toda a caravana sai na sexta a noite.. a data que esta no site é a data do sábado dia em trabalharemos no templo', '0', 50, '2', '2019-01-06 09:46:34', '2019-06-10 08:22:10'),
(22, 'Maceió Tabuleiro', '2019-08-10', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'Obs.: As caravanas saem na sexta-feira a noite. A data no site refere-se ao sábado, dia em que realizaremos as ordenanças no templo.\r\nHorário de Saída do ônibus:\r\nCapela Gurguri/Caetés - 17:30h,\r\nCapela Ben. Bentes/Pratagy - 18:00h,\r\nCapela Universitário - 18:30h,\r\nCapela Tabuleiro/Aeroclube - 19:00h.', '0', 50, '2', '2019-01-06 09:47:03', '2019-11-20 06:41:07'),
(23, 'Maceió Tabuleiro', '2019-09-10', 'Rafael Gomes', '82 98839-3562', '3000.00', '17.00', 'Caravana semanal do dia 10 ao dia 13/09. \r\nSaída na terça feira, no período da manhã.', '1', 50, '2', '2019-01-06 09:47:39', '2019-11-20 06:41:14'),
(24, 'Maceió Tabuleiro', '2019-10-12', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'Obs.: As caravanas saem na sexta-feira a noite. A data no site refere-se ao sábado, dia em que realizaremos as ordenanças no templo.\r\nHorário de Saída do ônibus:\r\nCapela Gurguri/Caetés - 17:30h,\r\nCapela Ben. Bentes/Pratagy - 18:00h,\r\nCapela Universitário - 18:30h,\r\nCapela Tabuleiro/Aeroclube - 19:00h.', '0', 50, '0', '2019-01-06 09:48:15', '2019-11-06 08:20:33'),
(25, 'Maceió Tabuleiro', '2019-11-16', 'Rafael Gomes', '82 98839-3562', '2200.00', '17.00', 'Obs.: As caravanas saem na sexta-feira a noite. A data no site refere-se ao sábado, dia em que realizaremos as ordenanças no templo.\r\nHorário de Saída do ônibus:\r\nCapela Gurguri/Caetés - 17:30h,\r\nCapela Ben. Bentes/Pratagy - 18:00h,\r\nCapela Universitário - 18:30h,\r\nCapela Tabuleiro/Aeroclube - 19:00h.', '0', 50, '0', '2019-01-06 09:48:46', '2019-11-20 06:40:41'),
(26, 'Maceió Tabuleiro', '2019-12-03', 'Rafael Gomes', '82 98839-3562', '3000.00', '17.00', 'Caravana semanal do dia 03 ao dia 06/12. Saída na terça feira, no período da manhã.', '1', 50, '1', '2019-01-06 09:49:10', '2019-12-29 20:44:02'),
(27, 'Maceió Tabuleiro', '2019-07-13', 'Rafael Gomes', '82 98839-3562', '2000.00', '17.00', 'Obs.: As caravanas saem na sexta-feira a noite. A data no site refere-se ao sábado, dia em que realizaremos as ordenanças no templo.\r\nHorário de Saída do ônibus:\r\nCapela Gurguri/Caetés - 17:30h,\r\nCapela Ben. Bentes/Pratagy - 18:00h,\r\nCapela Universitário - 18:30h,\r\nCapela Tabuleiro/Aeroclube - 19:00h.', '0', 50, '2', '2019-06-10 06:44:58', '2019-11-20 06:41:02'),
(28, 'Aracajú Norte', '2019-10-28', 'CLAUDIVAN VIEIRA', '(79) 99107-7414', '0.00', '85.00', 'Salientamos que nosso ônibus dispõe apenas de 46 poltronas.\r\n\r\nA vaga estará apenas confirmada após constatarmos a recomendação do membro atualizada no LCR, dados completos e pagamento junto à estaca.\r\n\r\nAtenciosamente,\r\n\r\nSecretaria da Estaca Aracaju Norte', '1', 50, '1', '2019-07-21 19:36:09', '2019-07-21 19:44:35'),
(29, 'Aracajú Norte', '2019-12-02', 'CLAUDIVAN VIEIRA', '(79) 99107-7414', '0.00', '85.00', 'Salientamos que nosso ônibus dispõe apenas de 46 poltronas.\r\n\r\nA vaga estará apenas confirmada após constatarmos a recomendação do membro atualizada no LCR, dados completos e pagamento junto à estaca.\r\n\r\nAtenciosamente,\r\n\r\nSecretaria da Estaca Aracaju Norte', '1', 50, '1', '2019-07-21 19:36:49', '2019-07-21 19:44:42'),
(30, 'Maceió Tabuleiro', '2020-01-11', 'RAFAEL GOMES', '82 98839-3562', '2200.00', '17.00', NULL, '0', 50, '2', '2019-11-20 06:42:23', '2019-11-20 06:43:06'),
(31, 'Maceió Tabuleiro', '2020-01-11', 'RAFAEL GOMES', '82 98839-3562', '2200.00', '17.00', 'Obs.: As caravanas saem na sexta-feira a noite. A data no site refere-se ao sábado, dia em que realizaremos as ordenanças no templo.\r\nHorário de Saída do ônibus:\r\nCapela Gurguri/Caetés - 17:30h,\r\nCapela Ben. Bentes/Pratagy - 18:00h,\r\nCapela Universitário - 18:30h,\r\nCapela Tabuleiro/Aeroclube - 19:00h.', '0', 50, '1', '2019-11-20 06:44:19', '2019-11-20 06:44:19'),
(32, 'Maceió Tabuleiro', '2019-12-15', 'EU', '(82) 9 9969-4307', '1700.00', '16.66', NULL, '0', 50, '2', '2019-12-15 11:03:35', '2019-12-15 11:04:33'),
(33, 'Aracajú Norte', '2020-03-09', 'AUGUSTO ALMEIDA', '(79) 9 9632-8776', '155.00', '85.00', 'A garantia de sua vaga e poltrona será mediante o pagamento chegar na conta da estaca. As poltronas escolhida e vagas poderão sofrer alterações, caso não seja constatado a transferência para a estaca.\r\n\r\nA responsabilidade do pagamento da caravana é de cada membro.\r\n\r\nO Bispado e secretários são responsáveis pela transferência dos valores dos membros para conta da estaca.', '1', 46, '1', '2019-12-15 16:24:58', '2019-12-15 17:03:01'),
(34, 'Aracajú Norte', '2020-05-18', 'AUGUSTO ALMEIDA', '(79) 9 9632-8776', '6300.00', '85.00', 'A garantia de sua vaga e poltrona será mediante o pagamento chegar na conta da estaca. As poltronas escolhida e vagas poderão sofrer alterações, caso não seja constatado a transferência para a estaca.\r\nA responsabilidade do pagamento da caravana é de cada membro.\r\nO Bispado e secretários são responsáveis pela transferência dos valores dos membros para conta da estaca.', '1', 46, '1', '2019-12-15 16:34:05', '2019-12-15 16:34:05'),
(35, 'Aracajú Norte', '2020-07-13', 'AUGUSTO ALMEIDA', '(79) 9 9632-8776', '6300.00', '85.00', 'A garantia de sua vaga e poltrona será mediante o pagamento chegar na conta da estaca. As poltronas escolhida e vagas poderão sofrer alterações, caso não seja constatado a transferência para a estaca.\r\nA responsabilidade do pagamento da caravana é de cada membro.\r\nO Bispado e secretários são responsáveis pela transferência dos valores dos membros para conta da estaca.', '1', 46, '1', '2019-12-15 16:38:08', '2019-12-15 16:38:08'),
(36, 'Aracajú Norte', '2020-10-19', 'AUGUSTO ALMEIDA', '(79) 9 9632-8776', '6300.00', '85.00', 'A garantia de sua vaga e poltrona será mediante o pagamento chegar na conta da estaca. As poltronas escolhida e vagas poderão sofrer alterações, caso não seja constatado a transferência para a estaca.\r\nA responsabilidade do pagamento da caravana é de cada membro.\r\nO Bispado e secretários são responsáveis pela transferência dos valores dos membros para conta da estaca.', '1', 46, '1', '2019-12-15 16:38:52', '2019-12-15 16:38:52'),
(37, 'Aracajú Norte', '2020-11-30', 'AUGUSTO ALMEIDA', '(79) 9 9632-8776', '6300.00', '85.00', 'A garantia de sua vaga e poltrona será mediante o pagamento chegar na conta da estaca. As poltronas escolhida e vagas poderão sofrer alterações, caso não seja constatado a transferência para a estaca.\r\nA responsabilidade do pagamento da caravana é de cada membro.\r\nO Bispado e secretários são responsáveis pela transferência dos valores dos membros para conta da estaca.', '1', 46, '1', '2019-12-15 16:39:29', '2019-12-15 16:39:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `caravan_users`
--

CREATE TABLE `caravan_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `caravan_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kid` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kid_age` int(11) DEFAULT NULL,
  `kid_doc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poltrona` int(11) NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `pagto` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cadastrador` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `caravan_users`
--

INSERT INTO `caravan_users` (`id`, `caravan_id`, `user_id`, `kid`, `kid_age`, `kid_doc`, `poltrona`, `status`, `ativo`, `pagto`, `cadastrador`, `created_at`, `updated_at`) VALUES
(1022, 23, 14, 'Julio Cezar de Souza Pereira', 0, '00', 35, '3', '0', '0', 'RAFAEL', '2019-07-01 00:16:02', '2019-07-01 00:16:38'),
(1023, 23, 394, 'Julio Cezar de Souza Pereira', 0, '00', 35, '3', '1', '0', 'AMANDA', '2019-07-01 00:17:58', '2019-07-01 00:17:58'),
(1024, 23, 148, NULL, NULL, NULL, 33, '1', '0', '0', NULL, '2019-07-01 00:46:07', '2019-08-13 19:56:02'),
(1025, 27, 394, 'teste', 0, '00', 99, '5', '0', '0', 'AMANDA', '2019-07-01 00:54:07', '2019-07-01 01:18:35'),
(1026, 23, 148, 'Adriano Ramos Alves', 38, '2001 001177510', 37, '3', '1', '0', 'JACKSON', '2019-07-01 00:55:38', '2019-07-01 00:55:38'),
(1027, 27, 142, 'Tayna Santos', 21, '56.695.044-3', 1, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-07-02 13:00:48', '2019-07-03 05:17:33'),
(1028, 23, 205, NULL, NULL, NULL, 43, '1', '1', '0', NULL, '2019-07-03 13:38:52', '2019-07-03 13:38:52'),
(1029, 23, 246, NULL, NULL, NULL, 44, '1', '1', '0', NULL, '2019-07-03 13:45:22', '2019-07-03 13:45:22'),
(1030, 23, 158, NULL, NULL, NULL, 49, '1', '0', '0', NULL, '2019-07-05 12:26:13', '2019-09-02 08:17:24'),
(1031, 27, 148, 'Adriel Patrício Brennand Gracindo', 17, '4373734-0', 38, '1', '1', '0', 'JACKSON', '2019-07-06 19:13:02', '2019-07-08 00:52:07'),
(1032, 27, 148, 'Roger\'s dos Santos Ferreira', 25, '987673793', 37, '1', '1', '0', 'JACKSON', '2019-07-07 12:17:21', '2019-07-08 00:49:28'),
(1033, 27, 38, NULL, NULL, NULL, 49, '1', '1', '0', NULL, '2019-07-08 21:05:29', '2019-07-09 15:04:55'),
(1034, 23, 115, NULL, NULL, NULL, 8, '1', '0', '0', NULL, '2019-07-09 20:49:35', '2019-09-01 13:20:42'),
(1035, 27, 88, 'Aloísio Romeiro dia Santos', 58, '412.110', 36, '1', '1', '0', 'DGINA', '2019-07-09 22:41:57', '2019-07-10 05:48:36'),
(1036, 27, 88, 'Felipe Marques Anacleto', 10, '43547060', 22, '1', '1', '0', 'DGINA', '2019-07-09 22:44:25', '2019-07-10 05:45:51'),
(1037, 27, 88, 'Edileuza Anacleto', 49, '109479 1', 21, '1', '1', '0', 'DGINA', '2019-07-10 05:38:14', '2019-07-10 05:44:39'),
(1038, 27, 14, 'Gustavo Moroni (Ala Caetés)', 0, '0000', 33, '3', '1', '0', 'RAFAEL', '2019-07-10 14:45:35', '2019-07-10 14:45:35'),
(1039, 23, 419, NULL, NULL, NULL, 7, '1', '1', '0', NULL, '2019-07-14 15:34:54', '2019-07-14 15:34:54'),
(1040, 22, 384, NULL, NULL, NULL, 23, '1', '1', '0', NULL, '2019-07-15 01:20:30', '2019-07-15 01:20:30'),
(1041, 22, 14, NULL, NULL, NULL, 24, '1', '1', '0', NULL, '2019-07-15 01:29:56', '2019-07-15 01:29:56'),
(1042, 22, 420, NULL, NULL, NULL, 34, '1', '1', '0', NULL, '2019-07-15 18:10:07', '2019-07-15 18:10:07'),
(1043, 22, 76, NULL, NULL, NULL, 33, '1', '1', '0', NULL, '2019-07-15 18:13:19', '2019-07-15 18:13:19'),
(1044, 22, 75, NULL, NULL, NULL, 15, '1', '1', '0', NULL, '2019-07-16 21:23:48', '2019-07-16 21:23:48'),
(1045, 22, 288, NULL, NULL, NULL, 16, '1', '1', '0', NULL, '2019-07-16 21:29:14', '2019-07-16 21:29:14'),
(1046, 22, 422, NULL, NULL, NULL, 26, '1', '1', '0', NULL, '2019-07-17 11:12:27', '2019-07-17 11:12:27'),
(1047, 22, 422, 'Pauliana dos santos Silva Lima', 27, '33023964', 25, '3', '1', '0', 'JEAN', '2019-07-17 11:16:12', '2019-07-17 11:16:12'),
(1048, 22, 422, 'Pauliana dos santos Silva Lima', 27, '33023964', 25, '3', '0', '0', 'JEAN', '2019-07-17 11:16:19', '2019-07-21 14:04:02'),
(1049, 22, 243, 'Renata Maria C Sangreman Meyer de Oliveira', 35, '2000001049938', 19, '3', '0', '0', 'THALYTUAN', '2019-07-18 15:55:59', '2019-07-21 14:03:32'),
(1050, 22, 243, 'Renata Maria C Sangreman Meyer de Oliveira', 35, '2000001049938', 19, '3', '1', '0', 'THALYTUAN', '2019-07-18 15:56:02', '2019-07-18 15:56:02'),
(1051, 22, 417, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-07-18 22:09:35', '2019-07-18 22:09:35'),
(1052, 22, 416, NULL, NULL, NULL, 17, '1', '1', '0', NULL, '2019-07-19 10:56:56', '2019-07-19 10:56:56'),
(1053, 22, 416, 'Romario Henrique da Silva', 27, '33764964', 18, '3', '1', '0', 'CAMILA', '2019-07-19 11:01:42', '2019-07-19 11:01:42'),
(1054, 22, 24, NULL, NULL, NULL, 12, '1', '1', '0', NULL, '2019-07-19 12:31:18', '2019-07-19 12:31:18'),
(1055, 22, 24, 'Tassia paulianna Alves da Silva marinho', 29, '32460341', 11, '3', '1', '0', 'TIAGO', '2019-07-19 12:35:16', '2019-07-19 12:35:16'),
(1056, 22, 24, 'Maria clara Alves de Sá', 12, '43368875', 7, '3', '1', '0', 'TIAGO', '2019-07-19 12:36:52', '2019-07-19 12:36:52'),
(1057, 22, 24, 'Agatha vitória da silva marinho', 6, '43368727', 0, '4', '1', '0', 'TIAGO', '2019-07-19 12:39:39', '2019-07-19 12:39:39'),
(1058, 22, 24, 'Rosa Maria Pereira dos santos', 45, '1420693', 4, '1', '1', '0', 'TIAGO', '2019-07-19 12:43:02', '2019-08-02 12:14:06'),
(1059, 22, 24, 'Nilena kivian santos texeira', 21, '35103648', 8, '1', '1', '0', 'TIAGO', '2019-07-19 12:44:44', '2019-08-02 12:01:49'),
(1060, 22, 366, NULL, NULL, NULL, 5, '1', '1', '0', NULL, '2019-07-19 15:32:32', '2019-07-19 15:32:32'),
(1061, 22, 54, NULL, NULL, NULL, 29, '1', '0', '0', NULL, '2019-07-20 07:59:55', '2019-08-06 21:49:59'),
(1062, 22, 54, 'Lucelia Silva Florentino', 39, '20000001085438', 9, '3', '0', '0', 'JUAREZ', '2019-07-20 08:01:26', '2019-07-29 01:28:23'),
(1063, 22, 366, 'Ysabela Fernanda Ferreira Da Silva', 21, '4037576-5', 6, '1', '1', '0', 'FABRICIA', '2019-07-20 15:59:23', '2019-07-20 20:46:56'),
(1064, 22, 45, NULL, NULL, NULL, 13, '1', '0', '0', NULL, '2019-07-20 20:41:19', '2019-07-25 14:11:16'),
(1065, 22, 45, 'ednalva maria pinto do vale', 57, '2271283', 14, '3', '0', '0', 'GERSON', '2019-07-20 20:44:15', '2019-07-25 14:13:13'),
(1066, 22, 14, 'Azailde de Jesus Santana (Aeroclube)', 0, '00', 4, '3', '0', '0', 'RAFAEL', '2019-07-20 21:01:24', '2019-07-29 01:21:45'),
(1067, 22, 14, 'Manoel Messias (Aeroclube)', 0, '00', 27, '3', '0', '0', 'RAFAEL', '2019-07-21 06:52:15', '2019-07-29 01:26:02'),
(1068, 22, 14, 'Ana Maria Pereira dos Santos (Aeroclube)', 0, '00', 28, '3', '0', '0', 'RAFAEL', '2019-07-21 06:53:56', '2019-07-29 01:27:25'),
(1069, 22, 49, NULL, NULL, NULL, 35, '1', '1', '0', NULL, '2019-07-21 11:49:56', '2019-07-21 11:49:56'),
(1070, 23, 9, NULL, NULL, NULL, 18, '1', '1', '0', NULL, '2019-07-21 12:08:35', '2019-07-21 12:08:35'),
(1071, 22, 14, 'Maria Aparecida dos Santos', 0, '00', 21, '3', '1', '0', 'RAFAEL', '2019-07-21 12:19:37', '2019-07-21 12:19:37'),
(1072, 22, 14, 'Claudia Cristina de Oliveira Pinheiro', 0, '00', 22, '3', '1', '0', 'RAFAEL', '2019-07-21 12:20:44', '2019-07-21 12:20:44'),
(1073, 22, 14, 'Marilene Maria de Jesus Santos', 0, '00', 31, '3', '1', '0', 'RAFAEL', '2019-07-21 12:22:56', '2019-07-21 12:22:56'),
(1074, 22, 14, 'Clara Alice dos Santos Lima', 0, '00', 36, '1', '0', '0', 'RAFAEL', '2019-07-21 12:24:06', '2019-07-25 14:09:25'),
(1075, 22, 14, 'Thayná Cláudia dos Santos Silva', 0, '00', 37, '3', '1', '0', 'RAFAEL', '2019-07-21 12:28:07', '2019-07-21 12:28:07'),
(1076, 22, 14, 'Thayná Cláudia dos Santos Silva', 0, '00', 37, '3', '0', '0', 'RAFAEL', '2019-07-21 12:28:21', '2019-07-22 17:20:42'),
(1077, 22, 14, 'Darley Rodrigo Bezerra da Silva', 0, '00', 38, '3', '1', '0', 'RAFAEL', '2019-07-21 12:29:29', '2019-07-21 12:29:29'),
(1078, 22, 14, 'Antônio José Rogério Carlos', 0, '00', 20, '3', '0', '0', 'RAFAEL', '2019-07-21 12:31:29', '2019-07-21 12:36:03'),
(1079, 22, 14, 'Antônio José Rogério Carlos', 0, '00', 20, '3', '0', '0', 'RAFAEL', '2019-07-21 12:31:41', '2019-07-21 12:36:03'),
(1080, 22, 14, 'Antônio José Rogério Carlos', 0, '00', 20, '3', '0', '0', 'RAFAEL', '2019-07-21 12:31:57', '2019-07-21 12:36:04'),
(1081, 22, 14, 'Antônio José Rogério Carlos', 0, '00', 36, '1', '1', '0', 'RAFAEL', '2019-07-21 12:32:14', '2019-08-06 21:52:01'),
(1082, 22, 130, NULL, NULL, NULL, 39, '1', '1', '0', NULL, '2019-07-21 12:40:45', '2019-07-21 12:40:45'),
(1083, 22, 130, 'Genival dos Santos', 44, '1127073', 36, '1', '0', '0', 'GARDENIA', '2019-07-21 12:44:46', '2019-07-25 10:32:28'),
(1084, 22, 130, 'Gabriele Adelaide Lisboa dos Santos', 15, '36906808', 43, '3', '0', '0', 'GARDENIA', '2019-07-21 12:46:01', '2019-08-06 23:06:23'),
(1085, 22, 117, NULL, NULL, NULL, 41, '1', '1', '0', NULL, '2019-07-21 12:46:37', '2019-07-21 12:46:37'),
(1086, 22, 130, 'Adna Maria de Souza Calheiros de Oliveira', 45, '716902', 2, '1', '1', '0', 'GARDENIA', '2019-07-21 12:47:26', '2019-08-02 12:02:01'),
(1087, 22, 130, 'Genival dos Santos', 44, '1127073', 40, '3', '1', '0', 'GARDENIA', '2019-07-21 12:51:17', '2019-07-21 12:51:17'),
(1088, 22, 115, NULL, NULL, NULL, 10, '1', '0', '0', NULL, '2019-07-21 13:35:18', '2019-07-29 01:18:23'),
(1089, 22, 424, NULL, NULL, NULL, 45, '1', '1', '0', NULL, '2019-07-21 13:40:39', '2019-07-21 13:40:39'),
(1090, 22, 424, 'Jamerson da Silva', 25, '35353198', 0, '4', '0', '0', 'LUANA', '2019-07-21 13:42:52', '2019-07-21 14:02:49'),
(1091, 22, 424, 'Jamerson da Silva', 25, '35353198', 46, '3', '0', '0', 'LUANA', '2019-07-21 13:43:57', '2019-07-22 17:21:11'),
(1092, 22, 424, 'Jamerson da Silva', 25, '35353198', 46, '3', '1', '0', 'LUANA', '2019-07-21 13:44:06', '2019-07-21 13:44:06'),
(1093, 22, 424, 'Ana Lucia Cavalcante Rocha', 61, '1510486', 48, '3', '1', '0', 'LUANA', '2019-07-21 13:48:24', '2019-07-21 13:48:24'),
(1094, 23, 234, NULL, NULL, NULL, 2, '1', '0', '0', NULL, '2019-07-21 13:50:38', '2019-07-23 16:13:32'),
(1095, 22, 424, 'Luis da Rocha', 67, '266234', 47, '3', '1', '0', 'LUANA', '2019-07-21 13:52:04', '2019-07-21 13:52:04'),
(1096, 23, 4, NULL, NULL, NULL, 4, '1', '0', '0', NULL, '2019-07-21 13:53:58', '2019-07-23 16:14:00'),
(1097, 28, 19, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-07-21 19:41:27', '2019-07-21 19:41:27'),
(1098, 28, 425, NULL, NULL, NULL, 2, '1', '1', '0', NULL, '2019-07-21 19:50:13', '2019-07-21 19:50:13'),
(1099, 23, 84, NULL, NULL, NULL, 21, '1', '1', '0', NULL, '2019-07-21 20:20:07', '2019-07-21 20:20:07'),
(1100, 28, 426, NULL, NULL, NULL, 4, '1', '1', '0', NULL, '2019-07-21 21:31:09', '2019-07-21 21:31:09'),
(1101, 22, 100, NULL, NULL, NULL, 49, '1', '0', '0', NULL, '2019-07-21 21:35:32', '2019-08-04 00:54:56'),
(1102, 22, 427, NULL, NULL, NULL, 42, '1', '0', '0', NULL, '2019-07-21 21:39:19', '2019-08-05 07:31:08'),
(1103, 22, 427, 'Carlos Pedro Vieira', 54, '33007942', 44, '3', '0', '0', 'LUCIENE', '2019-07-21 21:42:17', '2019-08-05 07:31:28'),
(1104, 22, 427, 'João Victor de Souza Vieira', 21, '42070015', 30, '3', '0', '0', 'LUCIENE', '2019-07-21 21:45:46', '2019-08-05 07:30:52'),
(1105, 22, 427, 'Kassia Manuele De Souza Vieira', 25, '33084548', 50, '3', '0', '0', 'LUCIENE', '2019-07-21 21:47:09', '2019-08-05 07:32:09'),
(1106, 22, 122, NULL, NULL, NULL, 14, '1', '1', '0', NULL, '2019-07-21 23:17:58', '2019-07-25 14:12:56'),
(1107, 23, 9, 'Celia Ferreira da Silva Santos', 49, '1999001033086', 17, '3', '1', '0', 'ROMILDO', '2019-07-22 07:03:59', '2019-07-22 07:03:59'),
(1108, 22, 88, NULL, NULL, NULL, 0, '2', '0', '0', NULL, '2019-07-22 07:20:21', '2019-07-29 01:31:12'),
(1109, 22, 282, NULL, NULL, NULL, 50, '1', '1', '0', NULL, '2019-07-22 10:25:29', '2019-08-06 23:04:57'),
(1110, 22, 188, NULL, NULL, NULL, 49, '1', '1', '0', NULL, '2019-07-22 11:52:22', '2019-08-06 22:09:09'),
(1111, 23, 193, NULL, NULL, NULL, 10, '1', '0', '0', NULL, '2019-07-22 12:01:29', '2019-08-12 08:09:47'),
(1112, 22, 14, 'Maria Elena dos Santos', 0, '00', 32, '1', '1', '0', 'RAFAEL', '2019-07-23 07:11:39', '2019-07-25 10:35:20'),
(1113, 22, 239, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2019-07-23 14:18:34', '2019-07-23 14:18:34'),
(1114, 22, 278, 'Ana Maria pereira dos santos', 51, '801734', 36, '1', '0', '0', 'ADAM RAFAEL', '2019-07-23 19:15:12', '2019-07-29 01:17:10'),
(1115, 22, 278, 'Osnaldo Clemente de Brito', 55, '2003001151660', 99, '5', '1', '0', 'ADAM RAFAEL', '2019-07-23 19:24:07', '2019-07-23 19:24:07'),
(1116, 22, 142, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2019-07-23 19:35:21', '2019-07-23 19:35:21'),
(1117, 23, 142, 'Tayna Santos', 22, '56.695.044-3', 22, '3', '0', '0', 'NATHALIA KAROLYNE DE', '2019-07-23 19:54:23', '2019-08-13 07:56:32'),
(1118, 22, 118, NULL, NULL, NULL, 13, '1', '1', '0', NULL, '2019-07-23 19:55:36', '2019-07-25 14:10:57'),
(1119, 23, 428, NULL, NULL, NULL, 30, '1', '0', '0', NULL, '2019-07-24 00:00:20', '2019-08-13 07:55:03'),
(1120, 23, 429, NULL, NULL, NULL, 29, '1', '0', '0', NULL, '2019-07-24 00:08:50', '2019-08-13 07:55:01'),
(1121, 22, 88, 'Giovane Maria Salomão da Silva', 65, '00000', 10, '1', '1', '0', 'DGINA', '2019-07-25 12:55:15', '2019-07-29 01:17:51'),
(1122, 22, 356, NULL, NULL, NULL, 0, '1', '1', '0', NULL, '2019-07-25 15:13:23', '2019-07-25 15:13:23'),
(1123, 22, 122, 'Magna rosicler da silva santos', 29, '3264248-2', 99, '5', '1', '0', 'LUIZ FERNANDO', '2019-07-26 12:57:46', '2019-07-26 12:57:46'),
(1124, 22, 122, 'Magna rosicler da silva santos', 29, '3264248-2', 99, '5', '0', '0', 'LUIZ FERNANDO', '2019-07-26 12:58:01', '2019-07-29 00:28:06'),
(1125, 22, 407, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2019-07-27 20:20:01', '2019-07-27 20:20:01'),
(1126, 23, 372, NULL, NULL, NULL, 12, '1', '0', '0', NULL, '2019-07-29 00:02:57', '2019-08-13 07:56:19'),
(1127, 22, 372, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2019-07-29 00:05:16', '2019-07-29 00:05:16'),
(1134, 23, 108, 'Uziene Santiago do Nascimento', 0, '0000000000', 9, '3', '1', '0', 'ALISSON', '2019-07-29 23:36:23', '2019-07-29 23:36:23'),
(1135, 23, 142, 'Pollyana Cardoso Fysh', 39, '1755608', 32, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-07-30 15:26:55', '2019-07-30 15:26:55'),
(1136, 23, 356, NULL, NULL, NULL, 45, '1', '0', '0', NULL, '2019-07-31 09:33:13', '2019-08-31 04:23:05'),
(1137, 23, 356, 'Fabiana da Silva Santos', 41, '1506116', 0, '4', '0', '0', 'IANARA DOS SANTOS CORDEIRO', '2019-07-31 09:38:33', '2019-09-04 08:05:12'),
(1138, 23, 356, 'Fabiana da Silva Santos (Ianara)', 41, '1506116', 46, '3', '0', '0', 'IANARA DOS SANTOS CORDEIRO', '2019-07-31 09:39:45', '2019-08-31 04:28:11'),
(1139, 22, 118, 'Igor Alfredo', 25, '340123004', 49, '1', '0', '0', 'STHARLLES', '2019-08-03 11:16:33', '2019-08-06 22:09:31'),
(1144, 22, 14, 'Edvania da Conceição Pontes Lima', 0, '00', 30, '1', '1', '0', 'RAFAEL', '2019-08-04 10:46:56', '2019-08-06 22:01:40'),
(1145, 22, 76, 'Enzo Gabriel Carvalhaes Silva', 3, '0028400155201500270240011036713', 0, '4', '1', '0', 'SARA', '2019-08-04 14:38:34', '2019-08-04 14:38:34'),
(1146, 23, 14, 'Girleide Maria Alves Carlos', 53, '1171921', 4, '3', '1', '0', 'RAFAEL', '2019-08-05 21:58:32', '2019-08-05 21:58:32'),
(1147, 23, 14, 'Girleide Maria Alves Carlos', 53, '1171921', 4, '3', '0', '0', 'RAFAEL', '2019-08-05 21:58:42', '2019-08-05 22:00:36'),
(1148, 23, 14, 'Girleide Maria Alves Carlos', 53, '1171921', 4, '3', '0', '0', 'RAFAEL', '2019-08-05 21:59:32', '2019-08-05 22:00:47'),
(1149, 23, 356, 'guilherme Raphael  vieira cordeiro dos santos', 6, '4402736-2', 38, '3', '0', '0', 'IANARA DOS SANTOS CORDEIRO', '2019-08-06 08:38:00', '2019-08-31 04:28:35'),
(1150, 23, 108, 'Geraldo Joaquim de Carvalho Junior', 50, '1227626 ssp Al', 39, '3', '1', '0', 'ALISSON', '2019-08-11 14:33:13', '2019-08-11 14:33:13'),
(1151, 23, 108, 'Salete Aguiar dos Santos Carvalho', 51, '1108216 ssp Al', 40, '3', '1', '0', 'ALISSON', '2019-08-11 14:36:02', '2019-08-11 14:36:02'),
(1152, 23, 108, 'Laura Aguiar dos Santos Carvalho', 0, '0000000000', 36, '3', '1', '0', 'ALISSON', '2019-08-11 14:39:50', '2019-08-11 14:39:50'),
(1153, 23, 118, 'Caroline Ribeiro', 22, '46668700', 34, '3', '1', '0', 'STHARLLES', '2019-08-12 17:58:10', '2019-08-12 17:58:10'),
(1154, 24, 14, 'Azailde de Jesus Santana (Ala Aeroclube)', 0, '00', 3, '3', '0', '0', 'RAFAEL', '2019-08-13 07:53:34', '2019-08-13 10:11:22'),
(1155, 24, 14, NULL, NULL, NULL, 15, '1', '1', '0', NULL, '2019-08-13 10:11:52', '2019-08-13 10:11:52'),
(1156, 24, 14, 'Azailde de Jesus Santana (Ala Aeroclube)', 0, '00', 3, '3', '0', '0', 'RAFAEL', '2019-08-13 10:12:31', '2019-08-13 10:56:29'),
(1164, 23, 118, 'Rosilda Ribeiro', 43, '46668700', 30, '3', '1', '0', 'STHARLLES', '2019-08-13 11:34:56', '2019-08-13 11:34:56'),
(1165, 24, 234, NULL, NULL, NULL, 2, '1', '1', '0', NULL, '2019-08-13 16:46:00', '2019-08-13 20:05:19'),
(1166, 24, 4, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-08-13 20:03:22', '2019-08-13 20:03:22'),
(1167, 24, 4, 'Vivian ferreira da silva', 6, '4457658_7', 4, '3', '1', '0', 'FABIO', '2019-08-13 20:11:34', '2019-08-13 20:11:34'),
(1168, 24, 4, 'Vinícius ferreira de Lima silva', 0, '4456872-2', 0, '4', '1', '0', 'FABIO', '2019-08-13 20:14:40', '2019-08-13 20:14:40'),
(1169, 24, 4, 'Vinícius ferreira de Lima silva', 0, '4456872-2', 0, '4', '0', '0', 'FABIO', '2019-08-13 20:14:51', '2019-08-13 21:45:19'),
(1170, 24, 58, NULL, NULL, NULL, 28, '1', '0', '0', NULL, '2019-08-13 21:52:13', '2019-09-19 12:34:38'),
(1171, 24, 63, NULL, NULL, NULL, 23, '1', '0', '0', NULL, '2019-08-13 21:55:12', '2019-09-19 12:32:14'),
(1172, 24, 63, 'ISABELLE HORTÊNCIA LIRA DE OLIVEIRA NASCIMENTO', 18, '38235609', 27, '3', '0', '0', 'IAN', '2019-08-13 21:57:22', '2019-09-19 12:34:37'),
(1173, 24, 64, NULL, NULL, NULL, 24, '1', '0', '0', NULL, '2019-08-13 22:02:11', '2019-09-19 12:32:17'),
(1174, 24, 75, NULL, NULL, NULL, 9, '1', '1', '0', NULL, '2019-08-14 07:32:24', '2019-08-14 07:32:24'),
(1175, 24, 288, NULL, NULL, NULL, 10, '1', '1', '0', NULL, '2019-08-14 07:34:32', '2019-08-14 07:34:32'),
(1176, 24, 117, NULL, NULL, NULL, 13, '1', '0', '0', NULL, '2019-08-16 09:12:23', '2019-10-11 15:04:25'),
(1177, 24, 243, 'Renata Maria C Sangreman Meyer de Oliveira', 35, '2000001049938', 19, '3', '1', '0', 'THALYTUAN', '2019-08-16 18:41:27', '2019-08-16 18:41:27'),
(1178, 24, 243, 'Cristiano Alberto de Oliveira', 44, '5555555554', 20, '3', '0', '0', 'THALYTUAN', '2019-08-16 18:43:01', '2019-10-13 02:40:06'),
(1179, 24, 54, NULL, NULL, NULL, 25, '1', '0', '0', NULL, '2019-08-17 05:41:48', '2019-10-04 20:34:49'),
(1180, 24, 54, 'Marciria Gabryella Flores Lima Santos', 18, '969.664', 30, '1', '0', '0', 'JUAREZ', '2019-08-17 05:43:35', '2019-09-23 18:20:21'),
(1181, 24, 130, 'Adna Maria de Souza', 45, '716902', 17, '3', '1', '0', 'GARDENIA', '2019-08-19 07:16:12', '2019-08-19 07:16:12'),
(1182, 24, 130, 'Genival dos Santos', 44, '1127073', 31, '3', '1', '0', 'GARDENIA', '2019-08-19 07:17:39', '2019-08-19 07:17:39'),
(1183, 24, 57, 'Gardenia lisboa', 40, '130498', 32, '3', '0', '0', 'GENIVAL', '2019-08-19 07:38:10', '2019-09-02 07:57:35'),
(1184, 24, 14, 'PAULO GERMANO SALES', 0, '00', 21, '3', '0', '0', 'RAFAEL', '2019-08-19 09:23:24', '2019-08-19 10:23:51'),
(1185, 24, 14, 'EDNA  SALES (ALA CAETÉS)', 0, '00', 22, '3', '0', '0', 'RAFAEL', '2019-08-19 10:09:27', '2019-09-15 17:50:41'),
(1186, 24, 14, 'PAULO GERMANO SALES (ALA CAETÉS)', 0, '00', 21, '1', '0', '0', 'RAFAEL', '2019-08-19 10:10:23', '2019-09-15 17:50:39'),
(1187, 23, 311, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-08-19 15:11:09', '2019-08-19 15:11:09'),
(1188, 24, 118, 'Alvis costa Ponder', 50, '12368437588', 30, '3', '0', '0', 'STHARLLES', '2019-08-21 08:33:50', '2019-08-21 08:41:47'),
(1189, 23, 118, 'Alvis costa Ponder', 50, '12368437588', 26, '3', '0', '0', 'STHARLLES', '2019-08-21 08:34:41', '2019-08-26 19:55:09'),
(1190, 23, 118, 'Alda Maria de Souza Ponder', 50, '12368437588', 25, '3', '0', '0', 'STHARLLES', '2019-08-21 08:36:08', '2019-08-26 19:55:07'),
(1191, 24, 36, 'Marineusa Gonçalves Romão', 65, '556760', 29, '3', '1', '0', 'MAXWELL SANTOS', '2019-08-21 10:36:15', '2019-08-21 10:36:15'),
(1192, 24, 278, 'Maricelia Maria da silva', 50, '34506144', 16, '1', '1', '0', 'ADAM RAFAEL', '2019-08-21 12:00:52', '2019-09-19 12:36:58'),
(1193, 24, 148, NULL, NULL, NULL, 30, '1', '0', '0', NULL, '2019-08-21 12:44:47', '2019-09-15 18:53:15'),
(1194, 24, 36, 'Jaedson Gonçalves de Souza', 15, '4398964', 30, '1', '1', '0', 'MAXWELL SANTOS', '2019-08-21 13:19:29', '2019-09-23 18:23:19'),
(1195, 24, 115, NULL, NULL, NULL, 12, '1', '1', '0', NULL, '2019-08-22 13:51:08', '2019-08-22 13:51:08'),
(1196, 24, 130, 'Gabriele Adelaide Lisboa dos Santos', 15, '36906808', 35, '3', '0', '0', 'GARDENIA', '2019-08-25 00:55:36', '2019-10-04 20:35:52'),
(1197, 23, 14, 'EDNA APARECIDA ANDRE FERREIRA VIEIRA (ALA CAETÉS)', 0, '00', 31, '3', '1', '0', 'RAFAEL', '2019-08-26 00:52:51', '2019-08-26 00:52:51'),
(1198, 24, 45, NULL, NULL, NULL, 37, '1', '0', '0', NULL, '2019-08-26 13:58:20', '2019-10-04 18:30:15'),
(1199, 24, 45, 'ednalva maria pinto do vale', 48, '2271283', 38, '3', '0', '0', 'GERSON', '2019-08-26 13:59:31', '2019-10-04 18:30:16'),
(1200, 23, 76, 'LucileIa Silva Florentino', 45, '2000001085438', 2, '3', '1', '0', 'SARA', '2019-08-28 18:37:06', '2019-08-28 18:37:06'),
(1201, 24, 76, 'LucileIa Silva Florentino', 45, '2000001085438', 14, '3', '0', '0', 'SARA', '2019-08-28 18:39:42', '2019-10-01 06:34:33'),
(1202, 23, 234, NULL, NULL, NULL, 10, '1', '0', '0', NULL, '2019-08-28 21:11:24', '2019-09-01 07:48:05'),
(1203, 23, 14, 'ALTINA MARIA RODRIGUES DE FARIAS', 42, '1500477', 25, '3', '0', '0', 'RAFAEL', '2019-08-31 04:30:49', '2019-08-31 04:36:55'),
(1204, 23, 14, 'MARIANA DE FARIAS DUTRA (EST. MACEIÓ)', 19, '50845090-1', 26, '3', '1', '0', 'RAFAEL', '2019-08-31 04:32:16', '2019-08-31 04:32:16'),
(1205, 23, 14, 'ANA CARINA ESTEVAN TENORIO (EST. MACEIÓ)', 22, '3533067-8', 22, '3', '1', '0', 'RAFAEL', '2019-08-31 04:34:27', '2019-08-31 04:34:27'),
(1206, 23, 14, 'ALTINA MARIA RODRIGUES DE FARIAS (EST. MACEIÓ)', 42, '1500477', 25, '1', '1', '0', 'RAFAEL', '2019-08-31 04:35:53', '2019-08-31 04:36:35'),
(1207, 24, 278, 'Paulo Germano de Sales Filho', 52, '727120', 39, '3', '1', '0', 'ADAM RAFAEL', '2019-08-31 14:31:53', '2019-08-31 14:31:53'),
(1208, 24, 278, 'Edna Bispo Nogueira de Sales', 48, '997590', 40, '3', '1', '0', 'ADAM RAFAEL', '2019-08-31 14:33:17', '2019-08-31 14:33:17'),
(1209, 24, 278, 'Roberta Jaqueline Soares Barros Ferreira', 26, '36375535', 44, '3', '1', '0', 'ADAM RAFAEL', '2019-08-31 22:42:10', '2019-08-31 22:42:10'),
(1210, 24, 278, 'Rogers dos Santos Ferreira', 25, '34286748', 43, '3', '1', '0', 'ADAM RAFAEL', '2019-08-31 22:46:59', '2019-08-31 22:46:59'),
(1211, 24, 130, 'Gardenia Lisboa', 40, '1304198', 99, '5', '0', '0', 'GARDENIA', '2019-09-01 18:56:01', '2019-09-02 07:57:45'),
(1212, 24, 130, 'Gardenia Lisboa', 40, '1304198', 32, '1', '1', '0', 'GARDENIA', '2019-09-01 18:56:08', '2019-09-02 07:57:12'),
(1213, 23, 428, NULL, NULL, NULL, 8, '1', '1', '0', NULL, '2019-09-01 20:11:19', '2019-09-01 20:11:19'),
(1214, 23, 429, NULL, NULL, NULL, 12, '1', '1', '0', NULL, '2019-09-01 20:13:19', '2019-09-01 20:13:19'),
(1215, 23, 142, 'Amanda Araujo Dias (Estaca Colina)', 23, '3825618-5  / (98862-1010)', 45, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-09-02 13:12:23', '2019-09-02 13:12:23'),
(1216, 23, 142, 'Mirelle Medino da Silva (Estaca Colina)', 20, '3703587-8 (98873-3822)', 46, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-09-02 14:31:36', '2019-09-02 14:31:36'),
(1217, 23, 14, 'JACKSON DA SILVA SANTOS (ALA CAETÉS)', 22, '3814497-2', 29, '3', '1', '0', 'RAFAEL', '2019-09-02 19:33:28', '2019-09-02 19:33:28'),
(1218, 24, 4, 'Tamilee ferreirade lima melo', 29, '30990874', 42, '3', '0', '0', 'FABIO', '2019-09-03 12:50:30', '2019-09-04 08:03:19'),
(1219, 23, 4, 'Tamilee ferreirade lima melo', 29, '30990874', 14, '3', '1', '0', 'FABIO', '2019-09-03 12:57:57', '2019-09-03 12:57:57'),
(1220, 23, 4, 'Erivan vieira de melo', 31, '2006020091', 13, '3', '1', '0', 'FABIO', '2019-09-03 13:00:23', '2019-09-03 13:00:23'),
(1221, 24, 416, NULL, NULL, NULL, 21, '1', '1', '0', NULL, '2019-09-04 08:06:27', '2019-09-15 17:50:15'),
(1222, 24, 416, 'Romario Henrique da Silva', 27, '33764964', 22, '1', '1', '0', 'CAMILA', '2019-09-04 08:09:24', '2019-09-15 17:50:15'),
(1223, 23, 129, NULL, NULL, NULL, 49, '1', '1', '0', NULL, '2019-09-07 17:58:48', '2019-09-07 17:58:48'),
(1224, 23, 129, 'Guilherme de Almeida Rodrigues Caiano', 1, '14955001552019100011238000323827', 0, '4', '1', '0', 'JULIENE', '2019-09-07 21:28:43', '2019-09-07 21:28:43'),
(1225, 23, 129, 'Guilherme de Almeida Rodrigues Caiano', 1, '14955001552019100011238000323827', 0, '4', '0', '0', 'JULIENE', '2019-09-07 21:28:48', '2019-09-08 18:00:19'),
(1226, 23, 129, 'Vinicius de Almeida Rodrigues Caiano', 4, '00227901552015100147014009691629', 0, '4', '1', '0', 'JULIENE', '2019-09-07 21:36:21', '2019-09-07 21:36:21'),
(1227, 23, 140, 'Vanderson Sousa Santos', 25, '33756074', 10, '3', '1', '0', 'CARLOS HENRIQUE', '2019-09-08 17:52:15', '2019-09-08 17:52:15'),
(1230, 24, 14, 'PAULA SOARES LIMA', 44, '1445280', 41, '1', '0', '0', 'RAFAEL', '2019-09-13 15:42:41', '2019-10-05 07:54:39'),
(1231, 24, 14, 'MARIVALDO MANOEL DA SILVA', 40, '0000000', 42, '1', '0', '0', 'RAFAEL', '2019-09-13 15:45:31', '2019-10-05 07:54:53'),
(1232, 24, 33, NULL, NULL, NULL, 24, '1', '1', '0', NULL, '2019-09-15 07:21:18', '2019-09-19 12:31:55'),
(1233, 24, 30, NULL, NULL, NULL, 23, '1', '1', '0', NULL, '2019-09-15 07:23:55', '2019-09-19 12:31:54'),
(1234, 24, 193, NULL, NULL, NULL, 26, '1', '1', '0', NULL, '2019-09-15 10:14:08', '2019-09-15 10:14:08'),
(1235, 24, 14, 'ANTÔNIO JOSÉ ROGÉRIO CARLOS', 62, '00', 25, '1', '0', '0', 'RAFAEL', '2019-09-15 12:22:12', '2019-10-04 21:31:01'),
(1236, 24, 440, NULL, NULL, NULL, 47, '1', '0', '0', NULL, '2019-09-15 12:43:17', '2019-10-08 18:19:56'),
(1237, 24, 193, 'antonio carlos da silva', 42, '2002001117666', 48, '3', '0', '0', 'EDNA', '2019-09-15 16:04:17', '2019-10-08 07:33:17'),
(1238, 24, 148, 'Wilma de Lima Correia alves', 30, '2002008053883', 34, '3', '0', '0', 'JACKSON', '2019-09-15 16:26:45', '2019-09-23 18:19:30'),
(1239, 24, 148, 'Adriano Ramos alves', 35, '98009593', 49, '3', '0', '0', 'JACKSON', '2019-09-15 16:36:54', '2019-09-19 12:51:28'),
(1240, 24, 227, NULL, NULL, NULL, 50, '1', '0', '0', NULL, '2019-09-15 16:58:54', '2019-09-23 18:18:33'),
(1241, 24, 104, 'Michelle Pereira dos Santos', 42, '1.499.977', 33, '1', '1', '0', 'GIVALDO', '2019-09-16 08:38:59', '2019-10-02 15:16:03'),
(1242, 24, 372, NULL, NULL, NULL, 46, '1', '0', '0', NULL, '2019-09-17 09:46:53', '2019-09-19 14:11:32'),
(1243, 24, 158, NULL, NULL, NULL, 49, '1', '0', '0', NULL, '2019-09-17 23:48:21', '2019-10-05 08:27:29'),
(1244, 24, 142, 'Yale de Souza', 35, '2000004025037', 99, '5', '0', '0', 'NATHALIA KAROLYNE DE', '2019-09-19 11:57:21', '2019-09-19 12:32:35'),
(1245, 24, 142, 'Yale de Souza', 35, '2000004025037', 28, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-09-19 11:57:36', '2019-09-19 12:37:32'),
(1246, 24, 266, NULL, NULL, NULL, 0, '1', '0', '0', NULL, '2019-09-19 12:00:04', '2019-09-19 12:39:54'),
(1247, 24, 142, 'Tânia Cristina dos Ramos Silva', 52, '92621020622', 27, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-09-19 12:03:51', '2019-09-19 12:37:32'),
(1248, 24, 142, 'Nathalia Firmino', 22, '35812362', 18, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-09-19 12:08:38', '2019-09-19 12:40:21'),
(1249, 24, 281, 'Joelma Felix de Almeida', 48, '44747195', 46, '3', '0', '0', 'DIOGO BANDEIRA', '2019-09-20 15:49:23', '2019-10-01 06:34:54'),
(1250, 24, 112, NULL, NULL, NULL, 33, '1', '0', '0', NULL, '2019-09-22 09:42:18', '2019-10-02 15:00:36'),
(1251, 24, 112, 'Maria das Dores da Silva', 54, '98001354133', 34, '1', '1', '0', 'SEBASTIãO', '2019-09-22 09:46:49', '2019-09-23 18:27:02'),
(1252, 24, 366, NULL, NULL, NULL, 0, '2', '0', '0', NULL, '2019-09-22 12:00:07', '2019-09-23 18:20:38'),
(1253, 25, 14, 'Leilanne Lima de Azevedo', 30, '00', 12, '1', '0', '0', 'RAFAEL', '2019-09-23 19:42:11', '2019-10-14 10:30:03'),
(1254, 25, 14, 'Cintia Santos da Silva', 37, '00', 11, '1', '0', '0', 'RAFAEL', '2019-09-23 19:43:06', '2019-10-14 10:30:28'),
(1255, 25, 14, 'Azailde de Jesus Santana', 65, '00', 3, '3', '0', '0', 'RAFAEL', '2019-09-23 19:44:17', '2019-10-14 12:35:04'),
(1256, 24, 443, NULL, NULL, NULL, 14, '1', '1', '0', NULL, '2019-09-24 05:50:07', '2019-10-01 06:34:20'),
(1257, 24, 36, 'Ruan Henrique Félix de Araújo Matias', 17, '3398643-6', 50, '3', '0', '0', 'MAXWELL SANTOS', '2019-09-26 04:43:44', '2019-10-04 20:46:35'),
(1258, 26, 14, 'GIRLEIDE MARIA ALVES CARLOS', 53, '00', 15, '3', '1', '0', 'RAFAEL', '2019-09-30 09:07:17', '2019-09-30 09:07:17'),
(1259, 26, 14, 'Uziene Santiago Do Nascimento', 62, '00', 16, '3', '0', '0', 'RAFAEL', '2019-09-30 09:07:57', '2019-10-17 17:48:57'),
(1260, 24, 139, 'Carlos Henrique Delmiro', 38, '1571931', 46, '3', '1', '0', 'WENDELL LUCIANO FERREIRA DOS', '2019-10-02 15:11:55', '2019-10-02 15:11:55'),
(1261, 24, 139, 'Maria Gorete Valdevino dos Santos', 38, '1177473', 45, '1', '1', '0', 'WENDELL LUCIANO FERREIRA DOS', '2019-10-02 15:16:54', '2019-10-02 15:46:46'),
(1262, 24, 139, 'Maria Gorete Valdevino dos Santos', 38, '1177473', 45, '1', '0', '0', 'WENDELL LUCIANO FERREIRA DOS', '2019-10-02 15:17:02', '2019-10-02 15:48:46'),
(1263, 24, 445, NULL, NULL, NULL, 0, '1', '0', '0', NULL, '2019-10-03 22:19:01', '2019-10-04 18:30:54'),
(1264, 24, 187, NULL, NULL, NULL, 38, '1', '1', '0', NULL, '2019-10-04 14:53:00', '2019-10-04 18:29:38'),
(1265, 24, 187, 'Vítor C. de Melo Saraçol', 12, '00000000000000', 37, '1', '0', '0', 'RUTH', '2019-10-04 14:54:22', '2019-10-05 05:53:56'),
(1266, 24, 14, 'MARIA RIBEIRO DOS SANTOS GOMES', 54, '681425', 35, '1', '0', '0', 'RAFAEL', '2019-10-04 20:30:55', '2019-10-11 15:12:29'),
(1267, 24, 14, 'CLAUDIO NOGUEIRA GOMES', 50, '39413101', 36, '1', '0', '0', 'RAFAEL', '2019-10-04 20:32:52', '2019-10-10 13:39:47'),
(1268, 24, 14, 'ANTONIO JOSÉ ROGÉRIO CARLOS', 63, '273020 SSP/AL', 25, '1', '1', '0', 'RAFAEL', '2019-10-04 21:29:29', '2019-10-04 21:30:47'),
(1269, 24, 394, 'AMON CHALEGRE GOMES VANDERLEY', 7, '42148405', 6, '1', '0', '0', 'AMANDA', '2019-10-04 22:23:26', '2019-10-04 22:29:46'),
(1270, 24, 394, 'AMON CHALEGRE GOMES VANDERLEY', 13, '42148405', 99, '5', '0', '0', 'AMANDA', '2019-10-04 22:27:11', '2019-10-04 22:31:31'),
(1271, 24, 394, 'RENATA MIRELLY DE LIMA OLIVEIRA DA SILVA', 22, '37165780', 7, '1', '1', '0', 'AMANDA', '2019-10-05 05:44:31', '2019-10-05 05:48:15'),
(1272, 24, 394, 'ERIC JOHNSON FERREIRA DA SILVA', 22, '35418184', 8, '1', '1', '0', 'AMANDA', '2019-10-05 05:47:40', '2019-10-05 05:48:18'),
(1273, 24, 394, 'AMON CHALEGRE GOMES VANDERLEI', 13, '42148405', 6, '1', '1', '0', 'AMANDA', '2019-10-05 05:50:20', '2019-10-05 05:51:06'),
(1274, 24, 394, 'VITOR C. DE MELO SARAÇOL', 12, '40532631', 37, '1', '1', '0', 'AMANDA', '2019-10-05 05:53:13', '2019-10-05 05:53:35'),
(1275, 24, 14, 'MARIA JOSÉ LIMA SOARES', 57, '000000000', 3, '1', '0', '0', 'RAFAEL', '2019-10-05 07:24:42', '2019-10-11 12:58:14'),
(1276, 24, 14, 'WILLIAM KLESIE LIMA SOARES', 34, '4678653', 42, '1', '1', '0', 'RAFAEL', '2019-10-05 07:48:32', '2019-10-05 07:52:05'),
(1277, 24, 14, 'SAVIA MARIANA COSTA DE VASCONCELOS SOARES', 29, '38155427', 41, '1', '1', '0', 'RAFAEL', '2019-10-05 07:50:19', '2019-10-05 07:54:06'),
(1278, 24, 394, 'JOSÉ ANTÔNIO SILVA DOS SANTOS', 35, '2003001100780', 50, '3', '1', '0', 'AMANDA', '2019-10-05 08:24:01', '2019-10-05 08:24:01'),
(1279, 24, 394, 'CAMILA RIBEIRO SANTOS', 31, '31451128', 49, '1', '1', '0', 'AMANDA', '2019-10-05 08:25:37', '2019-10-05 08:27:14'),
(1280, 26, 58, NULL, NULL, NULL, 28, '1', '0', '0', NULL, '2019-10-05 15:33:10', '2019-11-11 16:48:50'),
(1281, 26, 58, 'ISABELLE HORTÊNCIA LIRA DE OLIVEIRA NASCIMENTO', 18, '3823560-9', 27, '3', '0', '0', 'SENI', '2019-10-05 15:35:22', '2019-11-11 16:48:52'),
(1282, 26, 63, NULL, NULL, NULL, 23, '1', '0', '0', NULL, '2019-10-05 15:36:29', '2019-11-11 16:49:13'),
(1283, 26, 142, NULL, NULL, NULL, 13, '1', '1', '0', NULL, '2019-10-05 16:15:59', '2019-10-05 16:15:59'),
(1284, 26, 142, 'Nayara Firmino', 16, '4989589', 14, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-10-05 16:17:49', '2019-10-05 16:17:49'),
(1285, 26, 142, 'Jozimo Firmino dos Santos Neto', 21, '3731443-2', 17, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-10-05 16:23:49', '2019-10-05 16:23:49'),
(1286, 26, 115, NULL, NULL, NULL, 2, '1', '0', '0', NULL, '2019-10-06 17:30:15', '2019-12-01 23:52:48'),
(1287, 26, 246, NULL, NULL, NULL, 24, '1', '1', '0', NULL, '2019-10-06 19:18:05', '2019-10-06 19:18:05'),
(1288, 26, 148, NULL, NULL, NULL, 29, '1', '0', '0', NULL, '2019-10-07 12:02:10', '2019-11-17 01:15:22'),
(1289, 26, 148, 'Matheus Rodrigo da Silva santos', 17, '998009593', 33, '1', '0', '0', 'JACKSON', '2019-10-07 12:04:44', '2019-11-17 01:15:43'),
(1290, 24, 394, 'NARAYANA SANDES SILVA', 24, '35494913', 99, '5', '0', '0', 'AMANDA', '2019-10-08 07:28:42', '2019-10-08 07:32:18'),
(1291, 24, 14, 'NARAYANA SANDES SILVA', 24, '35494913', 48, '1', '1', '0', 'RAFAEL', '2019-10-08 07:31:43', '2019-10-08 07:32:42'),
(1292, 24, 447, NULL, NULL, NULL, 11, '1', '1', '0', NULL, '2019-10-08 10:43:51', '2019-10-08 10:43:51'),
(1293, 24, 447, 'EDJANE CHALEGRE VANDERLEI', 30, '2002001144280', 5, '3', '1', '0', 'ALESSANDRA CARYNE', '2019-10-08 10:46:28', '2019-10-08 10:46:28'),
(1294, 24, 14, 'ALÍCIA SANTANA BRITO YEZZI', 23, '11566067480', 47, '1', '1', '0', 'RAFAEL', '2019-10-08 17:22:06', '2019-10-08 18:19:38'),
(1295, 26, 227, NULL, NULL, NULL, 21, '1', '0', '0', NULL, '2019-10-08 20:32:25', '2019-11-28 13:13:08'),
(1296, 26, 227, 'Wilma de Lima correia alves', 36, '2001001177510', 0, '4', '0', '0', 'ADRIANO', '2019-10-08 20:37:05', '2019-10-14 10:45:03'),
(1297, 26, 227, 'Wilma de Lima correia alves', 36, '2001001177510', 22, '1', '0', '0', 'ADRIANO', '2019-10-08 20:37:11', '2019-11-28 13:13:25'),
(1298, 26, 443, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-10-09 11:46:19', '2019-12-15 17:06:27'),
(1299, 24, 14, 'BRUNO YEZZI GOMES DE MELO', 22, '34285253 SSP/AL', 36, '1', '1', '0', 'RAFAEL', '2019-10-10 13:24:55', '2019-10-10 13:39:20'),
(1300, 24, 108, 'Antonio Marcos dos Santos', 44, '21312313245465', 99, '5', '0', '0', 'ALISSON', '2019-10-10 17:20:07', '2019-10-13 02:39:05'),
(1301, 24, 108, 'Ytale Joice da Silva', 11, '24561236464', 99, '5', '0', '0', 'ALISSON', '2019-10-10 17:21:25', '2019-10-13 02:39:05'),
(1302, 24, 14, 'MARIA JOSÉ LIMA SOARES', 57, '35743921 SSP/AL', 3, '1', '1', '0', 'RAFAEL', '2019-10-11 12:57:38', '2019-10-11 12:58:05'),
(1303, 24, 447, 'JEILIANE BARBOSA DA SILVA', 39, '1756484', 13, '1', '1', '0', 'ALESSANDRA CARYNE', '2019-10-11 13:45:38', '2019-10-11 15:03:57'),
(1304, 24, 14, 'CRISTINA PINTO DA SILVA', 40, '32286937', 20, '1', '0', '0', 'RAFAEL', '2019-10-11 15:11:25', '2019-10-13 02:42:15'),
(1305, 24, 448, 'MARIA RIBEIRO DOS SANTOS GOMES', 54, '681425', 35, '1', '1', '0', 'GURGURI', '2019-10-13 02:37:21', '2019-10-13 02:38:58'),
(1306, 24, 448, 'CRISTINA PINTO DA SILVA', 40, '32286937', 20, '1', '1', '0', 'GURGURI', '2019-10-13 02:41:40', '2019-10-13 02:42:07'),
(1307, 25, 108, 'Bruna fragozo de Melo', 23, '3553259-9', 12, '3', '1', '0', 'ALISSON', '2019-10-14 10:40:01', '2019-10-14 10:40:01'),
(1308, 25, 409, NULL, NULL, NULL, 19, '1', '0', '0', NULL, '2019-10-14 10:58:22', '2019-10-14 12:37:53'),
(1309, 25, 108, 'Jeiza Rafaela Silva de Souza Santos', 30, '21231446464', 20, '3', '0', '0', 'ALISSON', '2019-10-14 11:07:40', '2019-10-14 12:44:23'),
(1310, 25, 281, 'Renata Maria Costa Sangreman Meyer', 35, '154655214', 15, '3', '0', '0', 'DIOGO BANDEIRA', '2019-10-14 11:11:28', '2019-10-14 12:52:36'),
(1311, 25, 281, 'Cristiano Alberto de Oliveira', 42, '1456789123', 16, '3', '0', '0', 'DIOGO BANDEIRA', '2019-10-14 11:11:55', '2019-10-14 12:50:57'),
(1312, 25, 108, 'Jeiza Rafaela Silva de Souza Santos', 30, '122112221213312', 23, '3', '0', '0', 'ALISSON', '2019-10-14 11:15:20', '2019-11-03 20:11:17'),
(1313, 25, 108, 'Alisson Araújo dos Santos', 26, '3441871-7', 24, '3', '0', '0', 'ALISSON', '2019-10-14 11:16:14', '2019-11-03 20:10:06'),
(1314, 25, 112, 'Maria Ribeiro dos Santos Gomes', 54, '681425', 30, '1', '0', '0', 'SEBASTIãO', '2019-10-14 11:16:21', '2019-11-12 08:30:47'),
(1315, 25, 447, NULL, NULL, NULL, 13, '1', '0', '0', NULL, '2019-10-14 11:16:37', '2019-10-14 12:45:38'),
(1316, 25, 447, 'RAFAEL SOUZA GOMES', 30, '2001001228964', 14, '3', '0', '0', 'ALESSANDRA CARYNE', '2019-10-14 11:18:01', '2019-10-14 12:45:39'),
(1317, 25, 112, 'Cláudio Nogueira Gomes Nascimento', 50, '39413101', 28, '1', '0', '0', 'SEBASTIãO', '2019-10-14 11:21:02', '2019-11-12 08:31:39'),
(1318, 25, 112, 'Ivania Calisto da Silva', 65, '358899', 31, '3', '0', '0', 'SEBASTIãO', '2019-10-14 11:24:45', '2019-10-14 12:42:11'),
(1319, 25, 112, 'Ivania Calisto da Silva', 65, '358899', 31, '3', '0', '0', 'SEBASTIãO', '2019-10-14 11:24:46', '2019-11-06 14:29:22'),
(1320, 25, 112, 'Sergio Ricardo de Alencar Melanias', 54, '506928 SSP-Al', 29, '3', '1', '0', 'SEBASTIãO', '2019-10-14 11:32:50', '2019-10-14 11:32:50'),
(1321, 25, 108, 'Nataly Maria de Lima Santos', 30, '04.09.1990', 11, '3', '0', '0', 'ALISSON', '2019-10-14 11:45:35', '2019-11-11 18:36:34'),
(1322, 25, 386, NULL, NULL, NULL, 21, '1', '1', '0', NULL, '2019-10-14 11:49:41', '2019-10-14 11:49:41'),
(1323, 26, 108, 'Vera Lucia Dantas Silva', 60, '999995', 8, '3', '1', '0', 'ALISSON', '2019-10-14 11:50:39', '2019-10-14 11:50:39'),
(1324, 25, 386, 'Ghabryella Karla Lôbo Couto', 21, '3803605-3', 99, '5', '0', '0', 'GUILHERME', '2019-10-14 11:51:34', '2019-10-14 12:40:13'),
(1325, 25, 386, 'Ghabryella Karla Lôbo Couto', 21, '3803605-3', 22, '3', '1', '0', 'GUILHERME', '2019-10-14 11:56:46', '2019-10-14 11:56:46'),
(1326, 25, 447, 'AZAILDE DE JESUS SANTANA', 65, '290752', 3, '1', '1', '0', 'ALESSANDRA CARYNE', '2019-10-14 11:57:57', '2019-10-14 12:34:51'),
(1327, 25, 409, 'Fabiana Alves Lopes', 28, '32196849', 99, '5', '0', '0', 'FABIANA', '2019-10-14 12:01:35', '2019-10-14 12:42:04'),
(1328, 25, 14, 'RAFAEL SOUZA GOMES', 31, '2001001228964 SSP/AL', 19, '1', '1', '0', 'RAFAEL', '2019-10-14 12:36:19', '2019-10-14 12:37:26'),
(1329, 25, 409, NULL, NULL, NULL, 39, '1', '0', '0', NULL, '2019-10-14 12:43:33', '2019-10-14 12:48:46'),
(1330, 25, 394, 'ALESSANDRA CARYNE CALHEIROS', 33, '2002001172691 SSP/AL', 20, '1', '1', '0', 'AMANDA', '2019-10-14 12:43:45', '2019-10-14 12:44:12'),
(1331, 25, 413, NULL, NULL, NULL, 39, '1', '0', '0', NULL, '2019-10-14 12:43:49', '2019-11-05 18:45:32'),
(1332, 25, 448, 'RENATA MARIA COSTA SANGREMAN MEYER', 35, '154655214 SSP/AL', 15, '1', '1', '0', 'GURGURI', '2019-10-14 12:47:47', '2019-10-14 12:51:06'),
(1333, 25, 448, 'CRISTIANO ALBERTO DE OLIVEIRA', 42, '1456789123 SSP/AL', 16, '1', '1', '0', 'GURGURI', '2019-10-14 12:49:43', '2019-10-14 12:50:47'),
(1334, 25, 409, NULL, NULL, NULL, 40, '1', '1', '0', NULL, '2019-10-14 12:49:57', '2019-10-14 12:49:57'),
(1335, 25, 88, 'Daisy Maria da Silva', 46, '1085466', 17, '3', '0', '0', 'DGINA', '2019-10-14 12:56:52', '2019-10-24 18:39:38'),
(1336, 25, 130, NULL, NULL, NULL, 9, '1', '1', '0', NULL, '2019-10-14 13:50:49', '2019-10-14 13:50:49'),
(1337, 25, 130, 'Genival dos Santos', 44, '1127073', 10, '3', '1', '0', 'GARDENIA', '2019-10-14 13:52:00', '2019-10-14 13:52:00'),
(1338, 25, 108, 'Marcos Roberto Gomes Bezerra', 47, '135566667', 34, '3', '0', '0', 'ALISSON', '2019-10-14 13:58:01', '2019-11-06 08:24:33'),
(1339, 25, 130, 'Cícera Pereira dos Santos', 66, '323763328', 1, '3', '0', '0', 'GARDENIA', '2019-10-14 13:59:11', '2019-10-15 13:01:06'),
(1340, 25, 130, 'Adna Maria de Souza Calheiros de Oliveira', 45, '716902', 4, '3', '1', '0', 'GARDENIA', '2019-10-14 14:00:11', '2019-10-14 14:00:11'),
(1341, 25, 108, 'Rosemeire de Azevedo Bezerra', 47, '1832981662', 33, '3', '0', '0', 'ALISSON', '2019-10-14 14:01:18', '2019-11-06 08:14:17'),
(1342, 25, 108, 'Mercia Regina de Azevedo Bezerra', 17, '1762771818', 35, '3', '0', '0', 'ALISSON', '2019-10-14 14:04:23', '2019-11-06 08:26:48'),
(1343, 25, 108, 'Dayvid Richard de Azevedo Bezerra', 13, '1726587277', 36, '3', '0', '0', 'ALISSON', '2019-10-14 14:05:57', '2019-11-06 09:05:22'),
(1344, 25, 108, 'José Diego de Azevedo Bezerra', 10, '726268282', 32, '3', '0', '0', 'ALISSON', '2019-10-14 14:07:40', '2019-11-06 09:05:51'),
(1345, 25, 108, 'Antonio Marcos dos Santos', 44, '6273737e7271', 7, '3', '0', '0', 'ALISSON', '2019-10-14 20:10:11', '2019-11-08 17:17:35'),
(1346, 25, 108, 'Ytala Joice da Silva Santos', 11, '7162626262', 8, '3', '0', '0', 'ALISSON', '2019-10-14 20:11:22', '2019-11-08 17:15:35'),
(1347, 25, 108, 'Sandra Regina Novais Lima', 49, '4196226', 5, '3', '1', '0', 'ALISSON', '2019-10-14 20:16:27', '2019-10-14 20:16:27'),
(1348, 25, 108, 'Raul Silva lima', 38, '182737382', 6, '3', '1', '0', 'ALISSON', '2019-10-14 20:17:59', '2019-10-14 20:17:59'),
(1349, 25, 108, 'JOÃO GABRIEL NOVAIS', 13, '411829129', 2, '3', '1', '0', 'ALISSON', '2019-10-14 20:19:46', '2019-10-14 20:19:46'),
(1350, 25, 159, NULL, NULL, NULL, 37, '1', '0', '0', NULL, '2019-10-14 20:38:49', '2019-10-15 12:49:54'),
(1351, 25, 449, NULL, NULL, NULL, 37, '1', '0', '0', NULL, '2019-10-14 20:51:22', '2019-11-06 09:05:36'),
(1352, 25, 443, NULL, NULL, NULL, 13, '1', '1', '0', NULL, '2019-10-14 22:03:54', '2019-10-14 22:03:54'),
(1353, 25, 383, NULL, NULL, NULL, 26, '1', '0', '0', NULL, '2019-10-14 22:32:29', '2019-11-15 13:15:38'),
(1354, 25, 383, 'CARLOS GHABRYEL CHAGAS LOBO', 17, '40246906', 27, '1', '1', '0', 'RADMELLYS', '2019-10-14 22:35:16', '2019-11-11 14:03:11'),
(1355, 25, 383, 'CRISTIANE ROSY CHAGAS LOBO', 43, '1471740', 25, '1', '0', '0', 'RADMELLYS', '2019-10-14 22:38:33', '2019-11-15 13:16:46'),
(1356, 25, 130, 'Gabriele Adelaide Lisboa dos Santos', 15, '36906808', 14, '3', '1', '0', 'GARDENIA', '2019-10-14 23:52:26', '2019-10-14 23:52:26'),
(1357, 26, 108, 'Uziene Santiago do Nascimento', 62, '615271572', 7, '3', '1', '0', 'ALISSON', '2019-10-15 00:11:41', '2019-10-15 00:11:41'),
(1358, 25, 448, 'CICERA PEREIRA DOS SANTOS', 66, '323763328', 1, '1', '0', '0', 'GURGURI', '2019-10-15 13:00:31', '2019-10-15 13:05:58'),
(1360, 25, 239, NULL, NULL, NULL, 41, '1', '1', '0', NULL, '2019-10-15 14:29:42', '2019-10-15 14:29:42'),
(1361, 25, 239, 'Maria gorete da silva Batista', 61, '444435', 42, '3', '1', '0', 'GERLANE', '2019-10-15 14:31:44', '2019-10-15 14:31:44'),
(1362, 25, 282, NULL, NULL, NULL, 45, '1', '1', '0', NULL, '2019-10-15 14:34:57', '2019-10-15 14:34:57'),
(1363, 25, 180, NULL, NULL, NULL, 43, '1', '1', '0', NULL, '2019-10-15 20:20:33', '2019-10-15 20:20:33'),
(1364, 25, 181, NULL, NULL, NULL, 44, '1', '1', '0', NULL, '2019-10-15 20:25:32', '2019-10-15 20:25:32'),
(1365, 25, 227, NULL, NULL, NULL, 18, '1', '0', '0', NULL, '2019-10-16 08:59:48', '2019-11-02 23:41:37'),
(1366, 25, 227, 'Wilma de Lima correia Alves', 36, '2002006053887', 38, '3', '0', '0', 'ADRIANO', '2019-10-16 09:04:50', '2019-11-02 23:43:25'),
(1367, 25, 278, 'Paulo germano de Sales Filho', 52, '72720', 49, '3', '1', '0', 'ADAM RAFAEL', '2019-10-16 10:57:26', '2019-10-16 10:57:26'),
(1368, 25, 278, 'Edna Bispo Nogueira de Sales', 48, '997590', 50, '3', '1', '0', 'ADAM RAFAEL', '2019-10-16 10:58:30', '2019-10-16 10:58:30'),
(1369, 25, 278, 'Osnaldo Clemente de Brito', 55, '2003001151660', 39, '1', '1', '0', 'ADAM RAFAEL', '2019-10-16 11:02:22', '2019-11-05 18:45:03'),
(1370, 25, 278, 'Marcos tavares de lima', 45, '1273136', 47, '3', '1', '0', 'ADAM RAFAEL', '2019-10-16 11:04:46', '2019-10-16 11:04:46'),
(1371, 25, 278, 'Valdenice tavares da Silva', 53, '3125846', 48, '3', '1', '0', 'ADAM RAFAEL', '2019-10-16 11:07:10', '2019-10-16 11:07:10'),
(1372, 25, 278, 'Weverton tavares de lima', 11, '651376782', 99, '5', '0', '0', 'ADAM RAFAEL', '2019-10-16 11:09:15', '2019-11-05 18:48:08'),
(1373, 25, 278, 'Maricelia Maria da silva', 50, '34506144', 17, '1', '1', '0', 'ADAM RAFAEL', '2019-10-16 11:15:53', '2019-10-24 18:39:21'),
(1374, 25, 278, 'Maria gorete da Silva Batista', 61, '444435', 99, '5', '0', '0', 'ADAM RAFAEL', '2019-10-16 11:19:53', '2019-10-16 12:43:08'),
(1375, 25, 278, 'Maria gerlane da Silva Souza', 22, '38772019', 99, '5', '0', '0', 'ADAM RAFAEL', '2019-10-16 11:21:45', '2019-10-16 12:43:18'),
(1376, 25, 278, 'José Roberval da Silva Batista', 30, '30167973', 99, '5', '0', '0', 'ADAM RAFAEL', '2019-10-16 11:23:33', '2019-11-06 09:08:31'),
(1377, 26, 36, 'Marineusa Gonçalves Romão', 65, '556760', 16, '1', '1', '0', 'MAXWELL SANTOS', '2019-10-16 16:19:09', '2019-10-21 12:27:21'),
(1378, 25, 407, NULL, NULL, NULL, 18, '1', '0', '0', NULL, '2019-10-18 07:00:21', '2019-11-07 08:12:17'),
(1379, 25, 158, NULL, NULL, NULL, 0, '2', '0', '0', NULL, '2019-10-18 12:01:52', '2019-11-03 20:11:36'),
(1380, 25, 79, NULL, NULL, NULL, 0, '1', '0', '0', NULL, '2019-10-18 16:52:19', '2019-10-21 12:28:52'),
(1381, 25, 417, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-10-19 22:10:07', '2019-11-03 20:43:05'),
(1382, 25, 104, 'Elias  dos  Santos  Mota', 42, '1516083sspAl', 38, '1', '0', '0', 'GIVALDO', '2019-10-20 07:44:41', '2019-11-05 20:09:48'),
(1383, 25, 104, 'Elias  dos  Santos  Mota', 42, '1516083sspAl', 99, '5', '0', '0', 'GIVALDO', '2019-10-20 07:44:46', '2019-10-23 13:25:05'),
(1384, 25, 104, 'Elias  dos  Santos  Mota', 42, '1516083sspAl', 99, '5', '0', '0', 'GIVALDO', '2019-10-20 07:44:47', '2019-10-21 12:29:38'),
(1385, 25, 104, 'Elias  dos  Santos  Mota', 42, '1516083sspAl', 99, '5', '0', '0', 'GIVALDO', '2019-10-20 07:44:48', '2019-10-21 12:29:36'),
(1386, 25, 104, 'Elias  dos  Santos  Mota', 42, '1516083sspAl', 99, '5', '0', '0', 'GIVALDO', '2019-10-20 07:44:48', '2019-10-23 13:25:03'),
(1387, 25, 41, 'Weverton Tavares de Lima', 11, '652376782', 46, '1', '1', '0', 'DIEGO', '2019-10-21 21:05:41', '2019-11-03 20:42:37'),
(1388, 25, 54, NULL, NULL, NULL, 0, '1', '0', '0', NULL, '2019-10-22 19:48:55', '2019-10-24 18:50:35'),
(1389, 25, 41, 'Lidiane Miranda da Silva Barros', 33, '2002001199549', 23, '1', '1', '0', 'DIEGO', '2019-10-22 22:41:27', '2019-11-05 18:44:44'),
(1390, 25, 41, 'Diego Almeida de Barros', 30, '30548268', 24, '1', '1', '0', 'DIEGO', '2019-10-25 20:22:40', '2019-11-03 20:09:54'),
(1391, 26, 112, 'PEDRO FELIPE DOS SANTOS NETO', 42, '1360584 SSP-AL', 31, '3', '0', '0', 'SEBASTIãO', '2019-10-26 11:12:57', '2019-11-21 07:07:26'),
(1392, 26, 112, 'DAISY MARIA DA SILVA SANTOS', 46, '1085466 SSP-AL', 32, '3', '0', '0', 'SEBASTIãO', '2019-10-26 11:15:11', '2019-11-21 07:07:38'),
(1393, 26, 112, 'PAULINA DA SILVA SANTOS', 11, '4067888-1 SSP-AL', 35, '3', '0', '0', 'SEBASTIãO', '2019-10-26 11:17:52', '2019-11-21 07:07:54'),
(1394, 26, 112, 'PAULA DÉBORA DA SILVA SANTOS', 16, '4068879-8 SSP-AL', 36, '3', '0', '0', 'SEBASTIãO', '2019-10-26 11:21:00', '2019-11-21 07:08:17'),
(1395, 26, 112, 'DAISYANE DA SILVA SANTOS', 14, '4067892-0', 39, '3', '0', '0', 'SEBASTIãO', '2019-10-26 11:23:58', '2019-11-04 18:35:49'),
(1396, 26, 36, 'Romildo Lúcio dos Santos', 52, '303883', 25, '3', '0', '0', 'MAXWELL SANTOS', '2019-10-26 17:55:46', '2019-11-28 13:13:16'),
(1397, 26, 452, 'Edna bispo Nogueira de sales', 48, '997590', 19, '3', '0', '0', 'PAULO', '2019-10-27 11:13:28', '2019-11-17 16:34:55'),
(1398, 26, 454, 'EDNA APARECIDA ANDRÉ VIEIRA', 48, '98001184106', 11, '3', '0', '0', 'ALA CAETéS', '2019-10-28 12:53:01', '2019-11-27 22:08:49'),
(1399, 25, 88, 'Daisy Maria da Silva', 46, '1085466', 99, '5', '0', '0', 'DGINA', '2019-11-03 07:33:21', '2019-11-06 09:08:33'),
(1400, 25, 88, 'Daisy Maria da Silva', 46, '1085466', 99, '5', '0', '0', 'DGINA', '2019-11-03 07:33:25', '2019-11-03 20:09:15'),
(1401, 26, 428, NULL, NULL, NULL, 10, '1', '1', '0', NULL, '2019-11-03 20:10:24', '2019-11-03 20:10:24'),
(1402, 26, 429, NULL, NULL, NULL, 9, '1', '1', '0', NULL, '2019-11-03 20:12:11', '2019-11-03 20:12:11'),
(1403, 26, 112, 'Maria das Dores da Silva', 54, '98001354133', 37, '3', '1', '0', 'SEBASTIãO', '2019-11-04 18:03:57', '2019-11-04 18:03:57'),
(1404, 26, 448, 'Daisyane Da Silva Santos', 14, '0000000000', 38, '3', '0', '0', 'GURGURI', '2019-11-04 19:25:53', '2019-11-21 07:08:05'),
(1405, 25, 79, NULL, NULL, NULL, 33, '1', '1', '0', NULL, '2019-11-05 00:12:45', '2019-11-06 08:14:06'),
(1406, 26, 243, NULL, NULL, NULL, 39, '1', '1', '0', NULL, '2019-11-05 10:16:54', '2019-11-05 10:16:54'),
(1407, 26, 243, 'Maria janete Ferreira', 66, '326439 ssp al', 3, '3', '1', '0', 'THALYTUAN', '2019-11-05 10:18:58', '2019-11-05 10:18:58'),
(1408, 25, 140, NULL, NULL, NULL, 30, '1', '1', '0', NULL, '2019-11-05 19:37:36', '2019-11-12 08:37:22'),
(1409, 25, 448, 'Juarez Jakson de Lima Santos', 50, '77724070415', 34, '1', '0', '0', 'GURGURI', '2019-11-06 08:23:20', '2019-11-06 09:04:33'),
(1410, 25, 14, 'Cintia Santos da Silva', 37, '00', 35, '1', '0', '0', 'RAFAEL', '2019-11-06 08:25:44', '2019-11-06 09:00:18'),
(1411, 25, 448, 'CRISTIANO ALBERTO DE OLIVEIRA', 42, '1456789123 SSP/AL', 99, '5', '0', '0', 'GURGURI', '2019-11-06 08:56:48', '2019-11-06 09:00:47'),
(1412, 25, 14, 'Cintia Santos da Silva', 37, '2000001149606', 35, '1', '1', '0', 'RAFAEL', '2019-11-06 08:59:26', '2019-11-06 09:00:02'),
(1413, 25, 455, 'Juarez Jakson de Lima Santos', 50, '969664 SSSP/AL', 34, '1', '1', '0', 'RAFAEL', '2019-11-06 09:03:54', '2019-11-06 09:04:21'),
(1414, 25, 243, 'Cristina Pinto da Silva', 40, '3228693-7', 28, '1', '1', '0', 'THALYTUAN', '2019-11-06 11:40:37', '2019-11-12 08:36:54'),
(1415, 25, 14, 'Aloísio (Gurguri)', 0, '000', 32, '3', '0', '0', 'RAFAEL', '2019-11-06 12:11:46', '2019-11-08 17:21:17'),
(1416, 25, 14, 'Aloísio (Gurguri)', 0, '00', 36, '3', '0', '0', 'RAFAEL', '2019-11-06 12:12:35', '2019-11-08 17:19:22'),
(1417, 25, 452, NULL, NULL, NULL, 0, '1', '0', '0', NULL, '2019-11-06 12:46:57', '2019-11-07 09:05:25'),
(1418, 25, 452, 'Raissa Feijó Tavares', 26, '34141324 ss/Al', 32, '1', '1', '0', 'PAULO', '2019-11-06 13:02:15', '2019-11-08 17:20:01'),
(1419, 25, 243, 'Dayse Maria da Silva Santos', 46, '1085466 SSP-AL', 31, '1', '1', '0', 'THALYTUAN', '2019-11-06 14:28:20', '2019-11-06 14:29:13'),
(1420, 25, 140, 'Felipe de jesus Valdevino dos santos', 15, 'RG: 4330308-0', 18, '1', '1', '0', 'CARLOS HENRIQUE', '2019-11-06 22:18:59', '2019-11-08 17:21:54'),
(1421, 25, 14, 'Aloísio (Gurguri)', 0, '00', 18, '1', '0', '0', 'RAFAEL', '2019-11-07 08:11:02', '2019-11-08 17:24:25'),
(1422, 25, 243, 'Joelma Teixeira Romeiro dos Santos', 43, '1092814', 7, '1', '1', '0', 'THALYTUAN', '2019-11-08 10:29:12', '2019-11-08 17:15:34'),
(1423, 25, 243, 'Aloizio Romeiro dos santos', 57, '4121110', 8, '1', '1', '0', 'THALYTUAN', '2019-11-08 10:30:33', '2019-11-08 17:15:10'),
(1424, 25, 243, 'Erika Teixeira Thomé', 26, '3413658-4', 36, '1', '1', '0', 'THALYTUAN', '2019-11-08 10:32:30', '2019-11-08 17:19:03'),
(1425, 26, 112, 'Cicera Luzia de Andrade Silva', 62, '516437', 27, '1', '1', '0', 'SEBASTIãO', '2019-11-11 11:25:22', '2019-11-25 07:44:43'),
(1426, 26, 142, 'Erivan Vieira de Melo', 35, '2002006020091', 5, '3', '0', '0', 'NATHALIA KAROLYNE DE', '2019-11-11 13:29:33', '2019-11-26 20:54:43'),
(1427, 26, 142, 'Tamilee Ferreira de Lima Melo', 32, '30990874', 6, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-11-11 13:30:18', '2019-11-11 13:30:18'),
(1428, 25, 243, 'Letícia Sabino da Silva', 25, '34485996', 11, '1', '1', '0', 'THALYTUAN', '2019-11-11 17:27:37', '2019-11-11 18:36:22');
INSERT INTO `caravan_users` (`id`, `caravan_id`, `user_id`, `kid`, `kid_age`, `kid_doc`, `poltrona`, `status`, `ativo`, `pagto`, `cadastrador`, `created_at`, `updated_at`) VALUES
(1429, 25, 118, 'Igor Alfredo', 28, '46668700', 37, '1', '1', '0', 'STHARLLES', '2019-11-11 19:55:18', '2019-11-12 08:35:32'),
(1430, 25, 118, 'Deisyanne Ribeiro Peixoto', 29, '46668700', 38, '1', '1', '0', 'STHARLLES', '2019-11-11 20:07:05', '2019-11-12 08:35:59'),
(1431, 25, 118, 'Stharlles Hinckley Da Silva Santos', 25, '38362082', 26, '1', '1', '0', 'STHARLLES', '2019-11-11 20:09:49', '2019-11-15 13:15:18'),
(1432, 25, 178, NULL, NULL, NULL, 25, '1', '1', '0', NULL, '2019-11-12 20:09:49', '2019-11-15 13:16:26'),
(1433, 31, 14, NULL, NULL, NULL, 15, '1', '1', '0', NULL, '2019-11-20 06:45:15', '2019-12-27 18:24:47'),
(1434, 26, 112, 'Ivania Calisto da Silva', 65, '358899', 33, '3', '1', '0', 'SEBASTIãO', '2019-11-20 23:07:52', '2019-11-20 23:07:52'),
(1435, 31, 104, NULL, NULL, NULL, 4, '1', '1', '0', NULL, '2019-11-21 12:19:51', '2019-12-23 00:38:51'),
(1436, 31, 447, NULL, NULL, NULL, 16, '1', '1', '0', NULL, '2019-11-21 13:30:57', '2019-11-21 13:30:57'),
(1437, 31, 142, NULL, NULL, NULL, 17, '1', '1', '0', NULL, '2019-11-21 16:11:47', '2019-11-21 16:11:47'),
(1438, 31, 239, NULL, NULL, NULL, 29, '1', '1', '0', NULL, '2019-11-21 20:25:01', '2019-11-21 20:25:01'),
(1439, 31, 282, NULL, NULL, NULL, 30, '1', '1', '0', NULL, '2019-11-21 22:45:12', '2019-11-21 22:45:12'),
(1440, 31, 311, NULL, NULL, NULL, 1, '1', '1', '0', NULL, '2019-11-22 15:47:38', '2019-11-22 15:47:38'),
(1441, 31, 443, NULL, NULL, NULL, 2, '1', '1', '0', NULL, '2019-11-22 22:53:23', '2019-11-22 22:53:23'),
(1442, 31, 276, NULL, NULL, NULL, 23, '1', '1', '0', NULL, '2019-11-24 08:53:24', '2019-11-24 08:53:24'),
(1443, 26, 142, 'Maria José Pereira Alves', 55, '44775938487', 19, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-11-24 11:12:26', '2019-11-25 07:45:54'),
(1444, 29, 19, NULL, NULL, NULL, 5, '1', '1', '0', NULL, '2019-11-24 23:30:40', '2019-11-24 23:36:23'),
(1445, 29, 19, 'Bob vieira', 3, '2288373737', 0, '4', '1', '0', 'CLAUDIVAN', '2019-11-24 23:39:15', '2019-11-24 23:39:15'),
(1446, 29, 19, 'Bob sud', 12, '82727277272', 0, '4', '1', '0', 'CLAUDIVAN', '2019-11-24 23:40:08', '2019-11-24 23:40:08'),
(1447, 31, 448, 'CÍCERA PEREIRA DOS SANTOS', 66, '4071634', 11, '3', '0', '0', 'BENEDITO BENTES', '2019-11-25 07:39:11', '2019-12-23 01:16:10'),
(1448, 31, 448, 'MARIA DE FÁTIMA DOS SANTOS', 44, '32876165', 12, '3', '0', '0', 'BENEDITO BENTES', '2019-11-25 07:39:58', '2019-12-23 01:16:40'),
(1449, 31, 448, 'RITA DE CÁSSIA DE ALMEIDA', 49, '98001083288', 7, '3', '0', '0', 'BENEDITO BENTES', '2019-11-25 07:40:46', '2019-12-23 01:15:57'),
(1450, 29, 458, NULL, NULL, NULL, 6, '1', '1', '0', NULL, '2019-11-25 10:53:57', '2019-11-25 10:53:57'),
(1451, 29, 458, 'Lula Bolsonaro', 56, '39950320', 2, '3', '1', '0', 'MOACYR', '2019-11-25 10:58:18', '2019-11-25 10:58:18'),
(1452, 29, 458, 'Boró', 45, '3949404', 3, '3', '1', '0', 'MOACYR', '2019-11-25 10:59:05', '2019-11-25 10:59:05'),
(1453, 29, 458, 'Cristiano Ronaldo', 2, '203044', 0, '4', '1', '0', 'MOACYR', '2019-11-25 10:59:40', '2019-11-25 10:59:40'),
(1454, 29, 459, NULL, NULL, NULL, 13, '1', '1', '0', NULL, '2019-11-25 11:00:55', '2019-11-25 11:00:55'),
(1455, 29, 460, NULL, NULL, NULL, 29, '1', '1', '0', NULL, '2019-11-25 12:10:17', '2019-11-25 12:10:17'),
(1456, 29, 460, 'Tabathy Mouzinho Martin Nascimento', 42, '99999999', 30, '3', '1', '0', 'JAGUARACI', '2019-11-25 12:16:27', '2019-11-25 12:16:27'),
(1457, 26, 142, 'Ana Luisa Calumby Estevam Tenório', 18, '36225185', 29, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-11-26 14:56:47', '2019-11-26 14:56:47'),
(1458, 31, 409, NULL, NULL, NULL, 24, '1', '1', '0', NULL, '2019-11-26 17:25:59', '2019-12-23 00:15:14'),
(1459, 31, 246, NULL, NULL, NULL, 49, '1', '1', '0', NULL, '2019-11-26 21:28:52', '2019-11-26 21:28:52'),
(1460, 31, 414, NULL, NULL, NULL, 50, '1', '1', '0', NULL, '2019-11-26 21:30:40', '2019-11-26 21:30:40'),
(1461, 31, 24, NULL, NULL, NULL, 10, '1', '1', '0', NULL, '2019-11-26 22:06:00', '2019-11-26 22:06:00'),
(1462, 31, 24, 'Tassia paulianna Alves da Silva marinho', 29, '32460341', 9, '3', '1', '0', 'TIAGO', '2019-11-26 22:07:53', '2019-11-26 22:07:53'),
(1463, 31, 58, NULL, NULL, NULL, 32, '1', '1', '0', NULL, '2019-11-26 23:05:36', '2019-11-26 23:05:36'),
(1464, 31, 58, 'Isabelle Hortência Lira', 18, '38235609', 31, '3', '1', '0', 'SENI', '2019-11-26 23:10:59', '2019-11-26 23:10:59'),
(1465, 31, 64, NULL, NULL, NULL, 28, '1', '1', '0', NULL, '2019-11-26 23:22:36', '2019-11-26 23:22:36'),
(1466, 31, 63, NULL, NULL, NULL, 27, '1', '1', '0', NULL, '2019-11-26 23:27:34', '2019-11-26 23:27:34'),
(1467, 31, 410, NULL, NULL, NULL, 19, '1', '1', '0', NULL, '2019-11-27 06:14:41', '2019-11-27 18:52:05'),
(1468, 26, 49, NULL, NULL, NULL, 31, '1', '1', '0', NULL, '2019-11-27 09:07:35', '2019-11-27 09:07:35'),
(1469, 31, 410, 'Josenita Ribeiro da Silva Santos', 56, '2000001293030', 20, '3', '1', '0', 'MANILSON', '2019-11-27 22:16:35', '2019-11-27 22:16:35'),
(1470, 26, 118, 'Igor Alfredo', 28, '46668700', 35, '3', '1', '0', 'STHARLLES', '2019-11-28 07:44:03', '2019-11-28 07:44:03'),
(1471, 26, 118, 'Deisyanne Ribeiro Peixoto', 30, '46668700', 36, '3', '1', '0', 'STHARLLES', '2019-11-28 07:50:38', '2019-11-28 07:50:38'),
(1472, 26, 407, NULL, NULL, NULL, 41, '1', '1', '0', NULL, '2019-11-29 21:11:51', '2019-11-29 21:11:51'),
(1473, 26, 142, 'Emanuelle Angelina Leite De Almeida', 20, '40470644', 30, '3', '1', '0', 'NATHALIA KAROLYNE DE', '2019-11-30 11:31:24', '2019-11-30 11:31:24'),
(1474, 29, 462, NULL, NULL, NULL, 7, '1', '1', '0', NULL, '2019-11-30 23:29:34', '2019-11-30 23:29:34'),
(1475, 31, 225, NULL, NULL, NULL, 35, '1', '1', '0', NULL, '2019-12-01 11:04:00', '2019-12-01 11:04:00'),
(1476, 31, 464, NULL, NULL, NULL, 36, '1', '1', '0', NULL, '2019-12-01 14:14:09', '2019-12-01 14:14:09'),
(1477, 31, 415, NULL, NULL, NULL, 45, '1', '0', '0', NULL, '2019-12-01 14:30:12', '2020-01-03 18:41:26'),
(1478, 26, 14, 'MAXWELL SANTOS FARIAS', 26, '0000000', 22, '3', '1', '0', 'RAFAEL', '2019-12-01 21:34:28', '2019-12-01 21:34:28'),
(1479, 26, 14, 'DANIELLE ROSA CALHEIROS FARIAS', 26, '0000000', 21, '3', '1', '0', 'RAFAEL', '2019-12-01 21:37:06', '2019-12-01 21:37:06'),
(1480, 31, 394, 'AZAILDE DE JESUS SANTANA', 65, '00', 3, '1', '0', '0', 'ALA AEROCLUBE', '2019-12-02 00:07:51', '2019-12-23 01:26:51'),
(1481, 31, 180, NULL, NULL, NULL, 25, '1', '1', '0', NULL, '2019-12-02 01:10:15', '2019-12-09 01:25:24'),
(1482, 31, 181, NULL, NULL, NULL, 26, '1', '1', '0', NULL, '2019-12-02 01:12:35', '2019-12-09 01:25:39'),
(1483, 26, 14, 'JESSICA ADRIANA FELIX', 25, '0000000', 11, '3', '1', '0', 'RAFAEL', '2019-12-02 18:07:39', '2019-12-02 18:07:39'),
(1484, 31, 195, NULL, NULL, NULL, 13, '1', '0', '0', NULL, '2019-12-02 20:58:00', '2020-01-05 21:50:16'),
(1485, 31, 243, 'Maria janete Ferreira', 67, '326439 ssp al', 5, '3', '1', '0', 'THALYTUAN', '2019-12-08 12:58:26', '2019-12-08 12:58:26'),
(1486, 31, 14, 'Renata Meyer de Oliveira', 35, '00', 21, '3', '0', '0', 'RAFAEL', '2019-12-09 01:27:13', '2019-12-23 00:13:06'),
(1487, 31, 14, 'Cristiano Oliveira', 40, '00', 22, '3', '0', '0', 'RAFAEL', '2019-12-09 01:27:55', '2019-12-23 00:13:19'),
(1488, 31, 366, NULL, NULL, NULL, 33, '1', '1', '0', NULL, '2019-12-09 07:42:48', '2019-12-09 07:42:48'),
(1489, 31, 122, NULL, NULL, NULL, 37, '1', '1', '0', NULL, '2019-12-09 10:09:28', '2019-12-09 10:09:28'),
(1490, 31, 122, 'magna rosicler silva santos', 29, '32642482', 38, '3', '1', '0', 'LUIZ FERNANDO', '2019-12-09 10:13:44', '2019-12-09 10:13:44'),
(1491, 31, 193, NULL, NULL, NULL, 8, '1', '1', '0', NULL, '2019-12-09 15:15:17', '2019-12-09 15:15:17'),
(1492, 31, 423, 'Rosangela Leite Dos Santos', 52, '99001220739', 6, '3', '1', '0', 'JIVANILDO', '2019-12-09 16:55:03', '2019-12-09 16:55:03'),
(1493, 31, 423, 'Maricelia Maria da Silva', 50, '3450614-4', 18, '3', '1', '0', 'JIVANILDO', '2019-12-09 23:08:11', '2019-12-09 23:08:11'),
(1494, 31, 14, 'JIVANILDO TOMAZ DOS SANTOS', 0, '00', 39, '3', '0', '0', 'RAFAEL', '2019-12-11 13:07:54', '2019-12-23 00:36:09'),
(1495, 31, 14, 'CLAUDIA ANGELICA OLIVEIRA DOS SANTOS', 0, '00', 40, '3', '0', '0', 'RAFAEL', '2019-12-11 13:09:22', '2019-12-23 00:36:26'),
(1496, 31, 14, 'Antônio Carlos da Silva', 0, '00', 42, '3', '0', '0', 'RAFAEL', '2019-12-11 13:11:55', '2019-12-11 13:55:02'),
(1497, 31, 14, 'ILSA MOTA DA SILVA', 0, '00', 41, '3', '0', '0', 'RAFAEL', '2019-12-11 13:16:03', '2019-12-23 00:37:43'),
(1498, 31, 14, 'ANTÔNIO CARLOS DA SILVA', 0, '00', 42, '1', '0', '0', 'RAFAEL', '2019-12-11 13:36:18', '2019-12-23 00:37:14'),
(1499, 31, 243, 'Cristina Pinto da Silva', 40, '3228693-7', 43, '3', '0', '0', 'THALYTUAN', '2019-12-12 09:37:59', '2020-01-03 19:29:52'),
(1500, 31, 243, 'Claudia Crislene Santos da Silva', 16, '14576469', 44, '3', '0', '0', 'THALYTUAN', '2019-12-12 09:41:51', '2020-01-03 19:30:27'),
(1501, 31, 243, 'Cristiano Alberto de oliveira', 45, '00000000', 22, '1', '1', '0', 'THALYTUAN', '2019-12-12 09:44:01', '2019-12-23 00:11:53'),
(1502, 31, 243, 'Renata Maria Costa Sangreman Meyer de Oliveira', 34, '00000000', 21, '1', '1', '0', 'THALYTUAN', '2019-12-12 09:46:32', '2019-12-23 00:12:28'),
(1503, 31, 118, 'Yale Karine dos ramos Silva de Souza', 38, '46668700', 34, '3', '1', '0', 'STHARLLES', '2019-12-14 11:13:10', '2019-12-14 11:13:10'),
(1504, 31, 118, 'Tania Cristina dos Ramos Silva', 56, '92621020622', 46, '3', '1', '0', 'STHARLLES', '2019-12-14 11:15:13', '2019-12-14 11:15:13'),
(1505, 31, 448, 'sasasa', 11, 'asas', 47, '3', '0', '0', 'BENEDITO BENTES', '2019-12-15 01:54:59', '2019-12-15 01:57:44'),
(1506, 31, 118, 'Luiz Daniel de Moura', 51, '46668700', 47, '3', '0', '0', 'STHARLLES', '2019-12-15 09:30:41', '2020-01-05 21:45:54'),
(1507, 31, 118, 'Rivânia dos santos Moura', 48, '12368437588', 48, '3', '0', '0', 'STHARLLES', '2019-12-15 09:31:42', '2020-01-05 21:46:58'),
(1508, 31, 243, 'Maria das Dores da Silva', 54, '98001354133', 7, '1', '1', '0', 'THALYTUAN', '2019-12-15 16:45:54', '2020-01-03 19:22:35'),
(1509, 33, 19, NULL, NULL, NULL, 3, '1', '1', '0', NULL, '2019-12-15 16:54:34', '2019-12-15 18:30:20'),
(1510, 33, 19, 'Gabriela da Silva Costa Vieira', 32, '32167807', 4, '3', '0', '1', 'CLAUDIVAN', '2019-12-15 18:24:50', '2019-12-15 18:27:25'),
(1511, 31, 416, NULL, NULL, NULL, 11, '1', '1', '0', NULL, '2019-12-19 06:15:58', '2019-12-26 13:28:45'),
(1512, 31, 416, 'Romario Henrique da Silva', 28, '33764964', 12, '1', '1', '0', 'CAMILA', '2019-12-19 06:17:00', '2019-12-26 13:28:58'),
(1513, 31, 142, 'Nayara Firmino', 16, '0000000000', 14, '1', '1', '0', 'NATHALIA KAROLYNE DE', '2019-12-22 22:29:22', '2019-12-23 00:14:57'),
(1514, 31, 394, 'JIVANILDO TOMAZ DOS SANTOS', 50, '0000000', 39, '1', '1', '0', 'GURGURI', '2019-12-23 00:25:26', '2019-12-23 00:35:38'),
(1515, 31, 394, 'CLAUDIA ANGELICA OLIVEIRA DOS SANTOS', 50, '00', 40, '1', '1', '0', 'GURGURI', '2019-12-23 00:27:34', '2019-12-23 00:35:53'),
(1516, 31, 448, 'ANTÔNIO CARLOS DA SILVA', 50, '00', 42, '1', '1', '0', 'CAETÉS', '2019-12-23 00:33:10', '2019-12-23 00:37:00'),
(1517, 31, 448, 'ILSA MOTA DA SILVA', 50, '00', 41, '1', '1', '0', 'CAETÉS', '2019-12-23 00:34:28', '2019-12-23 00:36:43'),
(1522, 31, 452, NULL, NULL, NULL, 0, '2', '0', '0', NULL, '2019-12-23 07:37:20', '2020-01-03 18:44:12'),
(1523, 31, 452, 'Oderlane da Silva Rodrigues Bras', 33, '2002001063922', 44, '1', '1', '0', 'PAULO', '2019-12-23 12:35:07', '2020-01-03 19:29:38'),
(1524, 31, 127, 'Geraldo Joaquim de Carvalho Júnior', 51, '1227626', 99, '5', '1', '0', 'CAIO HENRIQUE', '2019-12-25 17:56:22', '2019-12-25 17:56:22'),
(1525, 31, 14, 'azailde de jesus santana', 0, '00', 3, '3', '0', '0', 'RAFAEL', '2019-12-26 13:32:10', '2019-12-26 19:49:45'),
(1526, 31, 447, 'AZAILDE DE JESUS SANTANA', 64, '00000', 3, '1', '1', '0', 'ALESSANDRA CARYNE', '2019-12-26 14:12:22', '2019-12-26 19:49:13'),
(1527, 31, 14, 'Rafael Gomes', 0, '00', 7, '3', '0', '0', 'RAFAEL', '2019-12-26 19:46:40', '2020-01-03 19:22:45'),
(1528, 31, 22, NULL, NULL, NULL, 45, '1', '1', '0', NULL, '2019-12-27 11:25:24', '2020-01-03 18:41:10'),
(1529, 31, 452, 'Nicolas Benneth Rodrigues', 8, '120.466.874-42', 43, '1', '1', '0', 'PAULO', '2019-12-29 14:17:01', '2020-01-03 19:29:24'),
(1530, 31, 417, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2020-01-02 11:38:00', '2020-01-02 11:38:00'),
(1531, 31, 118, 'ELAINE CRISTINE TENÓRIO CORREIA.', 37, '99001228500', 99, '5', '1', '0', 'STHARLLES', '2020-01-03 21:50:37', '2020-01-03 21:50:37'),
(1532, 31, 321, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2020-01-04 19:52:44', '2020-01-04 19:52:44'),
(1533, 31, 321, 'CICERA PEREIRA DOS SANTOS', 0, '00000000', 48, '1', '1', '0', 'GERSON', '2020-01-04 19:54:38', '2020-01-05 21:46:30'),
(1534, 31, 321, 'MARIA DE FÁTIMA DOS SANTOS', 0, '00000000', 47, '1', '1', '0', 'GERSON', '2020-01-04 19:56:05', '2020-01-05 21:45:27'),
(1535, 31, 321, 'RITA DE CÁSSIA DE ALMEIDA', 0, '00000000', 13, '1', '1', '0', 'GERSON', '2020-01-04 19:58:15', '2020-01-05 21:49:52'),
(1536, 31, 112, 'Edneide de Lima da silva', 40, '027.351.94-75', 99, '5', '1', '0', 'SEBASTIãO', '2020-01-05 09:22:57', '2020-01-05 09:22:57'),
(1537, 31, 148, NULL, NULL, NULL, 0, '2', '1', '0', NULL, '2020-01-05 14:17:45', '2020-01-05 14:17:45'),
(1538, 31, 452, 'Ytallo Pabllo Simplício Silva', 13, '4429919-2', 99, '5', '1', '0', 'PAULO', '2020-01-05 19:53:14', '2020-01-05 19:53:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conselor_calendars`
--

CREATE TABLE `conselor_calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `org` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `horario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `conselor_calendars`
--

INSERT INTO `conselor_calendars` (`id`, `org`, `evento`, `date`, `horario`, `local`, `obs`, `ativo`, `created_at`, `updated_at`) VALUES
(7, 'Conselho de Coordenação Maceió', 'Reunião do Conselho de Coordenação Maceió', '2018-04-15', '13h30 - 18h30', 'Sede da Estaca Maceió Brasil', NULL, '1', '2018-03-17 18:31:19', '2018-03-19 11:46:53'),
(8, 'Conselho de Coordenação Maceió', 'DEVOCIONAL DO MAS', '2018-04-15', '19h30', 'Capela do Farol - Sede da Estaca Maceió', NULL, '1', '2018-03-27 13:35:13', '2018-03-27 13:35:13'),
(9, 'Conselho de Coordenação Maceió', 'PROJETO DE SERVIÇO', '2018-11-15', '8h00', 'CASA DE REPOUSO', 'Visita a casa de repouso', '1', '2018-03-27 13:38:16', '2018-03-27 13:38:16'),
(10, 'Conselho de Coordenação Maceió', 'REUNIÃO EXTRAORDINÁRIA CONSELHO DE COORDENAÇÃO MACEIÓ', '2018-05-16', '19h30', 'Vídeo Conferência (Vydeo)', NULL, '1', '2018-05-07 10:13:37', '2018-05-07 10:13:37'),
(11, 'Conselho de Coordenação Maceió', 'Treinamento Nova Presidência Pajuçara Stake', '2018-06-02', '14h', 'Sede da Estaca (Capela Bariloche)', NULL, '1', '2018-05-07 10:17:39', '2018-05-07 10:17:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conselor_meetings`
--

CREATE TABLE `conselor_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `reuniao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presidindo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante11` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante12` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante13` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante14` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante15` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante16` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante17` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante18` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante19` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participante20` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado11` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado12` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado13` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado14` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado15` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado16` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado17` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado18` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado19` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamado20` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao5` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao6` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao7` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao8` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao9` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao10` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao11` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao12` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao13` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao14` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao15` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao16` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao17` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao18` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao19` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participacao20` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `conselor_meetings`
--

INSERT INTO `conselor_meetings` (`id`, `data`, `reuniao`, `presidindo`, `participante1`, `participante2`, `participante3`, `participante4`, `participante5`, `participante6`, `participante7`, `participante8`, `participante9`, `participante10`, `participante11`, `participante12`, `participante13`, `participante14`, `participante15`, `participante16`, `participante17`, `participante18`, `participante19`, `participante20`, `chamado1`, `chamado2`, `chamado3`, `chamado4`, `chamado5`, `chamado6`, `chamado7`, `chamado8`, `chamado9`, `chamado10`, `chamado11`, `chamado12`, `chamado13`, `chamado14`, `chamado15`, `chamado16`, `chamado17`, `chamado18`, `chamado19`, `chamado20`, `participacao1`, `participacao2`, `participacao3`, `participacao4`, `participacao5`, `participacao6`, `participacao7`, `participacao8`, `participacao9`, `participacao10`, `participacao11`, `participacao12`, `participacao13`, `participacao14`, `participacao15`, `participacao16`, `participacao17`, `participacao18`, `participacao19`, `participacao20`, `ata`, `created_at`, `updated_at`) VALUES
(1, '2018-05-16', 'Conselho de Coordenação', 'Elder Antunes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Davi Bispo', 'Eliton S. Oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Especialista de Tecnologia', 'Secretário do Conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<br>', '2018-05-07 10:19:19', '2018-05-07 10:19:19'),
(2, '2018-12-09', 'Conselho de Coordenação', 'Pres. Elder Simplício e Dirig. Eliton S. Oliveira', 'Presidente Tenório', 'Dinio Góes', 'Marcos Pedro', 'Messias', 'Genival', 'Manoel Batista', 'Luiz Humberto Piedade', 'Prado', 'Jailson Oliveira', 'Taylor', 'Davi Bispo', 'Eliton S. Oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Estaca', 'Presidente de Missão', 'Especialista de Tecnologia', 'Secretário do Conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Maceió Brasil', 'Estaca Maceió Pajuçara', 'Estaca Maceió Litoral', 'Estaca Maceió Colina', 'Estaca Maceió Tabuleiro', 'Distrito Lagarto', 'Estaca Aracaju Norte', 'Estaca Aracaju Sul', 'Estaca Arapiraca Brasil', 'Missão Brasil Maceió', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<br><div><b><font size=\"3\">Anúncios:</font></b></div><div><font size=\"3\" style=\"\">Utilizar o intranet -&nbsp;</font></div><div><b><font size=\"3\"><br></font></b></div><div><font size=\"3\" style=\"\"><b>Hino: </b>No monte a bandeira<b> N° </b>04</font></div><div><font size=\"3\" style=\"\"><b>Regente: </b>Presidente Frázio V. Tenório Cavalcante</font></div><div><font size=\"3\" style=\"\"><b>Oração: </b>Presidente Messias</font></div><div><br></div><div><b><font size=\"3\" style=\"\">Treinamento: Elder&nbsp;</font><font size=\"3\">Simplício</font></b></div><div><font size=\"3\"><b>Tópicos</b></font><b><font size=\"3\">:</font></b></div><div><b><font size=\"3\"><br></font></b></div><div><span style=\"font-size: medium; font-weight: 700;\">Hino:&nbsp;</span><span style=\"font-size: medium;\">Povos da terra, vinde escutai</span><span style=\"font-size: medium; font-weight: 700;\">&nbsp;N°&nbsp;</span><span style=\"font-size: medium;\">168</span></div><div><div><font size=\"3\"><span style=\"font-weight: 700;\">Oração: </span>Presidente Prado</font></div></div>', '2018-11-03 14:43:01', '2018-11-03 17:55:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `contacts`
--

INSERT INTO `contacts` (`id`, `stake`, `user_id`, `message_type`, `message`, `answer`, `ativo`, `created_at`, `updated_at`) VALUES
(7, 'Maceió Pajuçara', 11, 'Sugestão', 'Olá boa tarde, sou bispo da ala Jatiuca favor liberar acesso como bispo.\r\n\r\nAtt\r\n\r\nErasmo de Padua', 'Acesso liberado.', '1', '2018-03-02 12:46:16', '2018-03-02 12:57:59'),
(8, 'Maceió Litoral', 6, 'Sugestão', 'Acrescentar documentos em DOC e PDF no sistema. thanks!', 'Isso meu amigo. Será um dos próximos passos. Arquivos, autossuficiência e calendário de aulas dominicais.', '1', '2018-03-19 11:50:08', '2018-03-19 16:45:54'),
(10, 'Maceió Tabuleiro', 54, 'Dúvida', 'Como secretário executivo preciso de acesso a ata de reunião sacramental, para o preenchimento da mesma.', 'Acesso liberado para Agendas Sacramentais.', '1', '2018-04-22 17:42:32', '2018-04-23 17:43:32'),
(11, 'Maceió Tabuleiro', 105, 'Reclamação', 'o meu nome  na caravana aparece como sendo da ala aeroclube e sou do benedito bentes', 'Ao se cadastrar não escolheu a ala e acabou ficando Aeroclube, mas ao editar não estava salvando. No entanto o problema foi resolvido, agora só precisa editar os dados de cadastro e automaticamente mudará em caravanas.', '1', '2018-04-25 21:05:33', '2018-04-25 22:13:59'),
(12, 'Maceió Tabuleiro', 37, 'Sugestão', 'Davi, seria interessante colocar no site o plano da área.. para que possamos trabalhar mais nesse plano.', 'Boa ideia Leandro, vou trabalhar nisso. Obrigado.', '1', '2018-05-13 12:07:41', '2018-05-15 17:27:52'),
(13, 'Maceió Tabuleiro', 141, 'Sugestão', 'tira meu nome da reseva para caravana de junho', 'Irmã, por favor entre em contato com o presidente do Quórum de sua Ala e solicite a ele a retirada do nome.', '1', '2018-06-02 16:42:02', '2018-06-14 07:33:03'),
(14, 'Maceió Tabuleiro', 92, 'Dúvida', 'A caravana de julho será de uma semana? No calendário diz que sim, mas na reserva a data é 21 (sábado). Gostaria de confirmação para efetuar reserva.', 'Irmão Jairo veja com o Pres. Fábio ou Darley, eles que alimentam o sistema.', '1', '2018-06-06 09:54:06', '2018-06-16 10:46:48'),
(15, 'Maceió Tabuleiro', 37, 'Sugestão', 'Davi o presente Fábio pediu para me colocar como responsável pela caravana liberar o sistema de escluir e confirma as acaravanas', 'FEITO! QUALQUER DÚVIDA INFORME.', '1', '2018-06-10 11:43:17', '2018-06-12 19:23:50'),
(16, 'Maceió Tabuleiro', 122, 'Sugestão', 'Onde estão os calendários de aulas? poderia me ajudar onde eu encontro ?', 'O calendário ainda se encontra no site antigo: estacamaceiotabuleiro.zz.vc', '1', '2018-06-17 07:14:27', '2018-06-20 10:18:48'),
(17, 'Maceió Tabuleiro', 54, 'Dúvida', 'Bom dia!\r\nA contagem da caravana de Julho na esta correta, poderia verificar este problema?\r\nO total de alistados na carava é de 49(+2 da reserva) e o sistema só contabilizou 34(+2 da reserva).', 'Juarez, o cálculo está correto, você deve ter confundido o número das poltronas como se fosse o número de alistados. A primeira coluna da lista é o número das poltronas escolhidos pelo membros. Faça uma contagem 1 a 1 e verifique.', '1', '2018-07-07 11:02:42', '2018-07-08 17:02:22'),
(18, 'Maceió Colina', 226, 'Dúvida', 'Boa noite!\r\nComo fazer para introduzir calendário, caravanas e ou outros recursos.\r\n\r\nAtenciosamente;\r\n\r\nJackson Medino', 'Bom dia. Precisa de permissão de presidência de estaca e líder de caravana, essas duas permissões acabam de ser adicionadas ao seu perfil.', '1', '2018-07-15 00:00:48', '2018-07-18 08:45:52'),
(19, 'Maceió Tabuleiro', 47, 'Dúvida', 'Bom dia, não estou conseguindo editar a agenda sacramental, como faço?', NULL, '1', '2018-09-12 02:40:42', '2018-09-12 02:40:42'),
(20, 'Maceió Tabuleiro', 37, 'Dúvida', 'Davi preciso que vc veja um cadastro ae no site do irmão Adriano Alves. Tentei fazer o cadastro e não consegui depois ele me informou login e senha que ele avia tentado sobre isso e não entrou.', 'Segue os dados cadastrados do Adriano:\r\nADRIANO RAMOS ALVES\r\n82 988545423\r\nwilmaramosalves18@gmail.com\r\nMaceió Tabuleiro\r\nGurguri', '1', '2018-09-30 08:17:19', '2018-10-14 21:58:26'),
(21, 'Maceió Tabuleiro', 64, 'Dúvida', 'Estou adicionando as entrevista para avanço no sacerdócio de alguns homens em nossa ala tabuleiro, mas não tem o campo para colocar o nome, como faço? Coloquei todos eles com o meu nome.', 'Entendo. As entrevistas são solicitadas pela própria pessoa que deseja a entrevista, então deve incentivar o próprio membro a criar sua conta no sitesud e solicitar a entrevista.', '1', '2018-11-06 12:31:21', '2018-11-11 18:27:05'),
(22, 'Maceió Tabuleiro', 41, 'Sugestão', 'Acrescentar a opção de ARQUIVO, com os principais formulários de impressão.', 'Obrigado pela sua sugestão!', '1', '2018-11-11 11:30:48', '2018-11-11 18:23:56'),
(23, 'Maceió Tabuleiro', 247, 'Reclamação', 'Quero faser o cadastro da minha filha?', 'Ok irmã, seja mais clara por favor, não está conseguindo fazer o cadastro da sua filha?', '1', '2018-11-29 18:26:52', '2018-12-02 18:49:26'),
(24, 'Maceió Tabuleiro', 4, 'Dúvida', 'É possível resgatar a caravana de dezembro,?? precisamos passar os nomes das pessoas que foram para os bispos realizarem as transferências para a estaca, e não temos essa lista em outro lugar.', 'Sim. Farei isso agora.', '1', '2019-01-04 19:16:07', '2019-01-06 21:50:12'),
(25, 'Maceió Tabuleiro', 196, 'Dúvida', 'Nao estou visualizando a caravana do dia 8 de junho, preciso reservar uma vaga pra uma amiga.. O que esta acontecendo?', 'Site estava em manutenção, mas agora já normalizou.', '1', '2019-05-15 01:01:42', '2019-06-02 01:11:11'),
(26, 'Maceió Tabuleiro', 243, 'Dúvida', 'em que campo do site eu posso realiar o agendamento para receber a bênção patriarca?', 'Fica no link Entrevistas', '1', '2019-08-09 10:00:04', '2019-10-01 12:35:02'),
(27, 'Maceió Tabuleiro', 405, 'Reclamação', 'BOM DIA! \r\nSOLICITEI A MINHA BÊNÇÃO PATRIARCAL NO MÊS DE MAIO DO PRESENTE ANO, PORÉM, ATÉ A PRESENTE DATA, NÃO OBTIVE NENHUMA RESPOSTA.', 'As bênçãos são agendas pelo patriarca, se possível entra em contato com ele.', '1', '2019-08-13 10:31:41', '2019-10-02 18:53:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `arquivo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stake` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `downloads`
--

INSERT INTO `downloads` (`id`, `arquivo`, `descricao`, `stake`, `user_id`, `ativo`, `created_at`, `updated_at`) VALUES
(8, 'downloads/u1f202001010941105e0c9366f0e08.pdf', 'Comunicado Crianças e Jovens 2020.', 'Maceió Tabuleiro', 1, '1', '2020-01-01 09:41:11', '2020-01-01 09:41:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipment`
--

CREATE TABLE `equipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modelo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_serie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtd` int(11) DEFAULT 1,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `equipment`
--

INSERT INTO `equipment` (`id`, `stake`, `name`, `marca`, `modelo`, `num_serie`, `description`, `qtd`, `ativo`, `created_at`, `updated_at`) VALUES
(2, 'Maceió Tabuleiro', 'Data show', 'Epson LCD projctor', 'Powerlite H552A', 'V9UK5303165', 'Data show', 2, '1', '2018-03-06 20:03:35', '2018-03-17 16:58:12'),
(3, 'Maceió Tabuleiro', 'Kit Som (2 Caixas amplificadas+ cabos+Microfones)', 'FRAHM GR12A BT + GR12', 'GR12A BT', '31.351/31.420', 'Som', 1, '1', '2018-03-06 20:07:37', '2019-09-15 18:30:36'),
(4, 'Maceió Tabuleiro', 'Microfones (Baterias não acompanham)', 'KARSECT', 'KRU-302', 'KRU-30213100360', 'Microfones (Baterias não acompanham)', 2, '1', '2018-03-06 20:10:05', '2018-10-15 17:33:52'),
(5, 'Maceió Tabuleiro', 'SMART TV LED 32\"', 'SANSUNG', 'UN32J4300AG', 'Y2BM3X1K401833Y', 'SMART TV SANSUNG LED 32\"', 1, '1', '2018-06-06 19:32:39', '2018-06-06 19:32:39'),
(6, 'Maceió Tabuleiro', 'Palco para atividades', NULL, NULL, NULL, NULL, 1, '0', '2018-10-20 21:05:25', '2018-10-26 12:10:43');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipment_rents`
--

CREATE TABLE `equipment_rents` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `get_date` date NOT NULL,
  `return_date` date NOT NULL,
  `reason_get` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_refuses` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `equipment_rents`
--

INSERT INTO `equipment_rents` (`id`, `stake`, `equipment_id`, `user_id`, `get_date`, `return_date`, `reason_get`, `status`, `reason_refuses`, `ativo`, `created_at`, `updated_at`) VALUES
(103, 'Maceió Tabuleiro', 2, 287, '2019-01-24', '2019-01-26', 'Atividade de Encontro de Casais!!', '1', NULL, '1', '2019-01-15 12:01:40', '2019-01-15 12:01:40'),
(104, 'Maceió Tabuleiro', 3, 287, '2019-01-24', '2019-01-26', 'Atividade de Encontro de Casais!!', '1', NULL, '1', '2019-01-15 12:02:32', '2019-01-15 12:02:32'),
(105, 'Maceió Tabuleiro', 4, 287, '2019-01-24', '2019-01-26', 'Atividade de Encontro de Casais!!', '1', NULL, '1', '2019-01-15 12:03:47', '2019-01-15 12:03:47'),
(106, 'Maceió Tabuleiro', 2, 36, '2019-01-20', '2019-01-24', 'Treinamento de Autossufissiencia - Ala Universitário', '1', NULL, '1', '2019-01-20 10:49:50', '2019-01-20 10:49:50'),
(107, 'Maceió Tabuleiro', 2, 33, '2019-02-16', '2019-02-16', 'Fé em Deus Primária', '1', NULL, '1', '2019-02-05 14:06:37', '2019-02-05 14:06:37'),
(108, 'Maceió Tabuleiro', 2, 33, '2019-02-21', '2019-02-21', 'Primária Fé em Deus', '1', NULL, '1', '2019-02-19 09:59:19', '2019-02-19 09:59:19'),
(109, 'Maceió Tabuleiro', 3, 276, '2019-02-22', '2019-02-23', 'Atividade mas e jas Aeroclube', '1', NULL, '1', '2019-02-20 00:09:53', '2019-02-20 00:09:53'),
(110, 'Maceió Tabuleiro', 4, 276, '2019-02-22', '2019-02-23', 'Atividade mas e jas Aeroclube', '1', NULL, '1', '2019-02-20 00:10:14', '2019-02-20 00:10:14'),
(111, 'Maceió Tabuleiro', 2, 276, '2019-02-22', '2019-02-23', 'Atividade mas e jas Aeroclube', '1', NULL, '1', '2019-02-20 00:10:29', '2019-02-20 00:10:29'),
(112, 'Maceió Tabuleiro', 2, 124, '2019-03-03', '2019-03-10', 'Atividade do JAS e MAS da ala Gurguri.', '1', NULL, '1', '2019-03-01 14:33:14', '2019-03-01 14:33:14'),
(113, 'Maceió Tabuleiro', 2, 284, '2019-03-10', '2019-03-12', 'Devocional da História da Família da ala', '4', 'Reservado para atividade da Escola Dominical da Estaca.', '1', '2019-03-01 17:50:56', '2019-03-22 22:19:23'),
(114, 'Maceió Tabuleiro', 3, 54, '2019-03-15', '2019-03-15', 'Baile do reencontro ORM da Estaca.', '3', NULL, '1', '2019-03-13 02:19:33', '2019-03-22 22:17:06'),
(115, 'Maceió Tabuleiro', 4, 54, '2019-03-15', '2019-03-15', 'Baile do reencontro da ORM da Estaca.', '3', NULL, '1', '2019-03-13 02:21:52', '2019-03-22 22:17:26'),
(116, 'Maceió Tabuleiro', 2, 54, '2019-03-15', '2019-03-15', 'Baile do reencontro da ORM da estaca.', '3', NULL, '1', '2019-03-13 02:22:56', '2019-03-22 22:16:52'),
(117, 'Maceió Tabuleiro', 2, 88, '2019-03-15', '2019-03-17', 'Aniversário da Sociedade de Socorro', '3', NULL, '1', '2019-03-13 02:28:37', '2019-03-22 22:16:38'),
(118, 'Maceió Tabuleiro', 3, 276, '2019-03-16', '2019-03-17', 'Gincana Aeroclube', '1', NULL, '1', '2019-03-16 15:17:01', '2019-03-16 15:17:01'),
(119, 'Maceió Tabuleiro', 4, 276, '2019-03-16', '2019-03-17', 'Gincana Aeroclube', '1', NULL, '1', '2019-03-16 15:17:19', '2019-03-16 15:17:19'),
(120, 'Maceió Tabuleiro', 3, 276, '2019-03-23', '2019-03-24', 'Pré conferência ala Aeroclube', '1', NULL, '1', '2019-03-22 11:45:47', '2019-03-22 11:45:47'),
(121, 'Maceió Tabuleiro', 4, 276, '2019-03-23', '2019-03-24', 'Pré conferência ala Aeroclube', '1', NULL, '1', '2019-03-22 11:46:33', '2019-03-22 11:46:33'),
(122, 'Maceió Tabuleiro', 3, 54, '2019-03-21', '2019-03-23', 'Atividade da Sociedade de Socorro da Ala Pratagy', '1', NULL, '1', '2019-03-22 22:15:26', '2019-03-22 22:15:26'),
(123, 'Maceió Tabuleiro', 4, 54, '2019-03-21', '2019-03-23', 'Atividade da Sociedade de Socorro da Ala Pratagy.', '1', NULL, '1', '2019-03-22 22:16:15', '2019-03-22 22:16:15'),
(124, 'Maceió Tabuleiro', 2, 254, '2019-04-16', '2019-04-16', 'Boas vindas da missão do Elder Florentino', '1', NULL, '1', '2019-04-16 01:47:56', '2019-04-16 01:47:56'),
(125, 'Maceió Tabuleiro', 3, 366, '2019-04-30', '2019-05-02', 'Atividade a nível de ala feriado', '1', NULL, '1', '2019-04-21 23:36:12', '2019-04-21 23:36:12'),
(126, 'Maceió Tabuleiro', 4, 366, '2019-04-30', '2019-05-02', 'Atividade a nível de ala feriado', '1', NULL, '1', '2019-04-21 23:36:44', '2019-04-21 23:36:44'),
(127, 'Maceió Tabuleiro', 2, 366, '2019-04-30', '2019-05-02', 'Atividade a nível de ala feriado', '1', NULL, '1', '2019-04-21 23:37:14', '2019-04-21 23:37:14'),
(128, 'Maceió Tabuleiro', 2, 54, '2019-05-18', '2019-05-18', 'Atividade para casais da estaca tabuleiro.', '1', NULL, '1', '2019-04-22 02:13:40', '2019-04-22 02:13:40'),
(129, 'Maceió Tabuleiro', 2, 64, '2019-05-01', '2019-05-02', 'reunião de integração ( ala tabuleiro e aeroclube )', '1', NULL, '1', '2019-04-24 23:02:17', '2019-04-24 23:02:17'),
(130, 'Maceió Tabuleiro', 3, 64, '2019-05-01', '2019-05-02', 'baile ( alas tabuleiro e aeroclube )', '1', NULL, '1', '2019-04-24 23:03:25', '2019-04-24 23:03:25'),
(131, 'Maceió Tabuleiro', 4, 64, '2019-05-01', '2019-05-02', 'Integração + baile ( alas tabuleiro e aeroclube )', '1', NULL, '1', '2019-04-24 23:04:29', '2019-04-24 23:04:29'),
(132, 'Maceió Tabuleiro', 2, 64, '2019-05-04', '2019-05-05', 'atividade da ala tabuleiro com aeroclube', '1', NULL, '1', '2019-04-25 00:25:53', '2019-04-25 00:25:53'),
(133, 'Maceió Tabuleiro', 3, 64, '2019-05-04', '2019-05-05', 'atividade da ala tabuleiro com aeroclube', '3', NULL, '1', '2019-04-25 00:26:34', '2019-05-26 09:50:37'),
(134, 'Maceió Tabuleiro', 4, 64, '2019-05-04', '2019-05-05', 'atividade da ala tabuleiro com aeroclube', '3', NULL, '1', '2019-04-25 00:27:16', '2019-05-26 09:50:19'),
(135, 'Maceió Tabuleiro', 3, 70, '2019-06-20', '2019-06-22', 'ATIVIDADE DE SÃO JOÃO DA ALA', '1', NULL, '1', '2019-05-05 10:15:04', '2019-05-05 10:15:04'),
(136, 'Maceió Tabuleiro', 2, 254, '2019-05-17', '2019-05-17', 'Chá missionário', '3', NULL, '1', '2019-05-15 01:12:13', '2019-05-26 09:49:57'),
(137, 'Maceió Tabuleiro', 3, 1, '2019-05-31', '2019-06-02', 'Aulão Seminário Pratagy', '1', NULL, '1', '2019-05-19 20:59:13', '2019-05-19 20:59:13'),
(138, 'Maceió Tabuleiro', 4, 1, '2019-05-31', '2019-06-02', 'Aulão Seminário Pratagy', '1', NULL, '1', '2019-05-19 21:00:11', '2019-05-19 21:00:11'),
(139, 'Maceió Tabuleiro', 2, 54, '2019-05-24', '2019-05-24', 'Baile ORM da Estaca.', '3', NULL, '1', '2019-05-22 23:26:38', '2019-05-26 09:49:29'),
(140, 'Maceió Tabuleiro', 3, 54, '2019-05-24', '2019-05-24', 'Baile da ORM da estaca.', '3', NULL, '1', '2019-05-22 23:27:14', '2019-05-26 09:49:16'),
(141, 'Maceió Tabuleiro', 4, 54, '2019-05-24', '2019-05-24', 'Baile da ORM da estaca.', '3', NULL, '1', '2019-05-22 23:27:45', '2019-05-26 09:49:05'),
(142, 'Maceió Tabuleiro', 2, 54, '2019-05-26', '2019-05-26', 'Devocional Suster Taylor e esposas.', '1', NULL, '0', '2019-05-22 23:28:47', '2019-05-22 23:30:35'),
(143, 'Maceió Tabuleiro', 4, 54, '2019-05-26', '2019-05-26', 'Devocional Suster Taylor e esposas.', '1', NULL, '0', '2019-05-22 23:29:38', '2019-05-22 23:30:21'),
(144, 'Maceió Tabuleiro', 2, 54, '2019-05-26', '2019-05-26', 'Devocional Especial Estaca Tabuleiro.', '1', NULL, '1', '2019-05-22 23:33:07', '2019-05-22 23:33:07'),
(145, 'Maceió Tabuleiro', 4, 54, '2019-05-26', '2019-05-26', 'Devocional Especial Estaca Tabuleiro.', '1', NULL, '1', '2019-05-22 23:33:46', '2019-05-22 23:33:46'),
(146, 'Maceió Tabuleiro', 2, 64, '2019-06-22', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 16:51:50', '2019-05-26 16:51:50'),
(147, 'Maceió Tabuleiro', 3, 64, '2019-06-22', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 16:52:23', '2019-05-26 16:52:23'),
(148, 'Maceió Tabuleiro', 4, 64, '2019-06-22', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 16:55:03', '2019-05-26 16:55:03'),
(149, 'Maceió Tabuleiro', 2, 64, '2019-06-21', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 17:01:05', '2019-05-26 17:01:05'),
(150, 'Maceió Tabuleiro', 3, 64, '2019-06-21', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 17:01:37', '2019-05-26 17:01:37'),
(151, 'Maceió Tabuleiro', 4, 64, '2019-06-21', '2019-06-23', 'Atividade festa junina da ala tabuleiro', '1', NULL, '1', '2019-05-26 17:02:05', '2019-05-26 17:02:05'),
(152, 'Maceió Tabuleiro', 3, 127, '2019-06-27', '2019-06-29', 'Atividade junina da ala pratagy', '1', NULL, '0', '2019-05-28 21:17:30', '2019-06-06 20:28:25'),
(153, 'Maceió Tabuleiro', 3, 127, '2019-06-20', '2019-06-22', 'atividade da ala', '1', NULL, '0', '2019-06-06 20:00:24', '2019-06-06 20:28:13'),
(154, 'Maceió Tabuleiro', 2, 402, '2019-06-13', '2019-06-13', 'Atividade ala aeroclube', '1', NULL, '1', '2019-06-09 08:21:47', '2019-06-09 08:21:47'),
(155, 'Maceió Tabuleiro', 3, 402, '2019-06-13', '2019-06-13', 'Atividade ala aeroclube', '1', NULL, '1', '2019-06-09 08:22:14', '2019-06-09 08:22:14'),
(156, 'Maceió Tabuleiro', 4, 402, '2019-06-13', '2019-06-13', 'Atividade ala aeroclube', '1', NULL, '1', '2019-06-09 08:22:34', '2019-06-09 08:22:34'),
(157, 'Maceió Tabuleiro', 2, 54, '2019-06-14', '2019-06-14', 'Atividade de pré conferência da estaca.', '1', NULL, '1', '2019-06-14 01:44:17', '2019-06-14 01:44:17'),
(158, 'Maceió Tabuleiro', 3, 54, '2019-06-14', '2019-06-14', 'Atividade de pré conferência da estaca.', '1', NULL, '1', '2019-06-14 01:46:00', '2019-06-14 01:46:00'),
(159, 'Maceió Tabuleiro', 4, 54, '2019-06-14', '2019-06-14', 'Atividade de pré conferência da estaca.', '1', NULL, '1', '2019-06-14 01:46:33', '2019-06-14 01:46:33'),
(160, 'Maceió Tabuleiro', 3, 402, '2019-06-20', '2019-06-21', 'Atividade da ala', '3', NULL, '1', '2019-06-16 23:34:09', '2019-08-05 08:52:29'),
(161, 'Maceió Tabuleiro', 4, 402, '2019-06-20', '2019-06-21', 'Atividade da Ala', '3', NULL, '1', '2019-06-16 23:35:50', '2019-08-05 08:52:54'),
(162, 'Maceió Tabuleiro', 2, 276, '2019-06-22', '2019-06-22', 'Casamento na ala', '3', NULL, '1', '2019-06-17 20:36:48', '2019-08-05 08:52:14'),
(163, 'Maceió Tabuleiro', 3, 276, '2019-06-22', '2019-06-22', 'Casamento na ala', '3', NULL, '1', '2019-06-17 20:37:08', '2019-08-05 08:52:01'),
(164, 'Maceió Tabuleiro', 4, 276, '2019-06-22', '2019-06-22', 'Casamento na ala', '3', NULL, '1', '2019-06-17 20:37:30', '2019-08-05 08:51:48'),
(165, 'Maceió Tabuleiro', 3, 243, '2019-07-25', '2019-07-27', 'Baile retrô da ala Gurguri', '3', NULL, '1', '2019-07-25 16:22:41', '2019-08-05 08:51:35'),
(166, 'Maceió Tabuleiro', 4, 243, '2019-07-25', '2019-07-27', 'Baile retrô da ala Gurguri', '3', NULL, '1', '2019-07-25 16:23:19', '2019-08-05 08:51:25'),
(167, 'Maceió Tabuleiro', 3, 54, '2019-09-28', '2019-09-28', 'Atividade conjunta Sociedade de Socorro e Primaria.', '3', NULL, '1', '2019-08-05 08:54:25', '2019-09-29 22:59:05'),
(168, 'Maceió Tabuleiro', 4, 54, '2019-09-28', '2019-09-28', 'Atividade conjunta Sociedade de Socorro e Primaria.', '3', NULL, '1', '2019-08-05 08:54:58', '2019-09-29 22:58:45'),
(169, 'Maceió Tabuleiro', 2, 142, '2019-09-14', '2019-09-15', 'Atividade da Soc da ala para a comunidade', '3', NULL, '1', '2019-09-04 12:57:54', '2019-09-17 08:31:00'),
(170, 'Maceió Tabuleiro', 3, 142, '2019-09-14', '2019-09-15', 'Atividade da Soc da ala para a comunidade', '3', NULL, '1', '2019-09-04 12:58:28', '2019-09-17 08:31:42'),
(171, 'Maceió Tabuleiro', 4, 142, '2019-09-14', '2019-09-15', 'Atividade da Soc da ala para a comunidade', '3', NULL, '1', '2019-09-04 12:58:54', '2019-09-17 08:32:03'),
(172, 'Maceió Tabuleiro', 3, 36, '2019-09-06', '2019-09-08', 'Atividade do quórum de Elderes', '3', NULL, '1', '2019-09-05 11:00:12', '2019-09-17 08:32:32'),
(173, 'Maceió Tabuleiro', 2, 281, '2019-06-27', '2019-06-29', 'Atividade da Primária da Ala', '4', 'Equiamento ja reservado para dia 28/09', '1', '2019-09-11 08:29:40', '2019-09-18 07:18:09'),
(174, 'Maceió Tabuleiro', 2, 14, '2019-09-17', '2019-09-20', 'Atividade de Pré-Conferência', '3', NULL, '1', '2019-09-15 18:35:24', '2019-09-29 22:58:04'),
(175, 'Maceió Tabuleiro', 3, 21, '2019-09-19', '2019-09-21', 'Atividade dos jovens para arrecadação de verbas para acampamento', '3', NULL, '1', '2019-09-16 19:05:23', '2019-09-29 22:55:23'),
(176, 'Maceió Tabuleiro', 2, 9, '2019-09-29', '2019-09-29', 'Reunião com os consultores do MAS das alas', '3', NULL, '1', '2019-09-26 22:41:40', '2019-09-29 22:55:43'),
(177, 'Maceió Tabuleiro', 4, 9, '2019-09-29', '2019-09-29', 'Reunião com os consultores do MAS das alas', '3', NULL, '1', '2019-09-26 22:43:45', '2019-09-29 22:56:46'),
(178, 'Maceió Tabuleiro', 2, 281, '2019-10-11', '2019-10-12', 'Atividade da Primária', '2', NULL, '1', '2019-10-05 11:06:05', '2019-10-06 18:03:03'),
(179, 'Maceió Tabuleiro', 2, 14, '2019-10-25', '2019-10-26', 'TREINAMENTO PARA SECRETÁRIOS', '3', NULL, '1', '2019-10-09 13:04:22', '2019-11-18 09:05:53'),
(180, 'Maceió Tabuleiro', 3, 127, '2019-11-01', '2019-10-02', 'Atividade halloween da ala pratagy', '3', NULL, '1', '2019-10-16 10:59:52', '2019-11-18 09:06:07'),
(181, 'Maceió Tabuleiro', 3, 142, '2019-10-19', '2019-10-19', 'Mãos Que Ajudam', '3', NULL, '1', '2019-10-18 17:35:41', '2019-11-18 09:06:49'),
(182, 'Maceió Tabuleiro', 4, 142, '2019-10-19', '2019-10-19', 'Mãos Que Ajudam', '3', NULL, '1', '2019-10-18 17:36:00', '2019-11-18 09:06:40'),
(183, 'Maceió Tabuleiro', 2, 88, '2019-10-26', '2019-10-27', 'Atividade outubro rosa da sociedade de socorro', '3', NULL, '1', '2019-10-19 17:44:08', '2019-11-18 09:06:23'),
(184, 'Maceió Tabuleiro', 3, 88, '2019-10-25', '2019-10-27', 'Atividade outubro rosa da sociedade de socorro', '3', NULL, '1', '2019-10-19 17:45:02', '2019-11-18 09:06:58'),
(185, 'Maceió Tabuleiro', 3, 243, '2019-10-24', '2019-10-27', 'show de talentos da ala', '3', NULL, '1', '2019-10-22 12:32:48', '2019-11-18 09:07:09'),
(186, 'Maceió Tabuleiro', 3, 54, '2019-11-01', '2019-11-02', 'Baile da Ala Pratagy.', '3', NULL, '1', '2019-11-01 09:10:59', '2019-11-18 09:05:40'),
(187, 'Maceió Tabuleiro', 4, 54, '2019-11-01', '2019-11-02', 'Baile da Ala Pratagy.', '3', NULL, '1', '2019-11-01 09:11:29', '2019-11-18 09:05:28'),
(188, 'Maceió Tabuleiro', 3, 54, '2019-11-02', '2019-11-02', 'Atividade da estaca TABULEIRO.', '3', NULL, '1', '2019-11-01 09:12:18', '2019-11-18 09:05:16'),
(189, 'Maceió Tabuleiro', 2, 54, '2019-11-02', '2019-11-02', 'Atividade da estaca TABULEIRO.', '3', NULL, '1', '2019-11-01 09:12:44', '2019-11-18 09:05:05'),
(190, 'Maceió Tabuleiro', 4, 54, '2019-11-02', '2019-11-02', 'Atividade da estaca TABULEIRO.', '3', NULL, '1', '2019-11-01 09:13:14', '2019-11-18 09:04:54'),
(191, 'Maceió Tabuleiro', 2, 36, '2019-11-17', '2019-11-19', 'Devonional História da Família', '3', NULL, '1', '2019-11-10 09:01:48', '2019-11-18 09:04:37'),
(192, 'Maceió Tabuleiro', 3, 36, '2019-11-17', '2019-11-17', 'Devonional História d família', '3', NULL, '1', '2019-11-10 09:02:35', '2019-11-18 09:04:25'),
(193, 'Maceió Tabuleiro', 3, 24, '2019-11-16', '2019-11-16', 'Atividade', '3', NULL, '1', '2019-11-10 11:21:39', '2019-11-18 09:04:12'),
(194, 'Maceió Tabuleiro', 2, 24, '2019-11-16', '2019-11-16', 'Atividade', '3', NULL, '1', '2019-11-10 11:22:27', '2019-11-18 09:04:00'),
(195, 'Maceió Tabuleiro', 4, 24, '2019-11-16', '2019-11-16', 'Atividade', '3', NULL, '1', '2019-11-10 11:25:44', '2019-11-18 09:11:53'),
(196, 'Maceió Tabuleiro', 4, 58, '2019-11-23', '2019-11-23', 'Atividades ORM jovens 11/12 e 13 anos.', '1', NULL, '1', '2019-11-10 14:57:33', '2019-11-10 14:57:33'),
(197, 'Maceió Tabuleiro', 3, 58, '2019-11-23', '2019-11-23', 'Atividades ORM jovens 11/12 e 13 anos.', '1', NULL, '1', '2019-11-10 14:59:18', '2019-11-10 14:59:18'),
(198, 'Maceió Tabuleiro', 3, 58, '2019-12-13', '2019-12-13', 'Baile dos Padrões ORM', '1', NULL, '1', '2019-11-10 15:00:37', '2019-11-10 15:00:37'),
(199, 'Maceió Tabuleiro', 2, 58, '2019-12-13', '2019-12-13', 'Baile dos Padrões ORM', '1', NULL, '1', '2019-11-10 15:01:12', '2019-11-10 15:01:12'),
(200, 'Maceió Tabuleiro', 4, 58, '2019-12-13', '2019-12-13', 'Baile dos Padrões ORM', '1', NULL, '1', '2019-11-10 15:01:49', '2019-11-10 15:01:49'),
(201, 'Maceió Tabuleiro', 3, 70, '2019-11-28', '2019-11-30', 'Baile ORM', '1', NULL, '1', '2019-11-12 02:40:57', '2019-11-12 02:40:57'),
(202, 'Maceió Tabuleiro', 3, 70, '2019-12-19', '2019-12-21', 'ATIVIDADE DE NATAL DA ALA', '3', NULL, '1', '2019-11-17 08:34:58', '2019-12-23 01:47:36'),
(203, 'Maceió Tabuleiro', 2, 70, '2019-12-19', '2019-12-21', 'ATIVIDADE DE NATAL', '3', NULL, '1', '2019-11-17 08:35:40', '2019-12-23 01:47:24'),
(204, 'Maceió Tabuleiro', 4, 70, '2019-12-19', '2019-12-21', 'ATIVIDADE DE NATAL DA ALA UNIVERSITÁRIO', '3', NULL, '1', '2019-11-17 08:36:12', '2019-12-23 01:47:11'),
(205, 'Maceió Tabuleiro', 2, 70, '2019-11-21', '2019-11-23', 'ATIVIDADE PRÉ CONFERÊNCIA', '3', NULL, '1', '2019-11-21 11:19:12', '2019-12-04 17:36:31'),
(206, 'Maceió Tabuleiro', 3, 70, '2019-11-21', '2019-11-23', 'ATIVIDADE PRÉ CONFERÊNCIA', '3', NULL, '1', '2019-11-21 11:19:51', '2019-11-26 20:57:15'),
(207, 'Maceió Tabuleiro', 4, 70, '2019-11-21', '2019-11-23', 'ATIVIDADE PRÉ CONFERÊNCIA', '3', NULL, '1', '2019-11-21 11:20:25', '2019-11-26 20:57:06'),
(208, 'Maceió Tabuleiro', 2, 407, '2019-12-28', '2019-12-29', 'Excelência das Moças', '1', NULL, '1', '2019-11-21 19:11:20', '2019-11-21 19:11:20'),
(209, 'Maceió Tabuleiro', 3, 127, '2019-11-19', '2019-11-21', 'Atividade de Natal das alas', '1', NULL, '0', '2019-11-28 16:01:40', '2019-12-15 12:34:56'),
(210, 'Maceió Tabuleiro', 3, 127, '2019-12-19', '2019-12-21', 'Atividade de Natal das alas', '4', NULL, '1', '2019-11-28 16:02:31', '2019-12-23 01:45:13'),
(211, 'Maceió Tabuleiro', 2, 70, '2019-12-07', '2019-12-09', 'Retransmissão do Treinamento dos jovens', '3', NULL, '1', '2019-12-01 09:18:30', '2019-12-23 01:45:35'),
(212, 'Maceió Tabuleiro', 4, 416, '2019-12-06', '2019-12-08', 'Atividade sociedade de socorro (Confraternização)', '3', NULL, '1', '2019-12-04 15:58:46', '2019-12-23 01:45:48'),
(213, 'Maceió Tabuleiro', 2, 41, '2019-12-13', '2019-12-15', 'Confraternização Ala Caetés', '3', NULL, '1', '2019-12-05 18:25:18', '2019-12-23 01:46:03'),
(214, 'Maceió Tabuleiro', 2, 140, '2019-12-21', '2019-12-22', 'Confraternização da ala aeroclube, passar um filme ,', '3', NULL, '1', '2019-12-09 22:22:46', '2019-12-23 01:50:21'),
(215, 'Maceió Tabuleiro', 3, 140, '2019-12-21', '2019-12-22', 'Confraternização ala ,pra oração , anunciar , canção', '3', NULL, '1', '2019-12-09 22:24:47', '2019-12-26 04:41:25'),
(216, 'Maceió Tabuleiro', 2, 49, '2019-12-15', '2019-12-15', 'Reunião do concelho', '3', NULL, '1', '2019-12-15 07:02:47', '2019-12-26 04:43:15'),
(217, 'Maceió Tabuleiro', 2, 14, '2019-12-27', '2019-12-28', 'Atividade Natalina', '1', NULL, '0', '2019-12-15 19:29:43', '2019-12-15 19:31:45'),
(218, 'Maceió Tabuleiro', 2, 14, '2019-12-27', '2019-12-28', 'Atividade Natalina (Ala Tabuleiro)', '1', NULL, '1', '2019-12-15 19:31:29', '2019-12-15 19:31:29'),
(219, 'Maceió Tabuleiro', 3, 14, '2019-12-27', '2019-12-28', 'Atividade Natalina (Ala Tabuleiro)', '4', 'Equipamento sera utilizado em atividade conjunta na capela em data modificada por motivo especial.', '1', '2019-12-15 19:34:54', '2019-12-26 04:40:43'),
(220, 'Maceió Tabuleiro', 4, 14, '2019-12-27', '2019-12-28', 'Atividade Natalina (Ala Tabuleiro)', '3', NULL, '1', '2019-12-15 19:35:29', '2019-12-26 04:37:55'),
(221, 'Maceió Tabuleiro', 2, 14, '2019-12-19', '2019-12-21', 'ATIVIDADE DE NATAL (GURGURI)', '3', NULL, '1', '2019-12-18 09:19:14', '2019-12-26 04:37:40'),
(222, 'Maceió Tabuleiro', 4, 14, '2019-12-19', '2019-12-21', 'ATIVIDADE DE NATAL (ALA GURGURI)', '3', NULL, '1', '2019-12-18 10:18:07', '2019-12-23 01:49:20'),
(223, 'Maceió Tabuleiro', 2, 58, '2019-12-19', '2019-12-20', 'Excelência das Moças Ala Tabuleito', '3', NULL, '1', '2019-12-18 20:02:24', '2019-12-23 01:48:46'),
(224, 'Maceió Tabuleiro', 2, 58, '2019-12-19', '2019-12-20', 'Excelência das Moças Dia 20/12 Ala Tabuleito', '3', NULL, '1', '2019-12-18 20:05:12', '2019-12-23 01:48:27'),
(225, 'Maceió Tabuleiro', 2, 70, '2019-12-28', '2019-12-29', 'Treinamento do Bispado 5° Domingo.', '1', NULL, '1', '2019-12-19 07:29:52', '2019-12-19 07:29:52'),
(226, 'Maceió Tabuleiro', 3, 407, '2019-12-28', '2019-12-29', 'Excelência das Moças', '1', NULL, '1', '2019-12-21 00:37:53', '2019-12-21 00:37:53'),
(227, 'Maceió Tabuleiro', 4, 407, '2019-12-28', '2019-12-29', 'Excelência das Moças', '1', NULL, '1', '2019-12-21 00:42:14', '2019-12-21 00:42:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `arquivo` blob NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destino` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`id`, `arquivo`, `nome`, `destino`, `descricao`, `created_at`, `updated_at`) VALUES
(25, 0x2f746d702f706870514139436c41, 'hinos', '/tmp/phpQA9ClA', 'hinos.txt', NULL, NULL),
(26, 0x2f746d702f70687035417658776d, 'edital', '/tmp/php5AvXwm', 'edital.pdf', NULL, NULL),
(27, 0x2f746d702f7068704f4971765573, 'certificado', '/tmp/phpOIqvUs', 'certificado.pdf', NULL, NULL),
(28, 0x2f746d702f70687035464d573349, 'mapa', '/tmp/php5FMW3I', 'mapa.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `helps`
--

CREATE TABLE `helps` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `hinos`
--

CREATE TABLE `hinos` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` int(11) NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `hinos`
--

INSERT INTO `hinos` (`id`, `num`, `nome`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 1, 'A Alva Rompe', '1', NULL, NULL),
(2, 2, 'Tal como um facho', '1', NULL, NULL),
(3, 3, 'Alegres cantemos', '1', NULL, NULL),
(4, 4, 'No monte a bandeira', '1', NULL, NULL),
(5, 5, 'Israel, Jesus te chama', '1', NULL, NULL),
(6, 6, 'Um anjo lá do céu', '1', NULL, NULL),
(7, 7, 'O que vimos lá nos céus?', '1', NULL, NULL),
(8, 8, 'Oração pelo Profeta', '1', NULL, NULL),
(9, 9, 'Graças damos, ó Deus, por um profeta', '1', NULL, NULL),
(10, 10, 'Vinde ao profeta escutar', '1', NULL, NULL),
(11, 11, 'Abençoa Nosso Profeta', '1', NULL, NULL),
(12, 12, 'Que manhã maravilhosa!', '1', NULL, NULL),
(13, 13, 'Rejubilai-vos, ó nações', '1', NULL, NULL),
(14, 14, 'Hoje ao profeta rendamos louvores', '1', NULL, NULL),
(15, 15, 'Um pobre e aflito viajor', '1', NULL, NULL),
(16, 16, 'Ó montanhas mil', '1', NULL, NULL),
(17, 17, 'Por teus dons', '1', NULL, NULL),
(18, 18, 'Vede, ó santos', '1', NULL, NULL),
(19, 19, 'Sereno finda o dia', '1', NULL, NULL),
(20, 20, 'Vinde, ó santos', '1', NULL, NULL),
(21, 21, 'Ao Salvador louvemos', '1', NULL, NULL),
(22, 22, 'Em glória resplandece', '1', NULL, NULL),
(23, 23, 'Lá nos cumes', '1', NULL, NULL),
(24, 24, 'Vem, ó dia prometido', '1', NULL, NULL),
(25, 25, 'Bela Sião', '1', NULL, NULL),
(26, 26, 'O mundo desperta', '1', NULL, NULL),
(27, 27, 'Vinde, ó filhos do Senhor', '1', NULL, NULL),
(28, 28, 'Ó vem, supremo Rei', '1', NULL, NULL),
(29, 29, 'Ó Criaturas do Senhor', '1', NULL, NULL),
(30, 30, 'Ó santos, que na terra habitais', '1', NULL, NULL),
(31, 31, 'Com braço forte', '1', NULL, NULL),
(32, 32, 'Castelo forte', '1', NULL, NULL),
(33, 33, 'Glória a Deus cantai', '1', NULL, NULL),
(34, 34, 'Louvai a Deus', '1', NULL, NULL),
(35, 35, 'A Deus, Senhor e Rei', '1', NULL, NULL),
(36, 36, 'Deus É Amor', '1', NULL, NULL),
(37, 37, 'O Senhor meu Pastor é', '1', NULL, NULL),
(38, 38, 'Que toda honra e glória', '1', NULL, NULL),
(39, 39, 'Corações, pois, exultai', '1', NULL, NULL),
(40, 40, 'Jeová, sê nosso guia', '1', NULL, NULL),
(41, 41, 'Firmes segui', '1', NULL, NULL),
(42, 42, 'Que firme alicerce', '1', NULL, NULL),
(43, 43, 'Grandioso És Tu', '1', NULL, NULL),
(44, 44, 'Jesus, minha luz', '1', NULL, NULL),
(45, 45, 'Ó vós que amais ao Senhor', '1', NULL, NULL),
(46, 46, 'Nossas vozes elevemos', '1', NULL, NULL),
(47, 47, 'Deus nos Rege com Amor', '1', NULL, NULL),
(48, 48, 'Ó Pai Bendito', '1', NULL, NULL),
(49, 49, 'Pela beleza que há no chão', '1', NULL, NULL),
(50, 50, 'Cantando louvamos', '1', NULL, NULL),
(51, 51, 'Oração de Graças', '1', NULL, NULL),
(52, 52, 'Vinde, ó povos, graças dar', '1', NULL, NULL),
(53, 53, 'Se tenho fé', '1', NULL, NULL),
(54, 54, 'Doce é o trabalho', '1', NULL, NULL),
(55, 55, 'Santo! Santo! Santo!', '1', NULL, NULL),
(56, 56, 'Os céus proclamam', '1', NULL, NULL),
(57, 57, 'Conta as Bênçãos', '1', NULL, NULL),
(58, 58, 'Ao Deus de Abraão louvai', '1', NULL, NULL),
(59, 59, 'Louvai o Eterno Criador', '1', NULL, NULL),
(60, 60, 'Na escuridão, oh, brilha, meiga luz', '1', NULL, NULL),
(61, 61, 'Careço de Jesus', '1', NULL, NULL),
(62, 62, 'Mais perto quero estar', '1', NULL, NULL),
(63, 63, 'Guia-me a Ti', '1', NULL, NULL),
(64, 64, 'Ó Pai Celeste', '1', NULL, NULL),
(65, 65, 'Jesus Cristo é meu Senhor', '1', NULL, NULL),
(66, 66, 'Creio em Cristo', '1', NULL, NULL),
(67, 67, 'Eu sei que vive o Redentor', '1', NULL, NULL),
(68, 68, 'Vinde a mim', '1', NULL, NULL),
(69, 69, 'Vinde a Cristo', '1', NULL, NULL),
(70, 70, 'Eu sei que vive meu Senhor', '1', NULL, NULL),
(71, 71, 'Testemunho', '1', NULL, NULL),
(72, 72, 'Mestre o mar se revolta', '1', NULL, NULL),
(73, 73, 'Onde encontrar a paz?', '1', NULL, NULL),
(74, 74, 'Sê humilde', '1', NULL, NULL),
(75, 75, 'Mais vontade dá-me', '1', NULL, NULL),
(76, 76, 'Rocha eterna', '1', NULL, NULL),
(77, 77, 'A luz de Deus', '1', NULL, NULL),
(78, 78, 'Embora cheios de pesar', '1', NULL, NULL),
(79, 79, 'Ó doce, grata oração', '1', NULL, NULL),
(80, 80, 'Santo Espírito de Deus', '1', NULL, NULL),
(81, 81, 'Secreta oração', '1', NULL, NULL),
(82, 82, 'Eis-nos agora aqui', '1', NULL, NULL),
(83, 83, 'Com fervor fizeste a prece?', '1', NULL, NULL),
(84, 84, 'Só por em ti, Jesus, pensar', '1', NULL, NULL),
(85, 85, 'Deus vos guarde', '1', NULL, NULL),
(86, 86, 'Nós pedimos-te, Senhor', '1', NULL, NULL),
(87, 87, 'Ó bondoso Pai eterno', '1', NULL, NULL),
(88, 88, 'Dá-nos, tu, ó Pai bondoso', '1', NULL, NULL),
(89, 89, 'Ao partir cantemos', '1', NULL, NULL),
(90, 90, 'Teu santo Espírito, Senhor', '1', NULL, NULL),
(91, 91, 'Qual orvalho que cintila', '1', NULL, NULL),
(92, 92, 'Vai fugindo o dia', '1', NULL, NULL),
(93, 93, 'Suavemente a noite cai', '1', NULL, NULL),
(94, 94, 'Oração para a Noite', '1', NULL, NULL),
(95, 95, 'Eis-nos, hoje, a teus pés', '1', NULL, NULL),
(96, 96, 'É tarde, a noite logo vem', '1', NULL, NULL),
(97, 97, 'Comigo habita', '1', NULL, NULL),
(98, 98, 'Ó Deus, Senhor eterno', '1', NULL, NULL),
(99, 99, 'Ao partilhar de teu amor', '1', NULL, NULL),
(100, 100, 'Entoai a Deus louvor', '1', NULL, NULL),
(101, 101, 'Deus, escuta-nos orar', '1', NULL, NULL),
(102, 102, 'Nossa humilde prece atende', '1', NULL, NULL),
(103, 103, 'Enquanto unidos em amor', '1', NULL, NULL),
(104, 104, 'Quão grato é cantar louvor', '1', NULL, NULL),
(105, 105, 'Cantemos todos a Jesus', '1', NULL, NULL),
(106, 106, 'Jesus de Nazaré, Mestre e Rei', '1', NULL, NULL),
(107, 107, 'Deus tal amor por nós mostrou', '1', NULL, NULL),
(108, 108, 'Eis-nos à mesa do Senhor', '1', NULL, NULL),
(109, 109, 'Em uma cruz Jesus morreu', '1', NULL, NULL),
(110, 110, 'Vede, morreu o Redentor', '1', NULL, NULL),
(111, 111, 'Lembrando a morte de Jesus', '1', NULL, NULL),
(112, 112, 'Assombro me causa', '1', NULL, NULL),
(113, 113, 'No monte do Calvário', '1', NULL, NULL),
(114, 114, 'Da corte celestial', '1', NULL, NULL),
(115, 115, 'Tão humilde ao nascer', '1', NULL, NULL),
(116, 116, 'Sobre o Calvário', '1', NULL, NULL),
(117, 117, 'Com irmãos nós reunidos', '1', NULL, NULL),
(118, 118, 'Manhã da Ressurreição', '1', NULL, NULL),
(119, 119, 'Cristo é já ressuscitado', '1', NULL, NULL),
(120, 120, 'Cristo já ressuscitou', '1', NULL, NULL),
(121, 121, 'Mundo feliz, nasceu Jesus', '1', NULL, NULL),
(122, 122, 'Erguei-vos cantando', '1', NULL, NULL),
(123, 123, 'Lá na Judéia, onde Cristo nasceu', '1', NULL, NULL),
(124, 124, 'Anjos descem a cantar', '1', NULL, NULL),
(125, 125, 'Ouvi os sinos do Natal', '1', NULL, NULL),
(126, 126, 'Noite feliz', '1', NULL, NULL),
(127, 127, 'Jesus num presepe', '1', NULL, NULL),
(128, 128, 'Na bela noite se ouviu', '1', NULL, NULL),
(129, 129, 'Pequena vila de Belém', '1', NULL, NULL),
(130, 130, 'No céu desponta nova luz', '1', NULL, NULL),
(131, 131, 'No dia de Natal', '1', NULL, NULL),
(132, 132, 'Eis dos anjos a harmonia', '1', NULL, NULL),
(133, 133, 'Quando o anjo proclamou', '1', NULL, NULL),
(134, 134, 'Sim, Eu Te Seguirei', '1', NULL, NULL),
(135, 135, 'Eu Devo Partilhar', '1', NULL, NULL),
(136, 136, 'Neste mundo', '1', NULL, NULL),
(137, 137, 'Oh! falemos palavras amáveis', '1', NULL, NULL),
(138, 138, 'Não deixeis palavras duras', '1', NULL, NULL),
(139, 139, 'Deus é consolador sem par', '1', NULL, NULL),
(140, 140, 'Ama o Pastor seu rebanho', '1', NULL, NULL),
(141, 141, 'Trabalhemos hoje', '1', NULL, NULL),
(142, 142, 'A vida é luta sem quartel', '1', NULL, NULL),
(143, 143, 'Pai, inspira-me, eu peço', '1', NULL, NULL),
(144, 144, 'Mãos ao trabalho', '1', NULL, NULL),
(145, 145, 'Sempre que alguém nos faz o bem', '1', NULL, NULL),
(146, 146, 'Se a vida é penosa', '1', NULL, NULL),
(147, 147, 'Faze o bem', '1', NULL, NULL),
(148, 148, 'Faze o bem, escolhendo o que é certo', '1', NULL, NULL),
(149, 149, 'A alma é livre', '1', NULL, NULL),
(150, 150, 'Quem segue ao Senhor?', '1', NULL, NULL),
(151, 151, 'Minha alma hoje tem a luz', '1', NULL, NULL),
(152, 152, 'Prolongue os bons momentos', '1', NULL, NULL),
(153, 153, 'Deixa a luz do sol entrar', '1', NULL, NULL),
(154, 154, 'Enquanto o sol brilha', '1', NULL, NULL),
(155, 155, 'Luz Espalhai', '1', NULL, NULL),
(156, 156, 'Agora Não, mas Logo Mais', '1', NULL, NULL),
(157, 157, 'Amor que Cristo demonstrou', '1', NULL, NULL),
(158, 158, 'Tu Jesus, ó rocha eterna', '1', NULL, NULL),
(159, 159, 'À glória nós iremos', '1', NULL, NULL),
(160, 160, 'Somos os soldados', '1', NULL, NULL),
(161, 161, 'As hostes do eterno', '1', NULL, NULL),
(162, 162, 'Com valor marchemos', '1', NULL, NULL),
(163, 163, 'Ide por Todo o Mundo', '1', NULL, NULL),
(164, 164, 'De um a outro pólo', '1', NULL, NULL),
(165, 165, 'Semeando', '1', NULL, NULL),
(166, 166, 'Chamados a Servir', '1', NULL, NULL),
(167, 167, 'Aonde mandares irei', '1', NULL, NULL),
(168, 168, 'Povos da terra, vinde, escutai!', '1', NULL, NULL),
(169, 169, 'Eis os teus filhos, ó Senhor', '1', NULL, NULL),
(170, 170, 'Avante, ao mundo proclamai', '1', NULL, NULL),
(171, 171, 'A verdade o que é?', '1', NULL, NULL),
(172, 172, 'A verdade é nosso guia', '1', NULL, NULL),
(173, 173, 'Ao raiar o novo dia', '1', NULL, NULL),
(174, 174, 'Sê bem-vindo, dia santo', '1', NULL, NULL),
(175, 175, 'Do pó nos fala uma voz', '1', NULL, NULL),
(176, 176, 'Estudando as escrituras', '1', NULL, NULL),
(177, 177, 'Ó meu Pai', '1', NULL, NULL),
(178, 178, 'Ó quão majestosa é a obra de Deus', '1', NULL, NULL),
(179, 179, 'Ó Jeová, Senhor do céu', '1', NULL, NULL),
(180, 180, 'Já refulge a glória eterna', '1', NULL, NULL),
(181, 181, 'O fim se aproxima', '1', NULL, NULL),
(182, 182, 'Juventude da promessa', '1', NULL, NULL),
(183, 183, 'Deve Sião fugir à luta?', '1', NULL, NULL),
(184, 184, 'Constantes qual firmes montanhas', '1', NULL, NULL),
(185, 185, 'Quão belos são', '1', NULL, NULL),
(186, 186, 'Levantai-vos, ide ao templo', '1', NULL, NULL),
(187, 187, 'Nós dedicamos esta casa', '1', NULL, NULL),
(188, 188, 'Com Amor no Lar', '1', NULL, NULL),
(189, 189, 'Pode o lar ser como o céu', '1', NULL, NULL),
(190, 190, 'Os teus filhos, Pai Celeste', '1', NULL, NULL),
(191, 191, 'As Famílias Poderão Ser Eternas', '1', NULL, NULL),
(192, 192, 'Ó crianças, Deus vos ama', '1', NULL, NULL),
(193, 193, 'Sou um filho de Deus', '1', NULL, NULL),
(194, 194, 'Guarda os mandamentos', '1', NULL, NULL),
(195, 195, 'Que Deus vive eu sei', '1', NULL, NULL),
(196, 196, 'Nas montanhas de Sião', '1', NULL, NULL),
(197, 197, 'Amai-vos uns aos outros', '1', NULL, NULL),
(198, 198, 'Quando vejo o sol raiar', '1', NULL, NULL),
(199, 199, 'Faz-me andar só na luz', '1', NULL, NULL),
(200, 200, 'Irmãs em Sião', '1', NULL, NULL),
(201, 201, 'Ó filhos do Senhor', '1', NULL, NULL),
(202, 202, 'Brilham raios de clemência', '1', NULL, NULL),
(203, 203, 'Ó élderes de Israel', '1', NULL, NULL),
(204, 204, 'Ó vós que sois chamados', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `interviews`
--

CREATE TABLE `interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `interview_type_id` int(11) NOT NULL,
  `nome` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interviewer` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `local` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `interviews`
--

INSERT INTO `interviews` (`id`, `user_id`, `interview_type_id`, `nome`, `stake`, `interviewer`, `data`, `local`, `status`, `ativo`, `created_at`, `updated_at`) VALUES
(81, 1, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', NULL, NULL, '1', '1', '2019-01-06 19:03:42', '2019-01-06 19:03:42'),
(82, 310, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', NULL, NULL, '1', '1', '2019-01-07 01:04:33', '2019-01-07 01:04:33'),
(83, 220, 1, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-01-08 00:33:01', '2019-01-08 00:33:01'),
(84, 42, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '0', '2019-01-10 20:12:27', '2019-12-29 08:49:26'),
(85, 104, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-02-24 16:00:00', NULL, '4', '1', '2019-01-10 22:09:44', '2019-03-10 21:36:02'),
(86, 276, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-03-24 16:00:00', NULL, '2', '0', '2019-01-23 00:05:15', '2019-03-31 11:15:49'),
(87, 24, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-07 16:30:00', NULL, '4', '1', '2019-01-24 21:59:27', '2019-08-17 21:45:01'),
(88, 28, 1, NULL, 'Aracajú Norte', '1º Cons.', NULL, NULL, '1', '0', '2019-01-29 12:07:36', '2019-01-29 12:19:13'),
(89, 262, 5, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-02-02 01:53:47', '2019-02-02 01:53:47'),
(90, 360, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-02-03 10:47:12', '2019-02-03 10:47:12'),
(91, 351, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '4', '1', '2019-02-03 10:47:35', '2019-04-03 12:07:27'),
(92, 321, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-02-10 14:02:52', '2019-02-18 00:26:17'),
(93, 74, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '3', '0', '2019-02-10 18:59:15', '2019-02-18 00:27:00'),
(94, 365, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-02-10 19:16:01', '2019-02-18 00:28:56'),
(95, 365, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-14 16:00:00', NULL, '4', '1', '2019-02-10 19:16:42', '2019-08-17 21:32:15'),
(96, 241, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-04-07 16:30:00', NULL, '4', '1', '2019-02-11 01:53:23', '2019-06-30 21:59:16'),
(97, 3, 5, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-02-11 13:09:52', '2019-02-11 13:09:52'),
(98, 118, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', '2019-02-17 08:00:00', NULL, '2', '1', '2019-02-11 15:30:02', '2019-02-14 21:48:12'),
(99, 118, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '0', '2019-02-11 15:30:26', '2019-04-03 12:24:27'),
(100, 58, 5, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-02-11 19:15:13', '2019-02-11 19:15:13'),
(101, 372, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-14 16:30:00', NULL, '4', '1', '2019-02-17 23:44:28', '2019-07-14 15:00:48'),
(102, 112, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-21 16:00:00', NULL, '2', '0', '2019-02-23 01:30:22', '2019-06-30 22:13:02'),
(103, 376, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-04-28 16:00:00', NULL, '2', '0', '2019-02-25 17:52:22', '2019-06-30 22:29:38'),
(104, 378, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-05-05 17:00:00', NULL, '2', '1', '2019-02-26 00:45:06', '2019-03-10 23:28:08'),
(105, 64, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-05-05 16:00:00', NULL, '2', '0', '2019-03-02 12:36:52', '2019-06-09 12:12:07'),
(106, 195, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', '2019-03-07 19:30:00', NULL, '2', '1', '2019-03-03 22:11:50', '2019-03-07 20:10:48'),
(107, 187, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-05-12 16:00:00', NULL, '2', '1', '2019-03-10 20:14:49', '2019-03-10 23:29:54'),
(108, 381, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-05-19 16:00:00', NULL, '4', '1', '2019-03-15 22:11:25', '2019-08-17 21:31:37'),
(109, 384, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-05-19 17:00:00', NULL, '4', '1', '2019-03-22 21:52:06', '2019-08-17 21:31:22'),
(110, 276, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-04-14 17:00:00', NULL, '2', '0', '2019-03-24 01:26:06', '2019-06-05 22:35:51'),
(111, 64, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', '2019-04-11 19:30:00', NULL, '2', '1', '2019-04-02 21:36:10', '2019-04-06 18:14:36'),
(112, 64, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-04-02 21:36:23', '2019-04-02 21:36:23'),
(113, 386, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', NULL, NULL, '1', '1', '2019-04-09 13:52:39', '2019-04-09 13:52:39'),
(114, 227, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-15 17:00:00', NULL, '2', '1', '2019-04-12 22:01:44', '2019-09-08 14:58:31'),
(115, 356, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', '2019-04-24 19:30:00', NULL, '2', '1', '2019-04-13 20:55:49', '2019-04-23 00:52:39'),
(116, 356, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-29 16:30:00', NULL, '2', '0', '2019-04-14 20:26:55', '2019-11-21 21:07:51'),
(117, 54, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-28 16:30:00', NULL, '3', '1', '2019-04-28 14:58:08', '2019-09-08 15:15:58'),
(118, 227, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-04-29 17:52:24', '2019-06-30 22:18:53'),
(119, 112, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-07-28 16:30:00', NULL, '3', '1', '2019-04-30 12:36:22', '2019-09-08 15:15:18'),
(120, 48, 2, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-05-03 23:20:37', '2019-05-03 23:20:37'),
(121, 276, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-05-05 12:25:28', '2019-06-05 22:36:25'),
(122, 9, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-05-07 12:47:28', '2019-05-07 12:47:28'),
(123, 64, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-04 16:00:00', NULL, '4', '1', '2019-05-14 21:14:38', '2019-08-17 21:30:53'),
(124, 376, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-04 16:30:00', NULL, '4', '1', '2019-05-20 18:35:28', '2019-08-17 21:30:35'),
(125, 246, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-11 16:00:00', NULL, '4', '1', '2019-05-26 22:14:03', '2019-08-17 21:30:17'),
(126, 405, 6, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-05-27 19:47:34', '2019-05-27 19:47:34'),
(127, 9, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-05-29 16:01:22', '2019-05-29 16:01:22'),
(128, 276, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-11 16:00:00', NULL, '4', '1', '2019-05-30 05:29:25', '2019-08-17 21:29:55'),
(129, 409, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-18 16:00:00', NULL, '4', '1', '2019-06-05 14:27:46', '2019-08-25 08:17:13'),
(130, 70, 4, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-06-06 20:33:43', '2019-06-06 20:33:43'),
(131, 127, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-08-18 16:30:00', NULL, '4', '1', '2019-06-23 15:21:12', '2019-08-25 08:15:26'),
(132, 366, 4, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-06-28 07:26:17', '2019-06-28 07:26:17'),
(133, 418, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-08 16:00:00', NULL, '2', '1', '2019-07-11 09:56:11', '2019-12-05 06:25:21'),
(134, 420, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-07-15 18:08:05', '2019-07-15 18:08:05'),
(135, 76, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-07-15 18:11:59', '2019-07-15 18:11:59'),
(136, 421, 6, NULL, 'Maceió Colina', 'Patriarca', NULL, NULL, '1', '1', '2019-07-16 06:57:46', '2019-07-16 06:57:46'),
(137, 421, 6, NULL, 'Maceió Colina', 'Patriarca', NULL, NULL, '1', '1', '2019-07-19 22:33:03', '2019-07-19 22:33:03'),
(138, 430, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-15 16:30:00', NULL, '4', '1', '2019-07-28 21:03:21', '2019-11-21 21:07:20'),
(139, 356, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-15 16:00:00', NULL, '4', '1', '2019-07-31 20:14:03', '2019-11-21 21:07:02'),
(140, 367, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-22 16:30:00', NULL, '4', '1', '2019-07-31 20:55:24', '2019-11-21 21:06:38'),
(141, 433, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-29 17:00:00', NULL, '4', '1', '2019-08-02 18:30:04', '2019-11-21 21:06:22'),
(142, 384, 2, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-08-04 12:28:03', '2019-08-04 12:28:03'),
(143, 405, 6, NULL, 'Maceió Tabuleiro', 'Presidente', NULL, NULL, '1', '1', '2019-08-13 10:28:52', '2019-08-13 10:28:52'),
(144, 405, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-09-29 16:00:00', NULL, '4', '1', '2019-08-13 10:29:31', '2019-11-21 21:06:04'),
(145, 410, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-08-18 16:59:10', '2019-10-24 21:17:03'),
(146, 410, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-15 16:30:00', NULL, '2', '0', '2019-08-18 16:59:43', '2019-12-15 15:24:59'),
(147, 436, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-15 16:00:00', NULL, '2', '1', '2019-08-18 21:55:04', '2019-12-05 06:29:09'),
(148, 437, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-22 16:00:00', NULL, '2', '1', '2019-08-25 16:34:18', '2019-12-05 06:31:42'),
(149, 227, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-09-03 21:09:10', '2019-09-08 14:58:47'),
(150, 438, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-22 16:30:00', NULL, '2', '1', '2019-09-03 22:35:39', '2019-12-05 06:32:31'),
(151, 439, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-29 16:00:00', NULL, '2', '1', '2019-09-07 22:31:29', '2019-12-05 06:41:15'),
(152, 446, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-29 16:30:00', NULL, '2', '1', '2019-10-06 16:30:38', '2019-12-05 06:42:21'),
(153, 54, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2019-12-08 16:30:00', NULL, '2', '0', '2019-10-06 17:59:33', '2019-12-15 15:47:47'),
(154, 14, 1, NULL, 'Maceió Tabuleiro', '1º Cons.', NULL, NULL, '1', '0', '2019-11-01 06:43:08', '2019-11-01 06:43:30'),
(155, 438, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-11-11 02:13:01', '2019-12-05 06:35:49'),
(156, 423, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '1', '1', '2019-11-11 09:25:05', '2019-11-11 09:25:05'),
(157, 457, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2020-01-05 16:30:00', NULL, '2', '1', '2019-11-17 22:33:16', '2019-12-05 06:44:50'),
(158, 70, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2020-01-05 16:00:00', NULL, '2', '1', '2019-11-24 15:06:00', '2019-12-05 06:45:37'),
(159, 282, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2020-01-12 16:30:00', NULL, '2', '1', '2019-11-25 23:43:29', '2019-12-05 06:48:29'),
(160, 464, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', '2020-01-12 16:00:00', NULL, '2', '1', '2019-12-01 14:17:47', '2019-12-05 06:49:42'),
(161, 465, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '4', '1', '2019-12-08 11:33:15', '2019-12-29 08:18:44'),
(162, 243, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '1', '2019-12-11 11:22:59', '2019-12-11 11:22:59'),
(163, 466, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '1', '2019-12-11 13:08:08', '2019-12-11 13:08:08'),
(164, 218, 1, 'willian farias', 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '4', '1', '2019-12-15 10:52:40', '2019-12-29 08:19:24'),
(165, 467, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '4', '1', '2019-12-15 13:15:51', '2019-12-29 08:18:18'),
(166, 468, 1, NULL, 'Maceió Tabuleiro', '2º Cons.', NULL, NULL, '4', '1', '2019-12-16 12:45:52', '2019-12-29 08:17:51'),
(167, 469, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '1', '2019-12-16 20:24:03', '2019-12-16 20:24:03'),
(168, 466, 6, NULL, 'Maceió Tabuleiro', 'Patriarca', NULL, NULL, '1', '0', '2019-12-23 17:56:14', '2020-01-05 18:37:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `interview_types`
--

CREATE TABLE `interview_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `interview_types`
--

INSERT INTO `interview_types` (`id`, `description`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 'Renovar recomendação (com Conselheiros)', '1', NULL, NULL),
(2, 'Primeira recomendação (Somente com Presidente)', '1', NULL, NULL),
(3, 'Sacerdócio de Melquisedeque', '1', NULL, NULL),
(4, 'Missão de Tempo Intregral (Só com Presidente)', '1', NULL, NULL),
(5, 'Motivo Particular', '1', NULL, NULL),
(6, 'BENÇÃO PATRIARCAL (Somente com Patriarca)', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `messages`
--

INSERT INTO `messages` (`id`, `stake`, `user_id`, `message`, `ativo`, `created_at`, `updated_at`) VALUES
(15, 'Maceió Tabuleiro', 9, '( Escritura do Mês para a estaca)\r\nD&C 128:22\r\n(Nosso Lema)\r\n\"Irmãos, não prosseguiremos em tão grande causa? Ide avante e não para trás. Coragem, irmãos; e avante, avante para a vitória! \"', '1', '2019-10-01 12:37:50', '2019-10-01 12:37:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2018_02_13_205130_create_equipments_table', 1),
(120, '2014_10_12_000000_create_users_table', 2),
(121, '2014_10_12_100000_create_password_resets_table', 2),
(122, '2018_01_17_125006_create_roles_table', 2),
(123, '2018_01_22_125151_create_permissions_table', 2),
(124, '2018_01_22_125359_create_permission_role_table', 2),
(125, '2018_01_27_203312_create_calendars_table', 2),
(126, '2018_01_29_155431_create_interviews_table', 2),
(127, '2018_01_30_234635_create_caravans_table', 2),
(128, '2018_01_31_105454_create_caravan_users_table', 2),
(129, '2018_02_02_110616_create_interview_types_table', 2),
(130, '2018_02_13_092744_create_role_user_table', 2),
(131, '2018_02_13_201740_create_equipment_rents_table', 2),
(132, '2018_02_13_224734_create_equipment_table', 2),
(133, '2018_02_14_165225_create_calleds_table', 2),
(134, '2018_02_15_234109_create_sacramental_meetings_table', 2),
(135, '2018_02_18_073350_create_hinos_table', 2),
(136, '2018_02_27_103325_create_contacts_table', 2),
(137, '2018_02_27_104340_create_helps_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('marinhotiago035@gmail.com', '$2y$10$u6OTmDcx4ZwX6BdOfsIZP.Xjsy.oXMm6xygLHfVrgj0KYvF8mmY0S', '2018-03-06 19:50:24'),
('robvieiradasilva@outlook.com', '$2y$10$27vEjnxdkdOR9c2vHlcGw.Oim0HYA7vF7xFuk7K/.W6NgVbb.Oquq', '2018-03-28 15:01:30'),
('gersonjge@gmail.com', '$2y$10$NSkhpUxSMPx0FVSWq4sdAuONmEY5gHAhXIYhwy37nFt/J0sooSlxe', '2018-04-23 10:11:01'),
('joelson.silva.conceicao18@gmail.com', '$2y$10$n67NHj0wPebIk0SRp.QyiuqP0Mhx7ooYmtePl8sMORvT013jQqN1e', '2018-05-24 12:01:57'),
('joseairtonlds@gmail.com', '$2y$10$i4DRzi2pYTgJCwg1dtnNI.gcf9mrIvE6kazONJdnEZBeJ4QqvsHMO', '2018-05-26 10:36:23'),
('arianalima451@gmail.com.br', '$2y$10$pz.aSbzItX06Ys6u16FCV.8ABuHaGmGgXNYqKsS4jk4JiRAGQswXG', '2018-05-27 21:52:04'),
('leticiafamiliacarvalho98@gmail.com', '$2y$10$kb1jXUWcu8M92ERaojP/6u0DRnGKPTUawFZxcUrSmKn..yJ.Sa8SW', '2018-06-10 15:04:39'),
('liko_alisson@hotmail.com', '$2y$10$WbVYGh0TMe87WMjoQybDxe6qAYHi8ahVmRjfZel1.3kyQN0vf2QdS', '2018-06-11 16:53:23'),
('gersonjge@bool.com', '$2y$10$FcKxLWScwY59rVk1tr2sGel4DYF12U/gxAPzf5qkJ7ecV8faJyaDq', '2018-06-16 08:06:36'),
('marinamourasantoss@gmail.com', '$2y$10$P17b6LsWnL3q5Vp3sa0SdOmeyNUywWpMVFdyMGfBlXWqXpKGv4RdO', '2018-06-22 13:43:28'),
('leiliane.sabino@Outlook.com', '$2y$10$lBoouEznKgrE21tDPmIFhux4ExRrxOXcAWZjlx1y0Lu7pZ4MI8Grq', '2018-07-16 11:38:40'),
('1000tonscabelos@hotmail.com', '$2y$10$tx7fsIddnNzMpNmL14JdCOw.EsX10VZSKce6DNSXcpDILC7IJ.b8a', '2018-08-08 17:35:15'),
('mayconericles@hotmail.com', '$2y$10$eajXm4yKuZmbNjSc9ZmYAebQpcaclm/E1SBvxDkT7aZxpW9iaiZFy', '2018-08-22 19:13:12'),
('caio.hds.sud@gmail.com', '$2y$10$UVBa4AXknXjuow2VBRriDuxbi8dLgDhW1YNux1Zuei1MVA5oFDzQm', '2018-10-31 10:33:16'),
('deisyrps@outlook.com', '$2y$10$ao7iDwDOTtAeDtR79R4tFOlTnh/HRFFq0HZApzS2ctclk0XZ2MFr.', '2018-11-05 15:18:19'),
('leonardo-lins22@live.com', '$2y$10$rrTlvwEGgWAmJbuZrvctO.L4xrh5rmBAKi9pBDeCHLEWoN8QfhdvK', '2018-11-12 10:02:18'),
('tony_fotebolista@hotmail.com', '$2y$10$VWHek1kE8Hw6EkZOMheBJO.5fbXgWymqH.U94IP3i3e8sAPTtJuK.', '2018-11-17 10:26:42'),
('dginalins@hotmail.com', '$2y$10$.QfWFHwNr/jLLq.mfdx9F.H0YqNggh/mjhGwYPEAS1KT020TGu.k2', '2018-12-09 13:35:27'),
('gbritoalvaro@gmail.com', '$2y$10$R5Gap/eSoKlAn5CzzroXaO9NOTmkJoHNPcSnX/scZTRNkBeWBNzzu', '2018-12-10 10:18:15'),
('Thasantos21.ts@gmail.com', '$2y$10$rOFhIvmwlkMt3BhY1nvaheGCamTgcuk8Nkk5Ft6ndH0Sok2iRI1tO', '2018-12-14 22:39:36'),
('gilbertoctr@hotmail.com', '$2y$10$X8G33eCbISmTMZog1YrVneZyE6QAb2aeNqAVdS6ancE4vQAfYGIWa', '2018-12-16 19:50:00'),
('estevao.s.consultoria@gmail.com', '$2y$10$VlmoLen/Dl0sAITAyGlnkepDvhUd5ALSjXPEVHWemF77Bgaoui4mC', '2018-12-23 14:24:30'),
('cw345440@gmail.com', '$2y$10$fmsUZJyNnYsmoIgw7eIRduYq8R6OvH68QmLH097R.qBBs.XdnGtIe', '2018-12-25 21:11:08'),
('cbicaleti@outlook.com', '$2y$10$8raUp5ba8UxR8f8W/BhKAujzZXWgxM8ukk4nrKgovobDuMA66tFHC', '2019-01-04 10:16:25'),
('veronicavasconcelos_sud@hotmail.com', '$2y$10$nnzZAxzzN6H/fRIbIheLaunDU4D9ei1fDalbMRvVJuL6yk2opU0Hu', '2019-01-06 13:21:50'),
('joaovasconcelos1961@gmail.com', '$2y$10$c3/BkdDK7uLt.7/ieXeA2uYmUmEk7xBTDqJGJl.tM4UxKc6u851h2', '2019-01-06 13:25:38'),
('delmirobag@gmail.com', '$2y$10$Zo6QfSYPtd2LdCBGXUPo3Oa6bc9vehkeD4OjHTpHrIepLnxuREMFm', '2019-01-08 00:44:30'),
('goretedelmirobag@gmail.com', '$2y$10$DrJ7wjnuN3yo5UVtvOd6m.hbQisXoqlCk02L5qqzXrNhJ74kYkLPC', '2019-01-08 00:58:34'),
('barbosarafaelalds@gmail.com', '$2y$10$HhSKVLZxTaMP1lMrdTV5j.Z.pyEsqcV4XzhE7aG.dnnCCTMqQywkW', '2019-01-10 00:10:16'),
('givaldopintor345@gmail.com', '$2y$10$lwj3ozMH8hGsJRNncjfoNO/2oTOjBj5w1Kkv5EKirJgTYRMZsqkYK', '2019-01-10 16:26:25'),
('maxwell.1nefi37@gmail.com', '$2y$10$ybhdevEIwwXe8diaKZ3qxu6imQARH5na2PS4nfbblt2xrF4UPkt9y', '2019-01-16 07:12:22'),
('nephibispo@gmail.com', '$2y$10$tSEqcuGBuwpgiX3sKCmNB.1FCGk27opIthfCiUbFi8YQWbfsL9M4W', '2019-01-16 10:16:16'),
('alvesgrazi187@gmail.com', '$2y$10$qIqWT6W6Qe40HWw5nwEWsO18ZcEbLxdxgdvsQlMyCNKS4XJJLnq4O', '2019-01-16 21:46:31'),
('adrianoramos123@hotmail.com', '$2y$10$iA6I7TZlbtVjU3ocqW6ow.I0DdSzQBnA.uTTNfurGXuu//1nBUFeK', '2019-01-22 15:54:08'),
('wilmaramosalves18@gmail.com', '$2y$10$rNL32Y6Dbd14kPzhiB3/6uZ1J/wYiYPO.gQU3BhbBmo.pJneckW7W', '2019-01-23 16:44:21'),
('barbosinha.fabi@gmail.com', '$2y$10$HeBgBro68vzOLUDiXMWYFeBwQ3WTIJtOmC3kLRJzAiDILaeSPK/WO', '2019-01-24 08:36:07'),
('claudiadjesuscoimbra@gmail.com', '$2y$10$WADyEkenBBLGaTjAj.c.v.vog20y3CE8t2jJVSAqk0aBDUMlO152S', '2019-01-27 13:24:01'),
('pamelakarlasud@hotmail.com', '$2y$10$szyOCH4yhGaXypsEtVqIN.ZKSEPhiEW9XqjZYjCb0lk9UHC3Ns4Vm', '2019-02-03 17:49:08'),
('paula_cristina_1234@hotmail.com', '$2y$10$TxFKaBeSNEjxSQC1iEn3C.fifhqtrnqWbh8mY0tXqtem0qk8qRyPG', '2019-02-10 19:52:38'),
('ritadcasssiadab@gmail.com', '$2y$10$jTyM1gPy6d6WiT1WLichF.AxO.gNr0JUJz7gBzEI0j/mR8UQY3Vd.', '2019-02-15 00:21:02'),
('ttalitaa.al@gmail.com', '$2y$10$jWo4Aknx6psGZIQ7MpC00ONTTR17fkMTJqpukTfSQQYOqupyA3f5i', '2019-02-17 14:20:55'),
('felipe.sudbrasil@gmail.com', '$2y$10$Fuaz7hgGHmHU1ofH4p0IxODVKsoP.aKNWGr9EufxaGNII6YkVLko6', '2019-02-22 23:01:36'),
('nascimento.mayra@outlook.com', '$2y$10$YIrl5Zth/raOefr0I4nMtuWW4SmwcxV8GCNt.FoeIHewSyLJGapAq', '2019-02-24 11:50:51'),
('manilsonbs@gmail.com', '$2y$10$HOGzrnzDU8L9XTPRFYutn.rtc7eVM5ziZZswN4TRNrJb14SnWQA.i', '2019-02-24 15:26:38'),
('junio.santana121@gmail.com', '$2y$10$uVY7GTUngGjOHBidAhsEyeoXSTC/6qznHDlSHFkvUPhTxule4uyKa', '2019-03-03 00:56:00'),
('camilanicolles_sud@hotmail.com', '$2y$10$CgeHfz5STqb/LG5bEkQWI.qqxv/j0AARLPCf6dvpR1mzDtKaUBqkq', '2019-03-13 23:07:30'),
('jroliveirapinheiro@gmail.com', '$2y$10$CnDeBX3AgKhbOXavDDES9uKJx8FMrhjOi3NXnJuAlmP/fM3RUvz5i', '2019-03-24 19:50:38'),
('willianfarias012@hotmail.com', '$2y$10$KuwX9CcrQAGppQWPwwHg9OQAIGI3SaQe2cx2UYLgJt0yUci4pODPy', '2019-03-26 01:15:47'),
('michelepereira038@gmail.com', '$2y$10$OnnyzigEoAPstGAG2wTIU.owSiHTvrUF641BZH7UACFQMbCDOR0ki', '2019-04-01 01:23:52'),
('gui---i@hotmail.com', '$2y$10$e1fAiuoXa3vU7/hs5xnORunyGMmi8kHGAUxyIzzbWnrdefDCLpzka', '2019-04-09 13:49:26'),
('amandavida123@hotmail.com', '$2y$10$DrcRA3RPn1GCmr9H6VmIa.fWAyCnieAnZi9neeHlUIJ8RC8dosFw2', '2019-04-15 13:04:48'),
('amandasarahkaory@gmail.com', '$2y$10$U68U6efT/3QfMhCn1FDOD.iaNcIPVfjDqi5Z0vl3L.vYP/B2PujAG', '2019-04-15 13:41:19'),
('dasilvadiegosantos106@gmail.com', '$2y$10$feT5rzu35ZBQyPccLErPVe4xe2YNXEnrPoT.Q5Z4Glj/a1Zs8x1xW', '2019-04-20 20:31:11'),
('lali_910@hotmail.com', '$2y$10$u5I3.IXZUGABrKXdxIv4rOl1mdfeJHWisRFP7HUWbDMZ2du7QrZlK', '2019-04-24 16:48:10'),
('c.menezeslds@gmail.com', '$2y$10$VCjTUU61y9ei/.yx.djAfuKy9P2AZBV6bo9/3e/yUx6fkwMYVrN9u', '2019-05-07 00:50:38'),
('liedjademetrio4@gmail.com', '$2y$10$gbwAITLDIxUV9TwQgomAO.e1lKaTNbol7pZ2pbYGHUut.ip/T1M3G', '2019-05-16 21:23:57'),
('ghabyk8@gmail.com', '$2y$10$G6E0PLETcieiJ4vdvEwgr.EfS0B5cip1SpRAeDYmFYndfyAQ1ynOG', '2019-05-16 23:39:22'),
('karynybelo_@hotmail.com', '$2y$10$9Ym3Asab1nyO.bA5Nnv0eehEurPhlicqUyeNlUSqtzNxaCLBjfNGO', '2019-05-17 08:13:29'),
('erick_franca2@hotmail.com', '$2y$10$4JV6l2Z4aGV4uqEzUqru9ecbpThmJ.Dzy0YkWC.vxGozEAldFsQNK', '2019-05-19 20:49:12'),
('jaciaralima0612@gmail.com', '$2y$10$EZnOKDDRZyspHdbN.wrC0.7DR4N6vLmaZe5kKapdN23RdR1C0P0AS', '2019-05-19 22:55:31'),
('raissa_feijo@hotmail.com', '$2y$10$gHv35fA3hYK8TxxRJ3bQ3OetQTwIQr5DoMXJPqcOtA8Zr9ueAar.G', '2019-05-23 15:16:15'),
('CRB.MMESSIAS@GMAIL.COM', '$2y$10$6SetHm6/vUf3CQeEUkj5r.MlGvWkMhhzuKeHniqiRXUxxy0g3FOku', '2019-05-26 09:45:07'),
('ligiasud@hotmail.com', '$2y$10$1yvZUrGiVzZCTYfclubZHucAH.1lAK.m9cWeQtSEY7c9TNGhN5rqS', '2019-05-29 21:30:47'),
('cpsilvacp@hotmail.com', '$2y$10$66n0Jvhp6.J1aJwEb.0Z2ezTgUvlzu9.eWSzttlPFpqMSSNoZHsPS', '2019-05-29 23:01:39'),
('juliocesar090993@gmail.com', '$2y$10$7iffHnU1enCFPNTYaiqNB.DQQX/7TqEF2KsxGdR9ZIQJt1cwkhBlq', '2019-06-02 19:31:03'),
('anjosmspn121@gmail.com', '$2y$10$L4DIIUrxHe24Az4IWXmkfOxH0Y23qLpnXXydR0PbNq/biZYqSFLqi', '2019-06-03 19:59:41'),
('diegoabarross@gmail.com', '$2y$10$R5cQwZHjhmdcHwnGR6WoJO3x/WZgUNyirxyznRZUyuI0GJR9s0L86', '2019-06-11 00:21:15'),
('ewerthon.erbert@gmail.com', '$2y$10$23ECN8QCqQMm0qIHFkshyOMyyknJ0JMdMhX8PDyMN1atF4wbEH.5O', '2019-06-14 10:00:45'),
('isalira2405@gmail.com', '$2y$10$zSE38CK/SJDhWKs7pXk47OaoU/qppSmmS23XeB1Y1mXZ1jQbUyfzC', '2019-06-15 17:13:02'),
('sluzferreira@gmail.com', '$2y$10$ZhRFF3Ehchzg.hM1oyERKexrcraGaBXh12fQgouDz0zbAFk85Qhr.', '2019-06-24 11:53:30'),
('chisnascimento.2016@gmail.com', '$2y$10$C1zsY1rKl3PAk9mw9GUkNuXOug6cN2lL3g5D1Zp7xComG6IsRY1o.', '2019-07-10 22:39:30'),
('igoralfredo@bol.com.br', '$2y$10$rQcHnZ1aaSHMo5vF71lwF.grLGYNbQDCJbw.wFrhAwGIpfodiMa2W', '2019-07-12 13:46:09'),
('ritadcassiadab@gmail.com', '$2y$10$U.orERsevIJGfEzqYpU7aeT4SwFL0.CHDnT1E7Yj6q9mHbmNAaFqO', '2019-07-14 15:03:38'),
('magnarosicler@gmail.com', '$2y$10$NigeCih3SAxPyuAJRtSzQeoaSm8SxYAGLANC/nHUk.b5c32KuTNJS', '2019-07-26 08:57:00'),
('heman_rafaell@outlook.com', '$2y$10$TehCBhIIXp53M4Zd2WQqR.uwngCV0G7EjpqZV.ZmD2LJYeVbvk4DG', '2019-07-28 12:33:36'),
('milton-gomescorretormrv19@Outlook.com', '$2y$10$EXkYKmnJy9Ael4gP0ROVdeI2uOyA4tmFEBSjTfXPuLH6nHBCOsyVK', '2019-08-04 10:48:35'),
('luanadepaularochadasilva15@gmail.com', '$2y$10$dgWIz6PBDaj.Rdai7X667.UOdo1GlcR6SUwN6XJrAtqIiygFQtb8C', '2019-08-07 20:58:11'),
('patty-tenorio@hotmail.com', '$2y$10$mG/8TH4Kv8g.8aMKaQsGo.FHWI5rjHChYNc5Jc13lLUNqdzOb4QE2', '2019-08-13 09:42:52'),
('novaisud@hotmail.com', '$2y$10$G3oJE61LZ4l84AeHkQ5vZew82lA0SK8A2nMH1wD3cSCPM7tE7ODwe', '2019-09-16 19:12:54'),
('wendellluc@gmail.com', '$2y$10$fyyesUDNkjzRIiXNY3rNnuNrpGecakA5b/Bn4ZpfdhpeH4T5IZoQC', '2019-09-18 21:13:46'),
('kassiamanuele@gmail.com', '$2y$10$22GtX2CdjzbXAs8AEJQTee2EHAsZZpNlWG.rSkghpcPE3J6y8NQpO', '2019-09-20 20:20:31'),
('cicerapsantos@hotmail.com', '$2y$10$qxuo6ks9qHG.nx.Uk9w0tOjObrOF6X/R1aGVKhnrvuGRhaVFfs7Su', '2019-09-23 22:54:41'),
('j.luiz_silvac@hotmail.com', '$2y$10$Bm4DiE7m2I38EgMqRBpQJOBI.P0GCLgE2V5wIuTIHdxWHItQ4nzfm', '2019-09-26 02:23:43'),
('alessandra.santana@cedu.ufal.br', '$2y$10$ZlsY1nFtym3Q8bdncOZmSubhRSQ9.v6liFmXz/A6h84apMTEzBrnu', '2019-10-04 21:04:24'),
('paulacristina19082018@gmail.com', '$2y$10$DQ1xtWmNHdk2GGKtOKj1sefMBlgjbhVFRn9jKN30jf0f2GOoiULzK', '2019-10-09 11:28:33'),
('yaledesouza@hotmail.com', '$2y$10$4Z2Dg8C9haQQKgrtzsrX2O9zHIzqRNWQHm8zHjyqRq4fRpHAqogla', '2019-10-10 11:00:04'),
('cpsilvacpsud@gmail.com', '$2y$10$MEqbX4zyym/vVnchPxcitewoXOnDD0HRJzkJJYwUPZMzjkVB2TNeK', '2019-10-15 09:30:43'),
('jackson@familiamedino.com.br', '$2y$10$5V6SUHb7mRa49USdYcCoDOWx0IdbJTCGT3j4zX5wp86ljehme1v4y', '2019-10-27 23:45:44'),
('thalytuan2015@gmail.com', '$2y$10$8Ej3WnD9zsjAth7qIuA15uBEXXRg2.hldOt3Th66Npg5r1QbN8/ty', '2019-11-05 10:13:26'),
('cicerapereira.sp@hotmail.com', '$2y$10$GZazk0Is4t0FWi5bfaMqyeGBKOv4pnNgM4/BAxMaTXJkLY8OB1j0.', '2019-11-05 21:52:34'),
('televisaogeladeiradvd@gmail.com', '$2y$10$ZWpQsUV24K2qd5zQKt3f/uYFppG5W2vy/A.jSHZupnkJ/sfdOM/im', '2019-11-06 08:54:18'),
('deisyrps15@gmail.com', '$2y$10$.k2UP9DHDrhwAgSw76sC9OzlzzBYzALF45X4NI4CVkK75En2DzI0W', '2019-11-26 19:03:22'),
('sonia20js@gmail.com', '$2y$10$3anzlWT8MZw3N6qoPvVEJuqCSenywmk6jKLasCrGxN1ynKYD6qGuq', '2019-12-03 18:37:16'),
('rhpatricia@gmail.com', '$2y$10$9OrW./kYoqhAIu2E1.WBjOiCwx2VUpIqIYJzFSa7GRQjOO4BLXgqG', '2019-12-03 21:13:32'),
('tonymeloka@gmail.com', '$2y$10$dc5YFRIO0nSR0ucvGyZfPuu21u9MXZbbmET9iciDVwTbG4QRQTz9O', '2019-12-03 21:15:54'),
('oderlane_rodrigues@hotmail.com', '$2y$10$UiJCuupmya89Im828tqGZesplUU2sQgjmuTIYVEt5h7xAnVFMeyzW', '2019-12-15 12:57:26'),
('geracarvalho@gmail.com', '$2y$10$v2MsJyAsao2s4Eg7xPR16envL..nLOX6HMBTVygUj7iTbs/6jmm32', '2019-12-26 11:15:19'),
('fernandadino.sud@gmail.com', '$2y$10$MZ.IJ90IVk7HEHiUHI0kMOHDaSunfD0O26cfyVoK1HoLApHOsvBYa', '2020-01-06 15:14:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 'calendar_create', 'Cria eventos no calendário', '1', '2018-02-26 08:31:45', '2018-02-26 08:31:45'),
(2, 'calendar_index', 'Visualiza o calendário', '1', '2018-02-26 08:32:29', '2018-02-26 08:32:29'),
(5, 'called_create', 'Enviar indicações de chamados para a Estaca.', '1', '2018-02-26 08:36:07', '2018-02-26 08:36:07'),
(6, 'called_index', 'Visualiza e exclui indicações.', '1', '2018-02-26 08:37:02', '2018-02-26 08:37:02'),
(7, 'caravan_user_create', 'Reserva vaga de poltrona em ônibus de caravana.', '1', '2018-02-26 08:39:02', '2018-02-26 08:39:02'),
(8, 'caravan_user_kid_create', 'Cadastra uma criança na caravana, com ou sem poltrona.', '1', '2018-02-26 08:40:22', '2018-02-26 08:40:22'),
(9, 'caravan_user_index', 'Lista todas as caravanas cadastradas.', '1', '2018-02-26 08:41:50', '2018-02-26 08:41:50'),
(10, 'caravan_user_show', 'Gerencia os detalhes da caravana.', '1', '2018-02-26 08:43:11', '2018-02-26 08:43:11'),
(11, 'caravan_user_show_print', 'Pagina de impressão dos dados da caravana.', '1', '2018-02-26 08:44:10', '2018-02-26 08:44:10'),
(12, 'caravan_user_update', 'Edita a mudança de poltrona', '1', '2018-02-26 08:48:10', '2018-02-26 08:48:10'),
(13, 'caravan_create', 'Cria caravanas', '1', '2018-02-26 22:57:02', '2018-02-26 22:57:02'),
(14, 'caravan_index', 'Lista de caravanas criadas.', '1', '2018-02-26 22:57:57', '2018-02-26 22:57:57'),
(15, 'caravan_show', 'Mostra detalhes da caravana.', '1', '2018-02-26 22:58:44', '2018-02-26 22:58:44'),
(16, 'caravan_update', 'Edita as informações da caravana.', '1', '2018-02-26 22:59:08', '2018-02-26 22:59:08'),
(17, 'equipment_create', 'Cadastra equipamentos', '1', '2018-02-26 23:55:12', '2018-02-26 23:56:40'),
(18, 'equipment_index', 'Visualiza os equipamentos cadastrados', '1', '2018-02-26 23:58:44', '2018-02-26 23:58:44'),
(19, 'equipment_update', 'Edita as informações do equipamento.', '1', '2018-02-27 00:01:27', '2018-02-27 00:01:27'),
(20, 'equipment_rent_create', 'Solicita o empréstimo de um equipamento.', '1', '2018-02-27 00:02:15', '2018-02-27 00:02:15'),
(21, 'equipment_rent_index', 'Visualiza os equipamentos solicitados por empréstimo.', '1', '2018-02-27 00:02:47', '2018-02-27 00:02:47'),
(22, 'equipment_rent_update', 'Confirma ou nega os pedidos de empréstimos de equipamentos.', '1', '2018-02-27 00:03:48', '2018-02-27 00:03:48'),
(23, 'interview_create', 'Solicita uma entrevista com presidência ou patriarca.', '1', '2018-02-27 00:04:43', '2018-02-27 00:04:43'),
(24, 'interview_index', 'Visualiza as solicitações de entrevista.', '1', '2018-02-27 00:05:21', '2018-02-27 00:05:21'),
(25, 'interview_update_presidencia', 'Confirma ou cancela solicitações de entrevista para presidência.', '1', '2018-02-27 00:06:07', '2018-02-27 00:06:07'),
(26, 'interview_update_patriarca', 'Confirma ou cancela solicitações de entrevista para o patriarca.', '1', '2018-02-27 00:06:35', '2018-02-27 00:06:35'),
(27, 'meeting_index', 'Visualiza os tipos de agendas existentes.', '1', '2018-02-27 00:07:42', '2018-02-27 00:07:42'),
(28, 'sacramental_meeting_create', 'Cria uma agenda de reunião sacramental.', '1', '2018-02-27 00:08:41', '2018-02-27 00:08:41'),
(29, 'sacramental_meeting_index', 'Visualiza as agendas sacramentais criadas.', '1', '2018-02-27 00:09:12', '2018-02-27 00:09:12'),
(30, 'sacramental_meeting_show', 'Visualiza as informações colocadas na agenda sacramental.', '1', '2018-02-27 00:10:09', '2018-02-27 00:10:09'),
(31, 'sacramental_meeting_update', 'Edita as informações colocadas na agenda sacramental.', '1', '2018-02-27 00:10:46', '2018-02-27 00:10:57'),
(32, 'stakes_index', 'Visualiza a página principal.da Estaca.', '1', '2018-02-27 00:11:32', '2018-02-27 00:11:45'),
(33, 'interview_update', 'Gerencia as solicitações de entrevista', '1', '2018-02-27 03:54:33', '2018-02-27 03:54:33'),
(34, 'contact_create', 'Manda uma mensagem em Contato.', '1', '2018-03-01 13:45:53', '2018-03-01 13:45:53'),
(35, 'contact_index', 'Ver e responder as mensagens enviadas.', '1', '2018-03-01 14:21:06', '2018-03-01 14:21:06'),
(36, 'contact_update', 'Responde as mensagens.', '1', '2018-03-01 14:50:55', '2018-03-01 14:50:55'),
(37, 'role_user_index', 'Visualiza e vincula permissões para membros.', '1', '2018-03-01 16:48:58', '2018-03-01 16:48:58'),
(38, 'message_create', 'Criar mensagem da presidência de Estaca.', '1', '2018-03-09 09:44:38', '2018-03-09 09:44:38'),
(39, 'conselor_index', 'Visualiza a página do Conselho de Coordenação.', '1', '2018-03-17 00:16:13', '2018-03-17 00:16:13'),
(40, 'conselor_edit', 'Edita informações do Conselho de Coordenação.', '1', '2018-03-17 00:17:13', '2018-03-17 00:17:13'),
(41, 'self-reliance_index', 'Ver a página principal da Autossuficiência.', '1', '2018-03-24 10:43:10', '2018-03-24 10:43:10'),
(42, 'self-reliance_edit', 'Edita as solicitações de participação em grupos.', '1', '2018-03-24 10:43:54', '2018-03-24 10:43:54'),
(43, 'called_update', 'Atualiza o status das indicações enviadas.', '1', '2018-03-29 23:04:46', '2018-03-29 23:04:46'),
(44, 'sacramentais_stake', 'Ver as frequências das agendas sacramentais das unidades', '1', '2018-03-29 23:38:45', '2018-03-29 23:38:45'),
(45, 'agendas', 'Acesso as agendas de reuniões.', '1', '2018-03-30 00:06:10', '2018-03-30 00:06:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `ativo`, `created_at`, `updated_at`) VALUES
(24, 9, 2, '1', NULL, NULL),
(28, 1, 5, '1', NULL, NULL),
(29, 24, 2, '1', NULL, NULL),
(31, 26, 6, '1', NULL, NULL),
(32, 25, 5, '1', NULL, NULL),
(33, 2, 2, '1', NULL, NULL),
(36, 6, 5, '1', NULL, NULL),
(37, 21, 2, '1', NULL, NULL),
(40, 18, 5, '1', NULL, NULL),
(41, 27, 5, '1', NULL, NULL),
(42, 29, 7, '1', NULL, NULL),
(43, 29, 5, '1', NULL, NULL),
(46, 32, 2, '1', NULL, NULL),
(47, 34, 2, '1', NULL, NULL),
(49, 35, 2, '1', NULL, NULL),
(50, 36, 3, '1', NULL, NULL),
(51, 37, 8, '1', NULL, NULL),
(52, 18, 9, '1', NULL, NULL),
(54, 21, 9, '1', NULL, NULL),
(59, 27, 7, '1', NULL, NULL),
(61, 22, 9, '1', NULL, NULL),
(62, 38, 5, '1', NULL, NULL),
(65, 27, 11, '1', NULL, NULL),
(66, 1, 11, '1', NULL, NULL),
(67, 25, 11, '1', NULL, NULL),
(68, 6, 11, '1', NULL, NULL),
(69, 18, 11, '1', NULL, NULL),
(70, 39, 12, '1', NULL, NULL),
(71, 39, 13, '1', NULL, NULL),
(72, 40, 13, '1', NULL, NULL),
(73, 39, 8, '1', NULL, NULL),
(74, 42, 14, '1', NULL, NULL),
(75, 41, 2, '1', NULL, NULL),
(76, 22, 11, '1', NULL, NULL),
(77, 26, 11, '1', NULL, NULL),
(78, 26, 8, '1', NULL, NULL),
(79, 43, 5, '1', NULL, NULL),
(80, 43, 11, '1', NULL, NULL),
(81, 44, 5, '1', NULL, NULL),
(82, 28, 7, '1', NULL, NULL),
(83, 31, 7, '1', NULL, NULL),
(84, 45, 7, '1', NULL, NULL),
(85, 45, 5, '1', NULL, NULL),
(86, 45, 11, '1', NULL, NULL),
(87, 29, 11, '1', NULL, NULL),
(88, 6, 2, '1', NULL, NULL),
(90, 45, 15, '1', NULL, NULL),
(91, 29, 15, '1', NULL, NULL),
(92, 14, 4, '1', NULL, NULL),
(93, 12, 4, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `ativo`, `created_at`, `updated_at`) VALUES
(2, 'membro', 'Membro da Estaca', '1', NULL, NULL),
(3, 'adm', 'Administrador do SIstema', '1', '2018-02-26 23:56:01', '2018-02-26 23:56:01'),
(4, 'lider_caravana', 'Estaca - Líder de caravana. Cria caravanas, edita e exclui.', '1', NULL, NULL),
(5, 'presidencia', 'Estaca - Presidencia', '1', '2018-02-27 13:58:10', '2018-03-10 00:55:40'),
(6, 'patriarca', 'Estaca - Patriarca. Gerencia as solicitações de bênçãos.', '1', '2018-02-27 14:07:15', '2018-03-01 16:38:19'),
(7, 'bispado', 'Bispado/Pres. Ramo - Acessa Agenda Sacramental', '1', '2018-02-27 15:15:14', '2018-03-01 16:36:01'),
(8, 'presidente', 'Presidente da Estaca', '1', '2018-03-01 13:52:31', '2018-03-01 13:52:31'),
(9, 'especialista_tec', 'Estaca - Especialista de Tec. - Cadastra e libera equipamentos.para empréstimos.', '1', '2018-03-01 19:56:30', '2018-03-02 17:09:04'),
(11, 'sec_estaca', 'Estaca - Secretários.', '1', '2018-03-08 09:06:34', '2018-03-10 00:56:25'),
(12, 'conselor_member', 'Membro do Conselho de Coordenação Maceió.', '1', '2018-03-17 00:17:53', '2018-03-17 00:17:53'),
(13, 'conselor_sec', 'Secretário do Conselho de Coordenação Maceió.', '1', '2018-03-17 00:18:43', '2018-03-17 00:18:43'),
(14, 'lider_autossuficiencia', 'Líder de Autossuficiência.', '1', '2018-03-24 10:42:21', '2018-03-24 10:42:21'),
(15, 'sumo_conselho', 'Estaca - Sumo Conselho - Ver a frequência das alas.', '1', '2018-06-14 07:06:33', '2018-06-14 07:10:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `ativo`) VALUES
(1, 2, 1, '1'),
(7, 2, 3, '1'),
(9, 2, 4, '1'),
(11, 2, 5, '1'),
(12, 8, 5, '1'),
(13, 5, 5, '1'),
(14, 2, 6, '1'),
(15, 2, 7, '1'),
(16, 2, 8, '1'),
(17, 2, 9, '1'),
(18, 5, 7, '1'),
(19, 5, 8, '1'),
(20, 5, 9, '1'),
(22, 8, 7, '1'),
(23, 2, 10, '1'),
(24, 2, 11, '1'),
(25, 7, 11, '1'),
(26, 2, 12, '1'),
(27, 2, 13, '1'),
(29, 2, 14, '1'),
(34, 2, 19, '1'),
(38, 2, 21, '1'),
(39, 2, 22, '1'),
(41, 2, 24, '1'),
(42, 2, 25, '1'),
(46, 2, 26, '1'),
(47, 2, 28, '1'),
(48, 2, 29, '1'),
(49, 9, 28, '1'),
(50, 2, 30, '1'),
(51, 2, 31, '1'),
(53, 11, 19, '1'),
(54, 11, 10, '1'),
(60, 7, 13, '1'),
(61, 2, 32, '1'),
(62, 2, 33, '1'),
(63, 2, 34, '1'),
(65, 2, 36, '1'),
(66, 7, 34, '1'),
(67, 2, 37, '1'),
(68, 2, 38, '1'),
(69, 2, 39, '1'),
(70, 2, 40, '1'),
(71, 6, 40, '1'),
(72, 2, 41, '1'),
(73, 2, 42, '1'),
(74, 2, 43, '1'),
(76, 2, 45, '1'),
(78, 2, 47, '1'),
(79, 2, 48, '1'),
(81, 2, 49, '1'),
(82, 13, 6, '1'),
(85, 2, 50, '1'),
(86, 2, 51, '1'),
(87, 2, 52, '1'),
(88, 2, 53, '1'),
(89, 2, 54, '1'),
(90, 2, 55, '1'),
(91, 2, 56, '1'),
(92, 2, 57, '1'),
(93, 2, 58, '1'),
(95, 5, 57, '1'),
(96, 8, 57, '1'),
(97, 2, 59, '1'),
(98, 2, 60, '1'),
(100, 7, 38, '1'),
(101, 2, 62, '1'),
(102, 2, 63, '1'),
(103, 2, 64, '1'),
(104, 2, 65, '1'),
(107, 14, 13, '1'),
(108, 2, 66, '1'),
(109, 6, 57, '1'),
(111, 2, 67, '1'),
(112, 2, 68, '1'),
(114, 2, 70, '1'),
(115, 2, 71, '1'),
(116, 2, 72, '1'),
(117, 2, 73, '1'),
(118, 2, 74, '1'),
(119, 5, 73, '1'),
(121, 8, 73, '1'),
(122, 2, 75, '1'),
(123, 2, 76, '1'),
(145, 2, 77, '1'),
(146, 2, 78, '1'),
(148, 2, 79, '1'),
(153, 2, 80, '1'),
(154, 2, 81, '1'),
(155, 2, 82, '1'),
(156, 2, 83, '1'),
(157, 2, 84, '1'),
(158, 2, 85, '1'),
(159, 2, 86, '1'),
(160, 2, 87, '1'),
(161, 2, 88, '1'),
(162, 2, 89, '1'),
(163, 2, 90, '1'),
(164, 2, 91, '1'),
(165, 2, 92, '1'),
(167, 2, 93, '1'),
(168, 2, 94, '1'),
(169, 2, 95, '1'),
(170, 2, 96, '1'),
(171, 2, 97, '1'),
(172, 2, 98, '1'),
(173, 2, 99, '1'),
(174, 2, 100, '1'),
(175, 2, 101, '1'),
(176, 2, 102, '1'),
(178, 2, 103, '1'),
(179, 2, 104, '1'),
(180, 2, 105, '1'),
(182, 7, 98, '1'),
(184, 2, 107, '1'),
(185, 2, 108, '1'),
(186, 2, 109, '1'),
(187, 2, 110, '1'),
(188, 2, 111, '1'),
(189, 2, 112, '1'),
(190, 2, 113, '1'),
(191, 2, 114, '1'),
(192, 2, 115, '1'),
(193, 2, 116, '1'),
(194, 2, 117, '1'),
(195, 2, 118, '1'),
(196, 2, 119, '1'),
(197, 2, 120, '1'),
(198, 2, 121, '1'),
(199, 2, 122, '1'),
(200, 2, 123, '1'),
(201, 2, 124, '1'),
(202, 2, 125, '1'),
(203, 2, 126, '1'),
(204, 2, 127, '1'),
(205, 2, 128, '1'),
(206, 7, 41, '1'),
(207, 2, 129, '1'),
(208, 2, 130, '1'),
(209, 2, 131, '1'),
(210, 9, 54, '1'),
(211, 2, 132, '1'),
(212, 2, 133, '1'),
(213, 2, 134, '1'),
(214, 2, 135, '1'),
(216, 2, 136, '1'),
(217, 2, 137, '1'),
(218, 2, 138, '1'),
(219, 2, 139, '1'),
(220, 2, 140, '1'),
(221, 2, 141, '1'),
(222, 2, 142, '1'),
(225, 2, 144, '1'),
(226, 2, 145, '1'),
(227, 2, 146, '1'),
(228, 2, 147, '1'),
(229, 2, 148, '1'),
(230, 2, 149, '1'),
(231, 2, 150, '1'),
(232, 2, 151, '1'),
(234, 2, 153, '1'),
(235, 2, 154, '1'),
(236, 2, 155, '1'),
(238, 2, 157, '1'),
(239, 2, 158, '1'),
(240, 2, 159, '1'),
(241, 2, 160, '1'),
(242, 2, 161, '1'),
(243, 2, 162, '1'),
(244, 2, 163, '1'),
(247, 2, 166, '1'),
(248, 2, 167, '1'),
(249, 2, 168, '1'),
(250, 2, 169, '1'),
(251, 2, 170, '1'),
(252, 2, 171, '1'),
(253, 2, 172, '1'),
(254, 2, 173, '1'),
(255, 2, 174, '1'),
(256, 2, 175, '1'),
(257, 2, 176, '1'),
(258, 2, 177, '1'),
(259, 2, 178, '1'),
(260, 7, 24, '1'),
(263, 2, 179, '1'),
(264, 2, 180, '1'),
(265, 2, 181, '1'),
(266, 2, 182, '1'),
(267, 2, 183, '1'),
(268, 2, 184, '1'),
(269, 7, 159, '1'),
(270, 2, 185, '1'),
(271, 2, 186, '1'),
(272, 2, 187, '1'),
(273, 2, 188, '1'),
(274, 2, 189, '1'),
(275, 2, 190, '1'),
(276, 2, 191, '1'),
(277, 2, 192, '1'),
(278, 2, 193, '1'),
(279, 2, 194, '1'),
(280, 2, 195, '1'),
(281, 2, 196, '1'),
(283, 2, 197, '1'),
(284, 2, 198, '1'),
(285, 2, 199, '1'),
(292, 15, 60, '1'),
(293, 2, 200, '1'),
(294, 2, 201, '1'),
(295, 2, 202, '1'),
(296, 7, 53, '1'),
(300, 2, 203, '1'),
(301, 2, 204, '1'),
(303, 2, 205, '1'),
(305, 2, 206, '1'),
(306, 2, 207, '1'),
(307, 2, 208, '1'),
(308, 2, 209, '1'),
(309, 2, 210, '1'),
(310, 2, 211, '1'),
(314, 2, 212, '1'),
(316, 2, 213, '1'),
(318, 2, 214, '1'),
(319, 2, 215, '1'),
(320, 2, 216, '1'),
(321, 2, 217, '1'),
(322, 2, 218, '1'),
(324, 2, 219, '1'),
(325, 2, 220, '1'),
(326, 2, 221, '1'),
(328, 2, 223, '1'),
(329, 2, 224, '1'),
(330, 2, 225, '1'),
(332, 2, 227, '1'),
(333, 2, 228, '1'),
(334, 2, 229, '1'),
(335, 2, 230, '1'),
(336, 2, 231, '1'),
(337, 2, 232, '1'),
(338, 2, 233, '1'),
(339, 2, 234, '1'),
(343, 2, 235, '1'),
(344, 2, 236, '1'),
(345, 2, 237, '1'),
(346, 2, 238, '1'),
(347, 2, 239, '1'),
(348, 2, 240, '1'),
(349, 2, 241, '1'),
(350, 2, 242, '1'),
(351, 2, 243, '1'),
(352, 2, 244, '1'),
(353, 2, 245, '1'),
(354, 2, 246, '1'),
(355, 2, 247, '1'),
(356, 2, 248, '1'),
(357, 2, 249, '1'),
(358, 2, 250, '1'),
(359, 2, 251, '1'),
(360, 2, 252, '1'),
(361, 2, 253, '1'),
(362, 2, 254, '1'),
(364, 2, 256, '1'),
(365, 2, 257, '1'),
(366, 2, 258, '1'),
(367, 2, 259, '1'),
(368, 2, 260, '1'),
(369, 2, 261, '1'),
(370, 2, 262, '1'),
(371, 2, 263, '1'),
(372, 2, 264, '1'),
(373, 2, 265, '1'),
(374, 2, 266, '1'),
(375, 2, 267, '1'),
(376, 2, 268, '1'),
(377, 2, 269, '1'),
(378, 2, 270, '1'),
(379, 2, 271, '1'),
(383, 2, 272, '1'),
(384, 2, 273, '1'),
(385, 2, 274, '1'),
(386, 2, 275, '1'),
(387, 2, 276, '1'),
(388, 2, 277, '1'),
(389, 11, 277, '1'),
(390, 2, 278, '1'),
(391, 2, 279, '1'),
(392, 2, 280, '1'),
(393, 2, 281, '1'),
(397, 2, 282, '1'),
(399, 2, 284, '1'),
(400, 2, 285, '1'),
(401, 2, 286, '1'),
(402, 2, 287, '1'),
(403, 2, 288, '1'),
(404, 2, 289, '1'),
(405, 2, 290, '1'),
(406, 2, 291, '1'),
(407, 2, 292, '1'),
(408, 2, 293, '1'),
(409, 2, 294, '1'),
(410, 2, 295, '1'),
(411, 2, 296, '1'),
(412, 2, 297, '1'),
(413, 2, 298, '1'),
(414, 2, 299, '1'),
(415, 2, 300, '1'),
(416, 2, 301, '1'),
(417, 2, 302, '1'),
(418, 2, 303, '1'),
(419, 2, 304, '1'),
(420, 2, 305, '1'),
(421, 9, 301, '1'),
(422, 2, 306, '1'),
(423, 2, 307, '1'),
(424, 2, 308, '1'),
(425, 2, 309, '1'),
(426, 2, 310, '1'),
(427, 2, 311, '1'),
(434, 2, 312, '1'),
(435, 2, 313, '1'),
(441, 2, 314, '1'),
(442, 2, 315, '1'),
(443, 2, 316, '1'),
(444, 2, 317, '1'),
(445, 2, 318, '1'),
(446, 2, 319, '1'),
(447, 2, 320, '1'),
(448, 2, 321, '1'),
(449, 2, 322, '1'),
(450, 2, 323, '1'),
(451, 2, 324, '1'),
(452, 2, 325, '1'),
(453, 2, 326, '1'),
(454, 2, 327, '1'),
(455, 2, 328, '1'),
(456, 2, 329, '1'),
(457, 2, 330, '1'),
(458, 2, 331, '1'),
(459, 2, 332, '1'),
(460, 2, 333, '1'),
(461, 2, 334, '1'),
(462, 2, 335, '1'),
(464, 2, 337, '1'),
(465, 2, 338, '1'),
(466, 2, 339, '1'),
(467, 2, 340, '1'),
(468, 2, 341, '1'),
(469, 2, 342, '1'),
(470, 2, 343, '1'),
(471, 2, 344, '1'),
(472, 11, 307, '1'),
(473, 2, 345, '1'),
(474, 2, 346, '1'),
(475, 2, 347, '1'),
(476, 2, 348, '1'),
(477, 2, 349, '1'),
(478, 2, 350, '1'),
(479, 2, 351, '1'),
(480, 2, 352, '1'),
(481, 2, 353, '1'),
(482, 2, 354, '1'),
(483, 2, 355, '1'),
(484, 2, 356, '1'),
(485, 2, 357, '1'),
(486, 2, 358, '1'),
(487, 2, 359, '1'),
(488, 9, 358, '1'),
(489, 11, 358, '1'),
(490, 9, 359, '1'),
(491, 11, 359, '1'),
(492, 9, 323, '1'),
(493, 11, 323, '1'),
(495, 11, 28, '1'),
(496, 7, 358, '1'),
(497, 2, 360, '1'),
(498, 2, 361, '1'),
(499, 2, 362, '1'),
(500, 2, 363, '1'),
(501, 7, 321, '1'),
(502, 2, 364, '1'),
(503, 2, 365, '1'),
(504, 2, 366, '1'),
(505, 2, 367, '1'),
(506, 2, 368, '1'),
(507, 2, 369, '1'),
(508, 2, 370, '1'),
(509, 2, 371, '1'),
(510, 2, 372, '1'),
(511, 2, 373, '1'),
(512, 2, 374, '1'),
(513, 2, 375, '1'),
(514, 7, 37, '1'),
(515, 2, 376, '1'),
(516, 2, 377, '1'),
(517, 2, 378, '1'),
(518, 2, 379, '1'),
(520, 2, 380, '1'),
(521, 2, 381, '1'),
(522, 2, 382, '1'),
(523, 2, 383, '1'),
(524, 2, 384, '1'),
(526, 2, 386, '1'),
(528, 4, 14, '1'),
(530, 3, 1, '1'),
(531, 2, 387, '1'),
(532, 11, 387, '1'),
(533, 4, 387, '1'),
(535, 2, 389, '1'),
(536, 2, 390, '1'),
(538, 2, 392, '1'),
(539, 2, 393, '1'),
(540, 2, 394, '1'),
(541, 2, 395, '1'),
(542, 2, 396, '1'),
(543, 2, 397, '1'),
(544, 2, 398, '1'),
(545, 2, 399, '1'),
(547, 5, 1, '1'),
(548, 2, 401, '1'),
(549, 2, 402, '1'),
(550, 2, 403, '1'),
(552, 2, 404, '1'),
(553, 2, 405, '1'),
(554, 2, 406, '1'),
(555, 2, 407, '1'),
(556, 2, 408, '1'),
(557, 2, 409, '1'),
(558, 2, 410, '1'),
(559, 2, 411, '1'),
(560, 2, 412, '1'),
(561, 2, 413, '1'),
(562, 2, 414, '1'),
(563, 2, 415, '1'),
(564, 2, 416, '1'),
(565, 2, 417, '1'),
(566, 2, 418, '1'),
(567, 2, 419, '1'),
(568, 4, 19, '1'),
(569, 2, 420, '1'),
(570, 2, 421, '1'),
(571, 2, 422, '1'),
(572, 2, 423, '1'),
(573, 2, 424, '1'),
(574, 2, 425, '1'),
(575, 2, 426, '1'),
(576, 2, 427, '1'),
(577, 2, 428, '1'),
(578, 2, 429, '1'),
(580, 2, 430, '1'),
(581, 2, 431, '1'),
(583, 2, 433, '1'),
(584, 11, 14, '1'),
(585, 2, 434, '1'),
(586, 2, 435, '1'),
(587, 2, 436, '1'),
(588, 2, 437, '1'),
(589, 5, 25, '1'),
(590, 2, 438, '1'),
(591, 2, 439, '1'),
(592, 2, 440, '1'),
(593, 2, 441, '1'),
(594, 2, 442, '1'),
(595, 2, 443, '1'),
(596, 11, 54, '1'),
(597, 2, 444, '1'),
(599, 11, 276, '1'),
(600, 2, 445, '1'),
(601, 2, 446, '1'),
(602, 7, 104, '1'),
(603, 7, 307, '1'),
(604, 7, 98, '1'),
(605, 7, 191, '1'),
(606, 7, 218, '1'),
(608, 7, 145, '1'),
(609, 7, 53, '1'),
(610, 7, 64, '1'),
(611, 7, 24, '1'),
(612, 7, 49, '1'),
(613, 7, 229, '1'),
(614, 7, 124, '1'),
(615, 7, 278, '1'),
(616, 7, 370, '1'),
(617, 7, 281, '1'),
(618, 7, 340, '1'),
(619, 7, 262, '1'),
(620, 7, 70, '1'),
(621, 2, 447, '1'),
(622, 2, 448, '1'),
(623, 2, 449, '1'),
(625, 12, 47, '1'),
(626, 2, 451, '1'),
(627, 2, 452, '1'),
(629, 2, 454, '1'),
(630, 2, 455, '1'),
(632, 7, 444, '1'),
(633, 2, 456, '1'),
(634, 2, 457, '1'),
(635, 7, 423, '1'),
(636, 2, 458, '1'),
(637, 2, 459, '1'),
(638, 2, 460, '1'),
(639, 2, 461, '1'),
(640, 2, 462, '1'),
(641, 2, 463, '1'),
(642, 2, 464, '1'),
(643, 2, 465, '1'),
(644, 2, 466, '1'),
(645, 2, 467, '1'),
(646, 2, 468, '1'),
(647, 2, 469, '1'),
(648, 2, 470, '1'),
(651, 2, 473, '1'),
(652, 2, 474, '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sacramental_meetings`
--

CREATE TABLE `sacramental_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequencia` int(11) DEFAULT 0,
  `date` date NOT NULL,
  `presidida` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dirigida` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_nome1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_nome2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_nome3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_nome4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_cham1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_cham2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_cham3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_cham4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anun_1` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anun_2` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anun_3` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anun_4` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anun_5` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_anun_1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_anun_2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_anun_3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_anun_4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_anun_5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_anun_1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_anun_2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_anun_3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_anun_4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_anun_5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_anun_1` date DEFAULT NULL,
  `data_anun_2` date DEFAULT NULL,
  `data_anun_3` date DEFAULT NULL,
  `data_anun_4` date DEFAULT NULL,
  `data_anun_5` date DEFAULT NULL,
  `hora_anun_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_anun_2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_anun_3` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_anun_4` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_anun_5` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hino1` int(11) DEFAULT NULL,
  `hino2` int(11) DEFAULT NULL,
  `hino3` int(11) DEFAULT NULL,
  `hino4` int(11) DEFAULT NULL,
  `regente` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pianista` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oracao1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oracao2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bencao1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bencao2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bencao3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abencoador1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abencoador2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abencoador3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converso1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converso2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converso3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converso4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converso5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmador1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmador2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmador3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmador4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmador5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio6` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio7` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio8` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_nome6` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desob_cham6` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_nome6` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoio_cham6` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sacerdote1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sacerdote2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diacono1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diacono2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diacono3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diacono4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discursante1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discursante2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discursante3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempo1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempo2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempo3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sacramental_meetings`
--

INSERT INTO `sacramental_meetings` (`id`, `user_id`, `stake`, `ward`, `frequencia`, `date`, `presidida`, `dirigida`, `rec_nome1`, `rec_nome2`, `rec_nome3`, `rec_nome4`, `rec_cham1`, `rec_cham2`, `rec_cham3`, `rec_cham4`, `anun_1`, `anun_2`, `anun_3`, `anun_4`, `anun_5`, `pub_anun_1`, `pub_anun_2`, `pub_anun_3`, `pub_anun_4`, `pub_anun_5`, `local_anun_1`, `local_anun_2`, `local_anun_3`, `local_anun_4`, `local_anun_5`, `data_anun_1`, `data_anun_2`, `data_anun_3`, `data_anun_4`, `data_anun_5`, `hora_anun_1`, `hora_anun_2`, `hora_anun_3`, `hora_anun_4`, `hora_anun_5`, `hino1`, `hino2`, `hino3`, `hino4`, `regente`, `pianista`, `oracao1`, `oracao2`, `bencao1`, `bencao2`, `bencao3`, `abencoador1`, `abencoador2`, `abencoador3`, `oficio1`, `oficio2`, `oficio3`, `converso1`, `converso2`, `converso3`, `converso4`, `converso5`, `confirmador1`, `confirmador2`, `confirmador3`, `confirmador4`, `confirmador5`, `oficio4`, `oficio5`, `oficio6`, `oficio7`, `oficio8`, `desob_nome1`, `desob_nome2`, `desob_nome3`, `desob_nome4`, `desob_nome5`, `desob_nome6`, `desob_cham1`, `desob_cham2`, `desob_cham3`, `desob_cham4`, `desob_cham5`, `desob_cham6`, `apoio_nome1`, `apoio_nome2`, `apoio_nome3`, `apoio_nome4`, `apoio_nome5`, `apoio_nome6`, `apoio_cham1`, `apoio_cham2`, `apoio_cham3`, `apoio_cham4`, `apoio_cham5`, `apoio_cham6`, `sacerdote1`, `sacerdote2`, `diacono1`, `diacono2`, `diacono3`, `diacono4`, `discursante1`, `discursante2`, `discursante3`, `tempo1`, `tempo2`, `tempo3`, `ativo`, `created_at`, `updated_at`) VALUES
(4, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-03-25', 'Bispo Bruno Barretto', 'Bispo Bruno Barretto', '.José Antonio', '.', NULL, NULL, 'Sumo Conselho da Estaca', '.', NULL, NULL, 'Conferência Geral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', NULL, NULL, NULL, NULL, '2018-03-31', NULL, NULL, NULL, NULL, '13h', NULL, NULL, NULL, NULL, 12, 112, 145, 9, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Laudeci Josefa dos Santos', 'Luana de Paula Rocha Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerson Bernardino do Vale Júnior', NULL, NULL, NULL, NULL, NULL, 'Presidente dos Rapazes', NULL, NULL, NULL, NULL, NULL, 'Arlene Maria da Silva Batista da Cruz', 'Jailton da Costa', NULL, NULL, NULL, NULL, 'Líder de Atividades da Sociedade de Socorro', NULL, NULL, NULL, NULL, NULL, 'Genilson', 'Gustavo', 'Maurício', 'Kerlisson', 'Marcos', 'Moronni', 'Débora Raquel dos Santos Silva', NULL, 'Roberto Vieira da Silva', '5', '10', '20', '1', '2018-03-25 06:38:38', '2018-03-25 10:27:46'),
(7, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 76, '2018-04-08', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar de Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reunião Familiar da Área', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela', NULL, NULL, NULL, NULL, '2018-04-22', NULL, NULL, NULL, NULL, '19h', NULL, NULL, NULL, NULL, 12, 104, 1, 71, 'Sâmia Isabelle', 'Gerson Bernardino do Vale Júnior', 'Paula Elisângela Gomes', 'Deise Vitória dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-04-07 17:58:54', '2018-05-07 17:05:51'),
(8, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 86, '2018-04-15', 'Bispo Bruno Barretto', 'Bispo Bruno Barretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ler a carta', 'Reunião Familiar da Área', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Benedito', 'Ala Benedito', NULL, NULL, NULL, '2018-04-15', '2018-04-22', NULL, NULL, NULL, '10:50', '19:00', NULL, NULL, NULL, 81, 115, 97, 195, 'Sâmia Isabelle B. S. do Vale', 'Gerson Júnior', 'Gleyse Elis Soares', 'Ednalva do Vale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jorge Flores Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Magna Rosicler da Silva Santos', 'Karine Brito Pereira', 'Gerson Bernardino do Vale', '5', '10', '20', '1', '2018-04-14 09:09:06', '2018-05-07 17:05:32'),
(9, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 91, '2018-04-22', 'Bispo Bruno Rafael de Queiroz Barretto', 'Alexandre Carlos da Silva', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo - Conselheiro da Estaca', NULL, NULL, NULL, 'Atividade da Ala???', 'Treinamento de Líderes', 'Reunião Familiar com a Presidência de Ala', 'Oficina História da Família', NULL, NULL, NULL, NULL, NULL, NULL, 'Chácara', 'Sede da Estaca', 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, '2018-05-01', '2018-04-22', '2018-04-22', '2018-05-06', NULL, NULL, '16:30h', '19h', '18h', NULL, 165, 106, 80, 41, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Sâmia Isabelle Bezerra Santos do Vale', 'Edjane dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edleuza Canuto de Oliveira', 'Jennifer Karoline Menezes de Freitas', 'Lucineide Alves dos Santos Lins', NULL, NULL, NULL, 'Professora do Berçário', 'Líder do Berçário', 'Cons. do Templo e História da Família', NULL, NULL, NULL, 'Edleuza Canuto de Oliveira', 'Jennifer Karoline Menezes de Freitas', 'Edjane dos Santos', 'Marileide da Silva', 'Lucineide Alves dos Santos Lins', 'Jorge Luiz Flores Ferreira', 'Professora da Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jessica Bernardino do Vale Vasconcelos', 'Adeilson Cruz da Silva', NULL, '10', '20', '1', '2018-04-22 10:12:34', '2018-04-22 17:35:30'),
(10, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 98, '2018-04-29', 'Bispo Bruno Rafael de Queiroz Barretto', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Integração da Ala', 'Oficina de História da Família', 'Caravana dos Jovens', 'Caravana da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, '2018-05-02', '2018-05-06', '2018-05-31', '2018-05-19', NULL, '20h', '16h', '03h', '18h', NULL, 12, 115, 4, 89, 'Sâmia Isabelle do Vale', 'Gerson Bernardinno do Vale Júnior', 'Arlene M. da Silva Batista da Cruz', 'Jamerson da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jamerson da Silva', NULL, NULL, NULL, NULL, NULL, 'Primeiro Conselheiro dos Rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria de Fátima dos Santos', 'Ellen Karine Brito Pereira', 'Ednalva Maria Pinto do Vale', '5', '10', '20', '1', '2018-04-28 23:16:01', '2018-04-29 19:11:17'),
(11, 34, 'Maceió Tabuleiro', 'Aeroclube', 94, '2018-04-29', 'Bispo Silva', 'Givaldo dos Santos Costa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dryelly Milar', NULL, NULL, NULL, NULL, NULL, 'Professora dos valores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Flack', 'Sara Carvalhaes', 'Thiago Almeida', '5', '10', '20', '1', '2018-04-29 18:13:58', '2018-04-30 09:45:54'),
(12, 41, 'Maceió Tabuleiro', 'Gurguri', 151, '2018-05-06', 'Bispo Cristiano', 'Bispo Cristiano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana ao Templo, Falar com Higor Lehi', 'Devocinal da obra missionária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Gurguri', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2018-05-19', '2018-05-06', NULL, NULL, NULL, '18:00', '19:00', NULL, NULL, NULL, 152, 117, 1, 25, 'Evelly Almeida de Oliveira Nunes', 'Wil Robson de Souza', 'Thalytuan Ferreira Toledo', 'Isabela Tomaz Dos Santos', 'Yohan Miranda de Almeida Barros', NULL, NULL, 'Diego Almeida de Barros', NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Cristiano', NULL, NULL, NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leticia Sabino', NULL, NULL, NULL, NULL, NULL, 'Professora da Escola Dominical.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-05-04 19:31:26', '2018-05-06 17:55:23'),
(13, 159, 'Maceió Tabuleiro', 'Pratagy', 82, '2018-05-06', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Caravana da estaca', 'Devocional da Obra Missionaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2018-05-19', '2018-05-06', NULL, NULL, NULL, 'Saida dia 18/05 as 18:00', 'As 19:00 Hs', NULL, NULL, NULL, 70, 106, 1, 71, 'Leticia Carvalho', 'Thais', 'Sandra Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alisson Araujo dos Santos', 'Everaldo Jose da Silva', 'Mikael Ramos da Silva', 'João Gabriel Novais Lima', 'Gabriel Ryan Carvalho da Silva Pimentel', NULL, 'Domingo de testemunhos.', 'Domingo de testemunhos.', 'Domingo de Testemunhos.', NULL, NULL, NULL, '1', '2018-05-05 23:13:09', '2019-10-13 23:50:14'),
(14, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 100, '2018-05-06', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar Freitas Lins', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo - Conselheiro da Estaca', NULL, NULL, NULL, 'Ofcimina de História da Família', 'Caravana dos Jovens', 'Caravana da Estava', 'Treinamento para líderes da Org. Rapazes', 'Palestra - Márcio Giacobelli', NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Sede da Estaca - Capela Tabuleiro', 'Sede da Estaca - Farol', '2018-05-06', '2018-05-31', '2018-05-19', '2018-05-12', '2018-05-08', '16h', '3h', '18h', '15:30h', '19h', 145, 101, 1, 2, NULL, 'Gerson Bernardinno do Vale Júnior', 'Críssia Maria dos Santos', 'Luiz da Rocha', 'Sarah Sobral de Queiroz Barretto', NULL, NULL, 'Bispo Bruno Rafael de Queiroz Barreto', NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-05-06 07:54:58', '2018-05-07 16:25:44'),
(15, 159, 'Maceió Tabuleiro', 'Pratagy', 80, '2018-05-13', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Caravana da estaca', 'Encontro de Coros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2018-05-19', '2018-05-20', NULL, NULL, NULL, 'Saida dia 18/05 as 18:00', 'as 16:00 hs', NULL, NULL, NULL, 193, 110, 57, 134, 'Leticia Carvalho', 'Estevão Santana', 'Geraldo Carvalho', 'Roberto Freitas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juarez Jackson de Lima Santos', 'Juarez Jackson de Lima Santos', NULL, NULL, NULL, NULL, 'Diretor assistente de Assuntos Públicos', NULL, NULL, NULL, NULL, NULL, 'Everaldo', 'José Ailton', 'João', 'Lucas', 'Pedro Henrique', NULL, 'Edna André', 'Maria Janete', 'Estevão Santana', '5', '10', '20', '1', '2018-05-06 17:24:54', '2019-10-13 23:50:00'),
(16, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 96, '2018-05-13', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana da Estaca', 'Mutirão de limpeza c/ Pratagy', 'Caravana dos Jovens', 'Devocional Primária', 'Integração da ala', NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', '2018-05-19', '2018-05-26', '2018-05-31', '2018-05-27', '2018-05-20', '18h', '8h', '3h', '19h', '20h', 196, 112, 1, 70, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardinno do Vale Júnior', 'Marcos Gley Brandão', 'Adeilson Cruz da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Isabela Tomaz dos Santos', 'Cláudia Angélica Angélica Oliveira dos Tomaz', 'Adriano José do Nascimento', '5', '10', '20', '1', '2018-05-07 17:05:04', '2018-05-13 11:18:38'),
(17, 41, 'Maceió Tabuleiro', 'Gurguri', 120, '2018-05-13', 'JÚNIO SANTANA DA SILVA', 'JÚNIO SANTANA DA SILVA', 'Antonio Silva dos Santos', NULL, NULL, NULL, 'Membro do sumo conselho da estaca', NULL, NULL, NULL, 'CARA A CARA COM ELDER CARBONI ( DIRETOR REGIONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede do instituto maceio/ Capela do farol', NULL, NULL, NULL, NULL, '2018-05-15', NULL, NULL, NULL, NULL, '19H', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 'WILL Robson de Souza', 'HIGOR LEHI LIMA DO NASCIMENTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jeiza Rafaela', 'Rosival Barbosa', 'Douglas Moronni', '5', '10', '20', '1', '2018-05-08 20:00:04', '2018-05-20 11:38:02'),
(18, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-05-20', 'Bispo Bruno Rafael de Queiroz Barretto', 'Bispo Bruno Rafael de Queiroz Barretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mutirão de Limpeza c/ Pratagy', 'Devocional da Primária', 'Caravana dos Jovens', 'Conferência da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Sede da Estaca', NULL, '2018-05-26', '2018-05-27', '2018-05-31', '2018-06-03', NULL, '8h', '19h', '3h', '18h', NULL, 12, 113, 197, 74, 'Sâmia Isabelle do Vale', 'Gerson B. do Vale Jr.', 'jaciara Costa', 'Gustavo dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Emily Raquel Gomes', 'Marcos Gley Brandão', 'Gerson B. do Vale Jr.', '5', '10', '20', '1', '2018-05-19 07:16:54', '2018-05-19 21:56:08'),
(19, 54, 'Maceió Tabuleiro', 'Pratagy', 85, '2018-05-20', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', 'Genival', '.Moroni', NULL, 'Patriarca', 'Presidente da estaca', 'Sumoconselheiro', NULL, 'Encontro de Coros (Primaria)', 'Conferência da estaca Tabuleiro (Reunião de liderança do sacerdócio)', 'Conferência da Estaca Tabuleiro (Sessão para Membros Adultos)', 'Conferência da estaca (Sessão Geral)', 'Caravana ao Templo.', NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca (Membros e convidados)', 'Sede da Estaca Maceió Tabuleiro', 'Sede da Estaca Maceió Tabuleiro', 'Sede da estaca Tabuleiro', 'Capela do Benedito Bentes.', '2018-05-20', '2018-06-02', '2018-06-02', '2018-06-03', '2018-06-16', 'As 16:00 Hs', 'As 16:00 Hs', 'As 19:00 Hs', 'As 18:00 Hs', 'Saida dia 15/06 as 18:00 Hs', 4, 115, 151, 195, 'Leticia Carvalho', NULL, 'Gabriela Imbroisi', 'Lucas Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edward Brian Watson, Sacerdócio Aarônico, Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Everaldo', 'José Ailton', 'João Gabriel Novais', 'Mykarl Ramos', 'Gabriel Ryan Pimentel', NULL, 'Bruna Melo', 'Claudio Santos', 'João Vasconcelos', '5', '10', '20', '1', '2018-05-20 00:15:47', '2018-05-20 10:27:52'),
(20, 54, 'Maceió Tabuleiro', 'Pratagy', 91, '2018-05-27', 'Presidente Romildo dos Santos', 'Roberto', 'João Vasconcelos', 'Presidente Romildo Santos', 'Leandro Vasconcelos', 'Janete', 'Patriarca', 'Primeiro Conselheiro da Estaca', 'Sumo conselho', 'Conselheira da Primaria', 'Conferência da estaca (Reunião de liderança do sacerdócio)', 'Conferência da estaca (Sessão para os membros adultos)', 'Conferência da estaca (Sessão Geral)', 'Caravana da Estaca ao Templo', '.', NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca (Membros e convidados)', 'Sede da Estaca Maceió Tabuleiro', 'Sede da Estaca Maceió Tabuleiro', 'Capela do Benedito Bentes', NULL, '2018-06-02', '2018-06-02', '2018-06-03', '2018-06-16', NULL, 'As 16:00 Hs', 'As 19:00 Hs', 'As 18:00 Hs', 'Saída as 18:00 Hs do dia 15/06', NULL, 68, 113, 44, 134, 'Letícia Carvalho', 'Geraldo carvalho', 'Juarez Jackson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Severino Tavares da Silva', NULL, NULL, NULL, NULL, 'Dutra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rosalia Rodrigues Caiano', 'Karla Monique Bispo', 'Raul da Silva Lima', NULL, NULL, NULL, 'Lider de Música da Primaria', '2 conselheira das moças', 'Lma', NULL, NULL, NULL, 'Leticia Aguiar dos Santos Carvalho', 'Bruna Fragoso de Melo', 'Edinaldo Vieira Dutra', 'Fabiana', 'Jeiza', NULL, 'Lider de Musica da Primaria', NULL, NULL, NULL, NULL, NULL, 'Everaldo', 'Alisson', 'João Gabriel', 'Gabriel Ryan', 'Welson da Silva', NULL, 'Leandro Vasconcelos', 'Juliene de Almeida Caiano', 'Roberto Freitas', '5', '10', '20', '1', '2018-05-20 00:45:32', '2018-05-27 10:34:37'),
(21, 41, 'Maceió Tabuleiro', 'Gurguri', 128, '2018-05-20', 'Presidente Fábio', 'Bispo Cristiano', 'Leandro Vasconcelos', 'Govanildo Tomaz', 'Presidente Taylor', 'Sister Taylor', 'sumo Conselho', 'Sumo Conselho', 'Presidente de Missão', 'Sister de Missão', 'Caravana ao Templo, Falar com Higor Lehi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Gurguri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18:00', NULL, NULL, NULL, NULL, 136, 114, 183, 151, 'Evelly Almeida de Oliveira Nunes', NULL, 'Rosangela Gouveia', 'Claudia Angelica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Desobrigação de Renata Oliveira', 'Lidiane Miranda da Silva Barros', NULL, NULL, NULL, NULL, 'Presidente das Moças', 'Professora da Escola Dominical', NULL, NULL, NULL, NULL, 'Lidiane Miranda da Silva Barros', 'Renata Oliveira', 'Edna Sales', 'Tatiana Fanquelma Lins', NULL, NULL, 'Presidente das Moças', 'Primeira Conselheira das Moças', 'Segunda Conselheira das Moças', 'Professora da Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dgina Calista', 'Higor Nascimento', 'Presidente Fábio', '5', '10', '20', '1', '2018-05-20 11:37:30', '2018-05-20 11:37:30'),
(22, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 82, '2018-05-27', 'Pres. Genival dos Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Devocional da Primária', 'Caravana dos Jovens', 'Conferência da Estaca', 'Conferência da Estaca', 'Instituto', NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Sede da Estaca', 'Sede da Estaca', 'Inscrição e participação', '2018-05-27', '2018-05-31', '2018-06-02', '2018-06-03', NULL, '19h', '2:15h', '19h', '18h', 'Incentivar', 42, 101, 166, 81, 'Sâmia Isabelle do Vale', 'Gerson Bernardinho do Vale Jr.', 'Gardência Lisboa dos Santos', 'Marileide da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana Lúcia Cavalcante Rocha', 'Élder Caruso', 'Bispo Bruno Rafael de Queiroz Barretto', '5', '10', '20', '1', '2018-05-26 18:31:08', '2018-06-10 18:36:35'),
(26, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 81, '2018-06-10', 'Pres. Genival dos Santos', 'Bispo Bruno Rafael de Queiroz Barretto', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo - Conselheiro da Estaca', NULL, NULL, NULL, 'Devocional dos Jovens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', NULL, NULL, NULL, NULL, '2018-06-10', NULL, NULL, NULL, NULL, '18:30h', NULL, NULL, NULL, NULL, 180, 117, 1, 71, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Maurício Carlos de Almeida Brandão', 'Edvaldo Pereira do Nascimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gleise Elis Soares de Souza', NULL, NULL, NULL, NULL, NULL, '2° Cons. da Soc. de Socorro', NULL, NULL, NULL, NULL, NULL, 'Jessica Bernardino do Vale Vasconcelos', 'Lucas Fernando Cavalcante Sarmento', 'Gleise Elis Soares de Souza', 'Sâmia Isabelle Bezerra Santos do Vale', NULL, NULL, '2° Cons. da Soc. de Socorro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-06-06 18:57:21', '2018-06-10 18:37:17'),
(27, 159, 'Maceió Tabuleiro', 'Pratagy', 65, '2018-06-10', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'caravana ao Templo', 'Super Sabado', 'devocional de autssuficiencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede de Estaca', 'PRATAGY', NULL, NULL, '2018-06-16', '2018-06-30', '2018-06-10', NULL, NULL, NULL, '15h as 18h', 'As 18h', NULL, NULL, 12, 112, 1, 61, 'Jeiza', NULL, 'Jessika Lima', 'Tiago imbrois', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Severino tavares da Silva', NULL, NULL, NULL, NULL, NULL, 'Sacerdócio Aronico / Como Sacerdote', NULL, NULL, NULL, NULL, NULL, 'Alission', 'Everaldo', 'Gabriel pimentel', 'Hecriles pimentel', 'João', NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-06-09 14:17:30', '2018-06-10 11:18:06'),
(29, 159, 'Maceió Tabuleiro', 'Pratagy', 75, '2018-06-17', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'OS CURSOS DE AUTOSSUFICIÊNCIA', 'DEVOCIONAL DA PRESIDENCIA', 'SUPER SABADO', 'CARAVANA DE UMA SEMANA AO TEMPLO', NULL, NULL, NULL, NULL, NULL, NULL, 'Na capela pratagy', 'NA CAPELA BENEDITO BENTES', 'ESTACA', 'ESTACA ( FALEM COM SEUS LIDERES )', NULL, '2018-06-17', '2018-07-01', '2018-06-30', '2018-06-17', NULL, 'Hoje as 15h da tarde', 'AS 18H', 'AS 15H', 'AS 08h', NULL, 199, 101, 44, 60, 'Leticia Carvalho', NULL, 'Everaldo', 'Milton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROMÁRIO HENRIQUE DA SILVA', NULL, NULL, NULL, NULL, NULL, 'PROFESSOR DO SEMINÁRIO DA ALA UNIVERSITARIO', NULL, NULL, NULL, NULL, NULL, 'Airton', 'Everaldo', 'Gabriel  Pimentel', 'LUCAS GABRIEL', 'JOAO LIMA', NULL, 'LUCAS LIMA', 'SANDRA LIMA', 'DAVI BISPO', '5', '10', '20', '1', '2018-06-16 09:16:49', '2018-06-17 12:00:12'),
(30, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 88, '2018-06-17', 'Bispo Bruno Rafael de Queiroz Barretto', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Festa Junina da Ala', 'Super Sábado', 'Explicar aos membro - Pós Lúdio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Sede da Estaca', NULL, NULL, NULL, '2018-06-23', '2018-06-30', NULL, NULL, NULL, '18h', '14h', NULL, NULL, NULL, 167, 106, 106, 194, NULL, 'Gerson Bernardino do Vale Júnior', 'Cícera Pereira dos Santos', 'Gabriel Lisboa dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Élder Rodrigues', 'Arlene Maria da Silva Batista Cruz', 'Leonardo Aguiar Freitas Lins', '5', '10', '20', '1', '2018-06-17 10:04:40', '2018-06-23 09:11:21'),
(31, 41, 'Maceió Tabuleiro', 'Gurguri', 134, '2018-06-17', 'Bispo Cristiano', 'Paulo Germano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Festa junina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Gurguri', NULL, NULL, NULL, NULL, '2018-06-22', NULL, NULL, NULL, NULL, '19:30', NULL, NULL, NULL, NULL, 16, 101, 148, 203, 'Evellyn Almeida', NULL, 'Junio Santana', 'Claudiane dos Santos Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jamile Brito Ribeiro', 'Ednilson Silva de Lima Júnior', 'Claudiane dos Santos Silva', NULL, NULL, NULL, 'Consultora das meninas moças', 'Secretário dos rapazes', 'Secretaria das moças', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria Gerlane', 'Pedro Almeida', NULL, '10', '20', '1', '2018-06-17 11:38:23', '2018-06-17 11:38:23'),
(32, 41, 'Maceió Tabuleiro', 'Gurguri', 122, '2018-06-10', 'Bispo Cristiano', 'Bispo Cristiano', 'Jivanildo Tomasz', NULL, NULL, NULL, 'Sumo conselho', NULL, NULL, NULL, 'Caravaca so templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Gurguri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18:00', NULL, NULL, NULL, NULL, 155, 117, NULL, 153, 'Evellyn Almeida', 'Will Robson de Souza', 'Mais Janete Ferreira', 'Jackson da Silva Santos', 'Lucas Eduardo Ferreira Santos', NULL, NULL, 'Bispo Cristiano', NULL, NULL, 'Sumo Sacerdote', NULL, NULL, 'Mateus Henrique Inácio da Silva', 'Elisângela Maria da Silva', 'Kervison Paulo Bezerra Farias', 'Stherfanny Kelly Bezerra Farias', 'Greissy Kelly Bezerra Farias', NULL, NULL, 'João Vitor', 'João Vitor', 'João Vitor', NULL, NULL, 'Élder', 'Élder', 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Carlos Eduardo dos Santos Silva', NULL, NULL, NULL, NULL, NULL, 'Avanço no sacerdócio sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-06-17 11:49:19', '2018-06-17 11:49:19'),
(33, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 89, '2018-06-24', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Super Sábado', 'Integração da Ala', 'Devocional da Presidência da Estaca', 'Caravana ao Templo - Uma semana', NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, '2018-06-30', '2018-06-27', '2018-07-01', '2018-07-17', NULL, '14h', '20h', '18h', NULL, NULL, 12, 105, 81, 191, 'Jaciara Gomes de Costa', 'Gerson Bernardino do Vale Júnior', 'Maria de Lourdes dos Santos', 'Rita de Cássia de Almeida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Camila Sobral de Menezes', 'Luiz da Rocha', 'Lucineide Alves dos Santos Lins', '5', '10', '20', '1', '2018-06-23 09:29:40', '2018-07-01 10:05:38'),
(34, 1, 'Maceió Tabuleiro', 'Pratagy', 80, '2018-06-24', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'Joao vascocelo', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, 'caravana ao Templo', 'super sábado', 'treinamento trimestral da liderança', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Templo', 'estaca', 'estaca', NULL, NULL, '2018-07-21', '2018-06-30', '2018-07-22', NULL, NULL, 'nao sera mais de uma semana', '15h as 18h', '17h', NULL, NULL, 80, 107, 42, 195, 'Letícia Carvalho', 'Thais', 'Rafaela Barbosa', 'Daniela Freitas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alisson', 'Everaldo', 'João', 'Mikael', 'Gabriel', NULL, 'Sandra almeida  ( Espirito santos )', 'Hércules  ( a influencia do espirito santo na sua vida )', 'Roberto Freitas', '5', '10', '20', '1', '2018-06-23 18:57:50', '2018-07-18 08:31:15'),
(35, 159, 'Maceió Tabuleiro', 'Pratagy', 70, '2018-07-01', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'Joao vascocelo', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, 'Devocional da presidência da estaca nas unidades', 'caravana ao templo', 'treinamento trimestral da liderança', 'treinamento para as presidência dos quóruns', 'curso de autossuficiência', NULL, NULL, NULL, NULL, NULL, 'estaca', 'estaca)Membros cadastrados', 'estaca', 'capela B.Bentes', 'Na capela', '2018-07-01', '2018-07-21', '2018-07-22', '2018-07-01', '2018-07-01', '18H Membros e convidados', NULL, '17h', '16H', '15H', 71, 106, 1, 85, 'Letícia Carvalho', 'Thais', 'Ana maria dos santos', 'Raul Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karla Bispo', 'Sandra Almeida', NULL, NULL, NULL, NULL, 'servir na escola dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-06-30 20:29:00', '2018-07-05 16:31:17'),
(36, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 88, '2018-07-01', 'Pres. Genival dos Santos', 'Bispo Bruno Rafael de Queiroz Barretto', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Devocional da Presidência da Estaca', 'Caravana de Uma Semana', 'Ativ. Missionários Retornados últimos 2 anos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Sede da Estaca', NULL, NULL, '2018-07-01', '2018-07-17', '2018-07-08', NULL, NULL, '18h', NULL, NULL, NULL, NULL, 171, 115, 1, 71, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Jr', NULL, 'Bianca Carolinny França Moura', 'Marjorie Mariah Florentino Alves', NULL, NULL, 'Bispo Bruno Rafael de Queiroz Barreto', NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-06-30 23:39:57', '2018-07-08 09:53:19'),
(37, 159, 'Maceió Tabuleiro', 'Pratagy', 75, '2018-07-08', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', 'Andre santos', NULL, NULL, 'Patriarca', 'Sumo conselho', NULL, NULL, 'caravana ao Templo', 'Treinamento de liderança', 'Reunião Geral do sacerdócio da estaca', 'Festival de oratória das alas', 'curso de Autossuficiente', NULL, NULL, NULL, NULL, NULL, 'estaca', 'estaca', 'estaca', 'ORM das unidades', 'Ala Pratagy', '2018-07-21', '2018-07-22', '2018-07-29', '2018-07-29', '2018-07-08', 'nao sera mais de uma semana', 'as 17H', 'As 18h', 'as 15H Nas unidades', 'as 15horas', 188, 112, 50, 85, 'Leticia Carvalho', NULL, 'Sandra Lima', 'Marquinho caiano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'João Vasconcelo ( Patriarca )', 'Adriano nascimento  ( Sumo concelho aeroclube )', 'Rosival barbosa Pre,.da escola dominical', '5', '10', '20', '1', '2018-07-07 15:33:14', '2018-07-08 11:36:16'),
(38, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 101, '2018-07-08', 'Bispo Bruno Rafael de Queiroz Barretto', 'Alexandre Carlos da Silva', 'Líderes da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativ. Missionários Retornados últimos 2 anos', 'Carava ao Templo', 'Baile a Fantasia - Rapazes e moças', 'Acampamento Mateiro - Todos os Rapazes', 'O JAS permanecer na sacramental após a reunião', NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Ben. Bentes', 'Sede da Estaca Tabuleiro', 'Boca da Mata (Cleyton)', NULL, '2018-07-08', '2018-07-17', '2018-07-17', '2018-07-28', NULL, '17h', NULL, '18h', '17h Saída do Local', NULL, 12, 115, 50, 89, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Debora Raquel dos Santos Silva', 'Luana de Paula Rocha Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alex Souza dos Anjos', 'Azaildes de Jesus Santana', 'Rosival Barbosa dos Santos', '5', '10', '20', '1', '2018-07-08 10:23:49', '2018-07-15 00:14:35'),
(39, 159, 'Maceió Tabuleiro', 'Pratagy', 85, '2018-07-15', 'Presidente Fabio Ferreira', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'caravana ao Templo', 'Treinamento de liderança', 'Reunião Geral do sacerdócio', 'Festival de oratória das alas', 'curso de Autossuficiente', NULL, NULL, NULL, NULL, NULL, 'estaca', 'estaca', 'estaca', 'ORM das unidades', 'Ala pratagy', '2018-07-21', '2018-07-22', '2018-07-29', '2018-08-29', '2018-07-15', 'nao sera mais de uma semana', 'As 17H', 'As 18H', 'as 15H Nas unidades', '15horas', 44, 101, 165, 84, 'Jeiza', NULL, 'João Lima ( Rapazes', 'Juliene - Primeira Conselheira das Moças )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EVERALDO JOSÉ   - FÉ EM JESUS CRISTO', 'MARCOS CAIANO  - COMO POSSO ME APROXIMAR DE CRISTO', 'Ednaldo Vieira Dutra', '5', '10', '20', '1', '2018-07-14 11:11:27', '2018-07-20 11:18:16'),
(40, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 102, '2018-07-15', 'Bispo Bruno Rafael de Queiroz Barretto', 'Bispo Bruno Rafael de Queiroz Barretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Carava ao Templo', 'Baile a Fantasia - Rapazes e moças', 'Face To Face - Élder Antunes dos Setentas', 'Devocional da Primárias', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Sede da Estaca Tabuleiro', 'Sede da Estaca Maceió', 'Capela Ben. Bentes', NULL, '2018-07-17', '2018-07-27', '2018-07-28', '2018-07-15', NULL, NULL, '18h', '17h', '18h', NULL, 9, 117, 194, 171, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Jamerson da Silva', 'Richard Lédio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucas Sarmento', 'Cícera Pereira dos Santos', 'Natércia dos Santos', '5', '10', '20', '1', '2018-07-15 00:22:46', '2018-07-20 20:44:34'),
(41, 47, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-07-22', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Face To Face - Élder Antunes dos Setentas', 'Limpeza da Capela', 'Explicar aos membro - Pós Lúdio', 'Noite de Integração', NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió Tabuleiro', 'Capela Benedito', NULL, 'Capela Ben. Bentes', NULL, '2018-07-28', '2018-07-28', NULL, '2018-07-25', NULL, '17h', 'O dia inteiro', NULL, '20:00', NULL, 41, 104, 20, 195, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Jean Pierre Torres de Souza', 'Williana Barbosa da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arlene Maria da SIlva Batista da Cruz', NULL, NULL, NULL, NULL, NULL, 'Líder de Atividades da Sociedade de Socorro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rita de Cássia de Almeida', 'Paula Elizângela Gomes da Silva', 'Gardênia Lisbôa dos Santos', '5', '10', '20', '1', '2018-07-20 20:44:26', '2018-07-22 10:34:07'),
(42, 159, 'Maceió Tabuleiro', 'Pratagy', 62, '2018-07-22', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'Joao vascocelo', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, NULL, NULL, 'treinamento trimestral da liderança', NULL, 'curso de autossuficiência', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, 103, 61, 195, 'Jeiza', NULL, 'Lucas de Lima', 'Caio Henrique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thalison de lima', 'hercules pimentel', NULL, NULL, NULL, NULL, 'secretario do rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Veridiana almeida', 'Sister rosa', 'Geraldo', '5', '10', '20', '1', '2018-07-21 19:15:35', '2018-07-22 11:06:02'),
(43, 159, 'Maceió Tabuleiro', 'Pratagy', 85, '2018-07-29', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'Joao vascocelo', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, 'reunião geral do sarcedorcio', NULL, NULL, 'Festival de oratória das alas', 'curso de autossuficiencia', NULL, NULL, NULL, NULL, NULL, 'Estaca', NULL, NULL, 'ORM das unidades', 'na capela', '2018-07-29', NULL, NULL, '2018-07-29', '2018-07-29', 'As 18 Horas', NULL, NULL, '18:00 Hs', 'as 15 horas', 151, 104, 134, 85, 'Letícia Carvalho', NULL, 'Rafaela Barbosa', 'everaldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Clementina', 'Gabriela imbroisi', 'Bispo Mauricio', '5', '10', '20', '1', '2018-07-28 20:10:00', '2018-07-29 11:28:09'),
(44, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 91, '2018-07-29', 'Pres. Genival dos Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reunião Geral do Sacerdócio', 'Aulão do Seminário', 'Festival de Oratória', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió Tabuleiro', 'Sede da Estaca Maceió Tabuleiro', 'Capela Ben. Bentes', NULL, NULL, '2018-07-29', '2018-08-04', '2018-07-29', NULL, NULL, '18h', '16h', '15h', NULL, NULL, 88, 105, 42, 147, 'Ednalva Maria Pinto do Vale', 'Gerson Bernardinho do Vale Jr', 'Ellen Karine Brito Pereira', 'Magna Rosicler dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Élder Burton', 'Élder Carvalho', 'Alexandre Carlos da Silva', '5', '10', '20', '1', '2018-07-28 23:58:05', '2018-08-18 08:54:27'),
(45, 159, 'Maceió Tabuleiro', 'Pratagy', 77, '2018-08-04', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'Joao vascocelo', NULL, NULL, NULL, 'patriacar', NULL, NULL, NULL, NULL, NULL, NULL, 'Convenção dos professores', 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, 'Estaca', NULL, NULL, 'Esc. Dominical', 'Templo', NULL, '2018-08-05', NULL, '2018-08-11', '2018-08-25', 'AS 16 horas', NULL, NULL, '18 horas Sede da Estaca', 'ultima fechara para reforma', 12, 112, 1, 71, 'Leticia Carvalho', 'thaysa', 'Lucas gabriel', 'jeiza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', 'Testemunho', 'Testemunho', 'Testemunho', '1', '2018-08-04 21:58:29', '2018-08-05 11:04:59'),
(46, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 86, '2018-08-05', 'Presidente Genival dos Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caminhada Ecológica - Rapazes', 'Convenção dos Prof. - Prof. Esc. Domin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Parque Municipal', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2018-08-11', '2018-08-11', NULL, NULL, NULL, '8h', '18h', NULL, NULL, NULL, 12, 115, 1, 71, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardinho do Vale Jr', 'Valdenice J. dos Santos Vieira', 'Nathália Adriane de Lima Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-08-04 22:12:36', '2018-08-18 08:54:45'),
(47, 25, 'Maceió Tabuleiro', 'Pratagy', 79, '2018-08-12', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', 'Moronni dos Santos', 'Leandro de Vasconcelos', 'Claudia Angelica', 'Patriarca', '(Presidente da OR da estaca)', '(Sumo Conselheiro)', '(Presidente da SOC da estaca)', 'Atividade do sacerdócio', 'Cara a cara com a Presidência e o JAS', 'Caravana ao Templo', 'Devocinal da ORM', 'curso de autossuficiencia', NULL, NULL, NULL, NULL, NULL, 'Na ALA Pratagy', 'estaca', 'estaca', 'estaca', 'Na capela', '2018-08-19', '2018-08-19', '2018-08-25', '2018-08-19', '2018-08-11', 'as 18:30', 'As 19:00', NULL, '18:00 Hs', 'as 15 horas', 35, 112, 2, 27, 'Letícia Carvalho', 'Thais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Claudia Angelica (Presidente da SOC da estaca)', 'Moronni dos Santos (Presidente da OR da estaca)', 'Leandro de Vasconcelos(Sumo Conselheiro)', '5', '10', '20', '1', '2018-08-05 11:05:55', '2018-08-19 09:02:54'),
(48, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 85, '2018-08-12', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonar Aguiar Freitas Lins', 'Paulo José Bernardino Santos', 'Demais líderes da estaca', NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Cara a cara com a presidência da estaca', 'Show Musical Multiestaca - MAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Ben. Bentes - Teatro de Arena', NULL, NULL, NULL, '2018-08-19', '2018-08-17', NULL, NULL, NULL, '19h', '18h', NULL, NULL, NULL, 26, 112, 42, 41, 'Jaciara Gomes de Costa', 'Gerson Bernardinho do Vale Júnior', 'Debora Raquel dos Santos Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deise Vitória dos Santos Silva', 'Denise Rafaela Santos da Silva', 'Cícera Pereira dos Santos', 'Jorge Luiz Flores Ferreira', NULL, NULL, 'Consultora do Templo e História da Família', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Daniele Santos de Oliveira', 'Seni Lira de Oliveira do Nascimento', 'Paulo José Bernardino Santos', '5', '10', '20', '1', '2018-08-11 23:58:34', '2018-08-18 08:55:25'),
(49, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 101, '2018-08-19', 'Bispo Bruno Rafael de Queiroz Barretto', 'Bispo Bruno Rafael de Queiroz Barretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cara a cara com a presidência da estaca', 'Festival de Oratória', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió Tabuleiro', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2018-08-19', '2018-08-19', NULL, NULL, NULL, '19h', '16h', NULL, NULL, NULL, 14, 112, 26, 171, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Pedro Vieira da Silva', 'Roberto Vieira da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jailton Costa', 'Wemerson Batista da Cruz', NULL, NULL, NULL, NULL, 'Pres. da Org. dos Rapazes', 'Líder da Missão da Ala', NULL, NULL, NULL, NULL, 'Leonardo Aguiar Freitas Lins', 'Breno dos Santos', 'Marcos Gley Brandão', 'Jailton Costa', 'Wemerson Batista da Cruz', 'Jamerson da Silva', 'Pres. da Org. dos Rapazes', '1º Cons. da Org. dos Rapazes', '2º Cons. da Org. dos Rapazes', 'Líder da Missão da Ala', '1º Cons. da Escola Dominical', '2º Cons. da Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, 'Rita de Cássia de Almeida', 'Jaciara Gomes Costa', 'Luiz Fernando dos Santos', '5', '10', '20', '1', '2018-08-18 10:05:39', '2018-08-26 10:15:19'),
(50, 159, 'Maceió Tabuleiro', 'Pratagy', 81, '2018-08-19', 'Cícero Fábio Ferreira da Silva', 'Roberto Freitas', 'Joao vascocelo', 'Cícero Fábio Ferreira da Silva', NULL, NULL, 'partriaca', 'Segundo Conselheiro na Presidência da Estaca', NULL, NULL, 'Atividade do sacerdocio', 'Cara a cara com a Presidência e o JAS', NULL, NULL, 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, 'Ala Pratagy', 'Sede da Estaca do Tabuleiro', NULL, NULL, 'Templo recife', '2018-08-19', '2018-08-19', NULL, NULL, '2018-08-28', '18:30', '19:00 HS', NULL, NULL, NULL, 4, 110, 193, 197, 'Letícia Carvalho', 'Thaisa', 'José Airton da Cruz Filho', 'Alisson Araújo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIANCA GAMA', 'VIVIANE TALITA', 'Cícero Fábio Ferreira da Silva', '5', '10', '20', '1', '2018-08-18 22:57:08', '2018-08-19 11:54:15'),
(51, 159, 'Maceió Tabuleiro', 'Pratagy', 80, '2018-08-26', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Treinamento das Presidências dos quóruns da Alas', 'Conferência da ala Pratagy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'Ala pratagy', NULL, NULL, NULL, '2018-09-02', '2018-09-23', NULL, NULL, NULL, 'as 16:00', 'as 9:30', NULL, NULL, NULL, 57, 106, 135, 145, 'Leticia Carvalho', 'Thais', 'Rafaela Barbosa', 'Jessika Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LETICIA CARVALHO', 'KARLA BISPO', 'BISPO MAURICIO', '5', '10', '20', '1', '2018-08-19 11:55:38', '2018-09-02 07:21:42');
INSERT INTO `sacramental_meetings` (`id`, `user_id`, `stake`, `ward`, `frequencia`, `date`, `presidida`, `dirigida`, `rec_nome1`, `rec_nome2`, `rec_nome3`, `rec_nome4`, `rec_cham1`, `rec_cham2`, `rec_cham3`, `rec_cham4`, `anun_1`, `anun_2`, `anun_3`, `anun_4`, `anun_5`, `pub_anun_1`, `pub_anun_2`, `pub_anun_3`, `pub_anun_4`, `pub_anun_5`, `local_anun_1`, `local_anun_2`, `local_anun_3`, `local_anun_4`, `local_anun_5`, `data_anun_1`, `data_anun_2`, `data_anun_3`, `data_anun_4`, `data_anun_5`, `hora_anun_1`, `hora_anun_2`, `hora_anun_3`, `hora_anun_4`, `hora_anun_5`, `hino1`, `hino2`, `hino3`, `hino4`, `regente`, `pianista`, `oracao1`, `oracao2`, `bencao1`, `bencao2`, `bencao3`, `abencoador1`, `abencoador2`, `abencoador3`, `oficio1`, `oficio2`, `oficio3`, `converso1`, `converso2`, `converso3`, `converso4`, `converso5`, `confirmador1`, `confirmador2`, `confirmador3`, `confirmador4`, `confirmador5`, `oficio4`, `oficio5`, `oficio6`, `oficio7`, `oficio8`, `desob_nome1`, `desob_nome2`, `desob_nome3`, `desob_nome4`, `desob_nome5`, `desob_nome6`, `desob_cham1`, `desob_cham2`, `desob_cham3`, `desob_cham4`, `desob_cham5`, `desob_cham6`, `apoio_nome1`, `apoio_nome2`, `apoio_nome3`, `apoio_nome4`, `apoio_nome5`, `apoio_nome6`, `apoio_cham1`, `apoio_cham2`, `apoio_cham3`, `apoio_cham4`, `apoio_cham5`, `apoio_cham6`, `sacerdote1`, `sacerdote2`, `diacono1`, `diacono2`, `diacono3`, `diacono4`, `discursante1`, `discursante2`, `discursante3`, `tempo1`, `tempo2`, `tempo3`, `ativo`, `created_at`, `updated_at`) VALUES
(52, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-08-26', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonar Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conferência de Ala', 'Preparação para o Sacerdócio - Primária', 'Atividade do JAS', 'Fazer a leitura da Carta', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', 'Capela Ben. Bentes', 'Sede da Estaca Tabuleiro', NULL, NULL, '2018-09-16', '2018-08-26', '2018-09-01', NULL, NULL, '9h', '16h', '9h', NULL, NULL, 26, 112, 20, 50, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardinho do Vale Júnior', 'Edjane dos Santos Silva', 'Rita de Cássia de Almeida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gleise Elis Soares Souza', 'Edleusa Canuto Oliveira', 'Élder Rodrigues', '5', '10', '20', '1', '2018-08-25 23:04:57', '2018-08-26 10:18:36'),
(53, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 90, '2018-09-02', 'Presidente Genival dos Santos', 'Alexandre Carlos da Silva', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Conferência de Ala', 'Show de Talentos (todas alas convidadas)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Ala Universitário', NULL, NULL, NULL, '2018-09-16', '2018-09-29', NULL, NULL, NULL, '9h', '19:30', NULL, NULL, NULL, 26, 115, 1, 71, 'Ednalva Maria Pinto do Vale', 'Gerson Bernardinho do Vale Júnior', 'Rejane dos Santos', 'Cledigilson Cauã Baracho', 'Lorena Sophia Rocha da Silva', NULL, NULL, 'Jamerson da Silva', NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'João Lucas Lima dos Santos', 'Christian Gabriel Lima dos Santos', NULL, NULL, NULL, NULL, 'Sacerdócio Aarônico - Diácono', 'Sacerdócio Aarônico - Diácono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-09-01 23:26:34', '2018-09-02 20:37:09'),
(54, 159, 'Maceió Tabuleiro', 'Pratagy', 59, '2018-09-02', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Treinamento das Presidências dos quóruns da Alas', NULL, 'Encontro de casais ( nao crianças )', 'Prêmio da comunidade', 'Conferência da ala Pratagy', NULL, NULL, NULL, NULL, NULL, 'Estaca', NULL, 'PRATAGY', 'estaca', 'Ala Pratagy', '2018-09-02', NULL, '2018-08-23', '2018-08-22', '2018-09-23', 'As 16:00 H', NULL, 'As 18h', '19 hs', 'as 09:30 hs', 153, 101, 1, 70, 'Leticia Carvalho', 'Thais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marcos Sergio Rodrigues caiano', 'José Airton da Filho Cruz,', 'Hercules Moreira Pimentel,', NULL, NULL, NULL, 'Presidente do rapazes', 'Primeiro Conselheiro dos Rapazes', 'Segundo Conselheiro dos Rapazes', NULL, NULL, NULL, 'José Airton da Filho Cruz,', NULL, NULL, NULL, NULL, NULL, 'Presidente do rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-09-02 07:23:16', '2018-09-02 11:05:59'),
(55, 159, 'Maceió Tabuleiro', 'Pratagy', 77, '2018-09-09', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', 'Ademar Leandro de Vasconcelos da Silva', 'José Antônio Silva dos Santos', 'Estevão Santana da Silva', 'partriaca', 'Sumo Conselheiro da Estaca', 'Sumo Conselheiro', 'Especialista de autossuficiência da Estaca', NULL, NULL, NULL, 'Prêmio da comunidade', 'Conferência da ala Pratagy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca', 'na Ala pratagy', NULL, NULL, NULL, '2018-09-22', '2018-09-23', NULL, NULL, NULL, '19 horas', 'as  09:30', 3, 107, 147, 75, 'Leticia Carvalho', 'thaysa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thalison Soares de Lima', NULL, NULL, NULL, NULL, NULL, 'Secretario do Rapazes', NULL, NULL, NULL, NULL, NULL, 'Hercules Moreira Pimentel,', NULL, NULL, NULL, NULL, NULL, '1 Concelheiro do Rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estevão Santana da Silva', 'José Antônio Silva dos Santos', 'Ademar Leandro de Vasconcelos da Silva', '5', '10', '20', '1', '2018-09-02 11:07:00', '2018-09-16 06:54:17'),
(56, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-09-09', 'Bispo Bruno Rafael de Queiroz Barretto', 'Leonardo Aguiar Freitas Lins', 'Manilson Batista Santos', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Atividade Pré-Conferência', 'Conferência de Ala', 'Show de Talentos (todas alas convidadas)', 'Cara a Cara com Élder Quentin L. Cook', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', 'Capela Universitário', 'Capela Ben. Bentes', NULL, '2018-09-14', '2018-09-16', '2018-09-29', '2018-09-09', NULL, '19:30h', '9h', '19:30h', '21h', NULL, 41, 113, 147, 89, 'Jaciara Gomes Costa', 'Gerson Bernardinho do Vale Júnior', 'Jessica Bernadino do Vale Vasconcelos', 'Jailton Costa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cícera Pereira dos Santos', 'Denilson Gustavo Santos Silva', NULL, NULL, NULL, NULL, 'Consultora do Templo e História da Família', 'Consultora do Templo e História da Família', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria Janete Ferreira', 'Daniela Santos Oliveira', 'Manilson Batista Santos', '5', '10', '20', '1', '2018-09-08 23:08:29', '2018-09-09 10:19:47'),
(57, 47, 'Maceió Tabuleiro', 'Benedito Bentes', 130, '2018-09-16', 'Presidente Genival dos Santos', 'Bispo Bruno BArretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-09-12 02:38:38', '2018-09-12 02:38:38'),
(58, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-09-16', 'Presidente Genival dos Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Prêmio da Comunidade', 'Show de Talentos (todas a alas convidadas)', 'Aula de Inglês aos Sábados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Universitário', 'Capela Ben. Bentes', NULL, NULL, '2018-09-22', '2018-09-29', '2018-09-22', NULL, NULL, '19h', '19:30h', '18h', NULL, NULL, 26, 115, 195, 202, 'Jessica Bernardino do Vale Vasconcelos', 'Gerson Bernardinho do Vale Júnior', 'Sayonara Sobral de Queiroz Barretto', 'Maria de Fátima dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Bruno Rafael de Queiroz Barretto', NULL, 'Presidente Genival dos Santos', NULL, NULL, NULL, '1', '2018-09-15 23:06:29', '2018-09-16 10:37:41'),
(59, 159, 'Maceió Tabuleiro', 'Pratagy', 85, '2018-09-16', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, NULL, NULL, NULL, 'Prêmio da comunidade', 'Conferência da ala Pratagy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca', 'na Ala pratagy', NULL, NULL, NULL, '2018-09-23', '2018-09-23', NULL, NULL, NULL, '19 horas', 'as  09:30', 2, 98, 1, 135, 'Letícia Carvalho', 'Thaysa', 'Hercules pimentel', 'Ana Maria dos santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAURA CRISTINA', 'KARLA BISPO', 'SALETE CARVALHO', '5', '10', '20', '1', '2018-09-16 06:56:06', '2018-09-22 21:30:06'),
(60, 159, 'Maceió Tabuleiro', 'Pratagy', 132, '2018-09-23', 'Genival Santos', 'Roberto freitas', 'Genival Santos', 'João Vasconcelo', NULL, NULL, 'Presidente de estaca', 'Patriaca', NULL, NULL, 'Conferencia Geral', 'autossuficiência na pratica', 'curso BAE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', 'tabuleiro', 'Dia todo', NULL, NULL, '2018-10-06', '2018-09-27', '2018-10-20', NULL, NULL, NULL, 'as 19 :30', NULL, NULL, NULL, 1, 107, 171, 1, 'Leticia Carvalho', NULL, 'Everaldo', 'CICERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Viviane Talita', NULL, NULL, NULL, NULL, NULL, '2 Concelheira da primara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CONFERENCIA DA ALA PRATAGY', 'CONFERENCIA DA ALA PRATAGY', 'CONFERENCIA DA ALA PRATAGY', NULL, NULL, NULL, '1', '2018-09-16 07:12:05', '2018-09-23 11:02:12'),
(61, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-09-23', 'Bispo Bruno Rafael de Queiroz Barretto', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atividade de Integração', 'Show de Talentos (todas a alas convidadas)', 'Conferência Geral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Universitário', 'Capela Ben. Bentes', NULL, NULL, '2018-09-26', '2018-09-29', '2018-10-06', NULL, NULL, '19:30h', '19:30h', '13h', NULL, NULL, 42, 112, 168, 195, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Cledigilson Cauã Baracho', 'Laudeci Josefa dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edvaldo Pereira do Nascimento', 'Luiz da Rocha', '.', '.', NULL, NULL, 'Assistente de LMA', 'Apoio ao Líder de Patrimônio', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Crissia Maria dos Santos', 'Natércia Santos', 'Jailson Costa', '5', '10', '20', '1', '2018-09-23 10:20:28', '2018-09-23 10:25:13'),
(62, 159, 'Maceió Tabuleiro', 'Pratagy', 77, '2018-09-30', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, NULL, 'Devocional com Sister Aburto (2° Conselheira da presidência geral da Soc. Socorro)', 'Treinamento trimestral da liderança', 'Devocional do Acampamento 2019.', 'Conferência Mudial dia 06 e 07', NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió	Multiestaca	Todos os membros', 'Todo o os conselhos das ala e convidados da presidência', 'Pais, Lideres e Jovens da ORM.', 'na Ala pratagy', NULL, NULL, '2018-10-28', '2018-10-14', '2018-10-06', NULL, '19:30h', '17h', 'Às 16:00', NULL, 16, 110, 9, 14, 'Letícia Carvalho', 'Thayse', 'Jessika Lima', 'Lucas de Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sandra Lima', 'Alisson Araújo dos Santos', 'Roberto Freitas', '5', '10', '20', '1', '2018-09-29 22:39:47', '2018-10-14 08:02:22'),
(63, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-09-30', 'Bispo Bruno Rafael de Queiroz Barretto', 'Bispo Bruno Rafael de Queiroz Barretto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Batismos da Jennifer', 'Devocional da Obra Missionária', 'Minuto Missionário', 'Conferência Geral', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, 'Capela Ben. Bentes', NULL, '2018-09-30', '2018-09-30', '2018-09-30', '2018-10-06', NULL, '13h', '18h', 'Fátima Tenório', '13h', NULL, 12, 114, 199, 145, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Aline Gleyce Chagas Guedes dos Santos', 'Ellen Karine Brito Pereira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Damásio Alves de França Neto', 'Maria Clara Alves de França', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edvaldo Pereira do Nascimento', 'Wesley Breno dos Santos', 'Bispo Bruno Rafael de Queiroz Barretto', '5', '10', '20', '1', '2018-09-29 23:30:16', '2018-09-30 10:03:10'),
(64, 159, 'Maceió Tabuleiro', 'Pratagy', 69, '2018-10-14', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Devocional do Acampamento 2019.', 'Devocional com Sister Aburto (2° Conselheira da presidência geral da Soc. Socorro)', 'treinamento trimestral da liderança', 'Devocional do Jovens', NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Pais, Lideres e Jovens da ORM.', 'Multiestaca	Todos os membros', 'Sede da Estaca Maceió Tabuleiro', 'Ala Pratagy', NULL, '2018-10-14', '2018-10-25', '2018-10-28', '2018-11-04', NULL, 'Às 16:00', '19:30h', '17h', 'as 18 H', NULL, 12, 105, 1, 195, 'Leticia Carvalho', NULL, 'Jeiza Rafaela Silva de Souza', 'Ana Maria dos santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Veridiana da Silva Almeida', 'Marciria Gabryella Flores Lima Santos', 'Mikael Arthur Santos Gomes', 'Jéssika Lúcia dos Santos Lima', NULL, NULL, 'SOC SOC Professora', 'Missionária da Ala', 'Missionário da Ala', 'Segunda Conselheira da Primária', NULL, NULL, 'Everaldo', 'Alison', 'welson', 'michael', 'JOAO LIMA', NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-10-14 08:22:48', '2018-10-14 10:55:03'),
(65, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-10-14', 'Presidente Genival dos Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Devocional de Acampamento - Jovens e Responsáveis', 'Conselho de Ala', 'Noite de Integração', 'Devocional da Obra Missionária', NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Benedito Bentes', 'Capela Benedito Bentes', 'Sede da Estaca Tabuleiro', NULL, '2018-10-14', '2018-10-14', '2018-10-17', '2018-10-14', NULL, '16h', '18h', '20h', '?', NULL, 81, 117, 1, 71, 'Jaciara Gomes Costa', 'Gerson Bernardino do Vale Júnior', 'Valdenice Joaquim dos Santos Vieira', 'Élder Burton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-10-14 08:29:28', '2018-10-14 10:27:14'),
(66, 159, 'Maceió Tabuleiro', 'Pratagy', 72, '2018-10-21', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', 'Viviane Talita', NULL, NULL, 'Patriarca', 'Presidente da Primaria da Estaca', NULL, NULL, 'Devocional com Sister Aburto (2° Conselheira da presidência geral da Soc. Socorro)', 'treinamento trimestral da liderança', 'Devocional do Jovens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multiestaca	Todos os membros', 'estaca', 'Ala Pratagy', NULL, NULL, '2018-10-25', '2018-10-28', '2018-11-04', NULL, NULL, '19,30', '17 horas', 'as 18 H', NULL, NULL, 182, 112, 50, 137, 'Letícia Carvalho', 'Thayse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edinaldo Dutra', 'BISPO MAURICIO', NULL, '10', '20', '1', '2018-10-21 06:59:06', '2018-10-28 06:57:48'),
(67, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-10-21', 'Leonardo Aguir Freitas Lins', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Minuto Missionário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ruth Grazielle Lessa Coelho', NULL, NULL, NULL, NULL, 151, 105, 147, 75, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardinho do Vale Júnior', 'Ruth Grazielle Lessa Coelho', 'Simone Lucena de Santana Flores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leonardo Aguiar Freitas Lins', 'Élder Thiago', 'Adeilson Cruz da Silva', '5', '10', '20', '1', '2018-10-21 08:32:15', '2018-10-21 09:54:30'),
(68, 25, 'Maceió Tabuleiro', 'Pratagy', 68, '2018-10-28', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', 'Viviane Talita', NULL, NULL, 'Patriarca', 'Presidente da Primaria da Estaca', NULL, NULL, 'Halloween da ala', 'Noite de Integração', 'Treinamento trimestral da liderança', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'na ala pratagy', 'na ala pratagy', 'estaca', NULL, NULL, '2018-11-02', '2018-11-03', '2018-10-28', NULL, NULL, NULL, '19:00h', '19:00h', NULL, NULL, 168, 115, 140, 46, 'Letícia Carvalho', 'Thayse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Myckel Ramos da Silva', NULL, NULL, NULL, NULL, NULL, 'avançar no sarcerdocio  ( Mestre )', NULL, NULL, NULL, NULL, NULL, 'Alissson', 'Everaldo', 'Lucas Gabriel', NULL, NULL, NULL, 'Sister Hernandes', 'SISTER ROSARIO', 'JOÃO VASCONCELOS', '5', '10', '20', '1', '2018-10-28 07:00:01', '2018-10-28 10:46:16'),
(69, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-10-28', 'Pres. Genival dos Santos', 'Alexandre Carlos da Silva', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Minuto Missionário', 'Super Sábado', 'Acampamento do jovens', 'Recital Musical', 'Conferência de Estaca - Pres. Élder Dias', NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió Tabuleiro', NULL, 'Sede da Estaca - Capela Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, '2018-11-17', NULL, '2018-11-23', '2018-11-24', 'Jorge Luiz Flores Ferreira', '15h às 18h', 'Apoio dos membros - Serviços', '18h', '19h e 25/11/2018 às 10h', 50, 136, 136, 124, 'Sâmia Isabelle Bezerra Santos do Vale', 'Gerson Bernardino do Vale Júnior', 'Roberto Vieira da Silva', 'Mauríco Carlo de Almeida Brandão', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marco Gley Brandão', NULL, NULL, NULL, NULL, NULL, 'Líder de Patrimônio', NULL, NULL, NULL, NULL, NULL, 'Luiz da Rocha', NULL, NULL, NULL, NULL, NULL, 'Líder de Patrimônio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Simone Lucena de Santana Flores', 'Marcos Gley Brandão', 'Luiz Fernando dos Santos', '5', '10', '20', '1', '2018-10-28 10:41:58', '2018-10-28 10:41:58'),
(70, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-11-04', 'Presidente Genival dos Santos', 'Leonar Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Limpeza da capela', 'Super Sábado', 'Acampamento do jovens', 'Recital Musical', 'Conferência de Estaca - Pres. Élder Dias', NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Sede da Estaca Maceió Tabuleiro', NULL, 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, '2018-11-17', NULL, '2018-11-23', '2018-11-24', 'Mês de novembro', '15h às 18h', 'Apoio dos membros - Serviços', '18h', '19h e 25/11/2018 às 10h', 75, 115, 1, 20, 'Jaciara Gomes Costa', NULL, 'Jamerson da Silva', 'Maria de Fátima dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-11-04 01:34:08', '2018-11-04 11:32:49'),
(71, 159, 'Maceió Tabuleiro', 'Pratagy', 65, '2018-11-04', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Super Sábado', 'Conferência da estaca(Sessão Geral)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca	Jovens seminarista', 'estaca', NULL, NULL, NULL, '2018-11-17', '2018-11-25', NULL, NULL, NULL, '15h as 18h', '10 da manha', NULL, NULL, NULL, 70, 110, 1, 195, NULL, NULL, NULL, 'Jessika Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-11-04 07:46:00', '2018-11-11 08:06:48'),
(72, 159, 'Maceió Tabuleiro', 'Pratagy', 80, '2018-11-11', 'Bispo Mauricio Imbroisi', 'Caio', 'João Vasconcelos', 'Paulo jose bernadino dos santos', 'tonyone ferreira alves', NULL, 'Patriarca', 'sumo concelho', 'sumo concelho', NULL, 'Super Sábado', 'Conferência da estaca(Sessão Geral)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca	Jovens seminarista', 'estaca', NULL, NULL, NULL, '2018-11-17', '2018-11-25', NULL, NULL, NULL, '15h as 18h', '10 horas', NULL, NULL, NULL, 44, 114, 86, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paulo jose bernadino dos santos', 'Raul Lima', 'tonyone ferreira alves', '5', '10', NULL, '1', '2018-11-11 08:18:08', '2018-11-11 11:49:27'),
(73, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-11-11', 'Pres. Genival dos Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Limpeza da capela', 'Super Sábado', 'Recital Musical', 'Conferência da Estaca - Pres. Élder  Dias', NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, NULL, '2018-11-17', '2018-11-23', '2018-11-24', NULL, 'Mês de novembro', '15h às 18h', '18h', '19h e 25/11 às 10h', NULL, 171, 112, 180, 35, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardinho do Vale Jr', 'Joyce Ellen de Santana Florentino', 'Pedro Vieira da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ruth Grazielle Lessa Coelho', NULL, NULL, NULL, NULL, NULL, 'Secretária da Soc. de Socorro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Valdenice Joaquim dos Santos Vieira', 'Magna Rosicler da Silva Santos', 'Maria Crislayne dos Santos', '5', '10', '20', '1', '2018-11-11 09:33:40', '2018-11-11 11:01:22'),
(74, 41, 'Maceió Tabuleiro', 'Gurguri', 126, '2018-11-11', 'bispo cristiano', 'irmão paulo', 'juarez jaqueson de lima santos', NULL, 'sebastiao cicero oliveira lins', NULL, 'sumo conselho', NULL, 'sumo conselho', NULL, 'super sabado (para jovens seminaristas)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'na sede da estaca', NULL, NULL, NULL, NULL, '2018-11-17', NULL, NULL, NULL, NULL, 'das 15:00 as 17:00', NULL, NULL, NULL, NULL, 150, 117, 127, 14, 'evely', 'will  bethowen', 'Ana maria pereira dos santos', 'irmao sebastião (sumo conselho)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'irmão túlio', 'irmã alessandra', 'irmã dejina', '5', '10', '20', '1', '2018-11-11 11:21:36', '2018-11-11 12:45:54'),
(75, 159, 'Maceió Tabuleiro', 'Pratagy', 78, '2018-11-18', 'Roberto Freitas', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'excelência das Moças', 'concelho', 'Conferência da estaca (Sessão Geral)', 'SESSÃO SOLENE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pratagy', 'estaca', 'ASSOCIAÇÃO COMERCIAL - JARAGUÁ', NULL, '2018-11-18', '2018-11-18', '2018-11-25', '2018-12-03', NULL, '18:30', 'as 20 horas', 'as 10H', 'AS 14 HORAS', NULL, 197, 112, 1, 199, 'Leticia Carvalho', NULL, 'EVERALDO', 'Amon anacleto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Primaria', 'Primaria', 'Primaria', NULL, NULL, NULL, '1', '2018-11-18 11:29:08', '2018-12-02 09:39:48'),
(76, 24, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2018-11-18', 'BISPO FLAVIO FERREIRA VASCONCELOS', 'TIAGO MARINHO DE GUSMAO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'recital musical', 'conferencia da estaca(sessão adultos', 'conferencia ( sessão geral )', 'devocional da presidencia da estaca', 'devocional de natal da primaria', NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'sede da estaca', 'sede da estaca', 'seda da estaca', 'sede da estaca', '2018-11-23', '2018-11-24', '2018-11-24', '2018-12-02', '2018-12-09', '18 horas', '16 h e 19 h', '10 horas', '19 horas', '18 horas', 12, 104, 1, 9, 'SELENITA RIBEIRO DA SILVA', 'JOALISSON JOSE DA SILVA', 'tania cristina', 'tiago marinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luiz daniel de moura', 'samuel jose lourenco da silva', 'cleito coimbra de lucena', NULL, NULL, NULL, '1', '2018-11-18 12:27:56', '2018-11-18 12:30:42'),
(78, 159, 'Maceió Tabuleiro', 'Pratagy', 76, '2018-12-02', 'Roberto Freitas', 'caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Devocinal de natal da presidencia da estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', NULL, NULL, NULL, NULL, '2018-12-02', NULL, NULL, NULL, NULL, '19 H', NULL, NULL, NULL, NULL, 133, 113, 1, 80, 'Letícia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Geraldo Carvalho', 'joao vascocelo silva', 'salete carvalho', 'marcos caiano', 'tavares', NULL, '1 comselho da escola dominical', '2 conselho da escola dominical', 'profesora da escola dominical', '1 cocelheiro do quorum', '2 cocelheiro do quorum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2018-12-02 09:46:08', '2018-12-09 10:48:31'),
(79, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-12-02', 'Genival dos Santos', 'Leonardo Aguiar Freitas Lins', 'Romildo Lúcio dos Santos', 'Cícero Fábio Ferreira da Silva', 'Ademar Leandro Vasconcelos da Silva', NULL, 'Primeiro Conselheiro da Estaca', 'Segundo Conselheiro da Estaca', 'Sumo conselheiro da estaca', NULL, 'Devocional de natal da Presidência da Estaca', 'Excelência das Moças', 'Confraternização de Natal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Maceió Tabuleiro', 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, NULL, '2018-12-02', '2018-12-07', '2018-12-22', NULL, NULL, '18:30h', '19h', NULL, NULL, NULL, 70, 114, 1, 85, 'Jaciara Gomes Costa', 'Gerson Bernardino do Vale Jr', 'Edjane dos Santos Silva', 'Joyce Ellen de Santana Florentino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2018-12-02 11:36:25', '2018-12-02 13:16:25'),
(80, 24, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2018-12-02', 'BISPO FLAVIO FERREIRA VASCONCELOS', 'BISPO FLAVIO FERREIRA VASCONCELOS', 'manilson batista', 'casal ribeiro', NULL, NULL, 'sumo conselho', 'servicos familiares sud', NULL, NULL, 'caravana ao templo', 'devocional de natal', 'atividade de historia da familia', 'dia internacional da familia', NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'sede da estaca', 'sede da estaca farol', NULL, NULL, '2018-12-15', '2018-12-02', '2018-12-08', '2018-12-03', NULL, '19;00', 'as 18;00', 'as 16;00', 'as 14;00', NULL, 12, 61, NULL, 124, 'SELENITA RIBEIRO DA SILVA', 'JOALISSON', 'tassia pauliana', 'sammuel  jose lourenco da silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vera licia barros cavalcante', NULL, NULL, NULL, NULL, NULL, '2 conselheira sociedade de socorro', NULL, NULL, NULL, NULL, NULL, 'vera licia barros cavalcante', 'luciene silva santos', 'pollyane roberta cardoso  de firmino fysh', NULL, NULL, NULL, '1 conselheira da sociedade de socorro', '2 conselheira da sociedade de socorro', '1 conselheira da organizacao das mocas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TESTEMUNHOS', 'TESTEMUNHOS', NULL, NULL, NULL, NULL, '1', '2018-12-02 12:21:50', '2018-12-02 12:21:50'),
(81, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-12-09', 'Romildo Lucio dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Diogo Bandeira Ramalho', 'Ednalva Maria Pinto do Vale', NULL, NULL, 'Sumo Cons. da Estaca', 'Segunda conselheira - Soc. de Socorro da Estaca', NULL, NULL, 'Confraternização de Natal', 'Boas vindas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', NULL, NULL, NULL, NULL, '2018-12-22', NULL, NULL, NULL, NULL, '18h', 'Elder Cesário', NULL, NULL, NULL, 174, 117, 124, 134, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', 'Lucineide Alves dos Santos Lins', 'Pedro Vieira da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ednalva Maria Pinto do Vale', 'Diogo Bandeira Ramalho', 'Romildo Lucio dos Santos', '5', '10', '20', '1', '2018-12-09 02:23:15', '2018-12-09 13:18:50'),
(82, 159, 'Maceió Tabuleiro', 'Pratagy', 62, '2018-12-09', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', 'Manoela Messias', 'Claudia Angelica', 'Luziene Ferreira', 'Patriarca', 'Sumo conselho', 'Presidente da soc soc', '1 conselheira da soc soc', 'ATIVIDADE DA PRIMARIA', 'Confraternização de natal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'para todos pais e lideres (ESTACA)', 'na ala pratagy', NULL, NULL, NULL, '2018-12-09', '2018-12-14', NULL, NULL, NULL, '18 horas', '19:00h', NULL, NULL, NULL, 133, 107, 122, 75, 'Letícia Carvalho', NULL, 'EVERALDO', 'Antonio Henrique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edinaldo Vieira Dutra', NULL, NULL, NULL, NULL, NULL, 'LMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Luziene Silva Ferreira', 'Claudia Angelica', 'Manoela Messias', '5', '10', '20', '1', '2018-12-09 11:13:30', '2018-12-09 14:17:45'),
(83, 24, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2018-12-09', 'CICERO FABIO', 'TIAGO MARINHO DE GUSMAO', 'adriano ramos', 'casal ribeiro', 'cicero fabio', NULL, 'sumo conselho', 'servicos familiares sud', '2 conselheiro da estaca', NULL, 'devovional da primaria', 'caravana ao templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'sede da estaca', 'sede da estaca', NULL, NULL, '2018-12-09', '2018-12-15', '2018-12-22', NULL, NULL, '18 horas', 'as 19;00', NULL, NULL, NULL, 2, 114, NULL, NULL, 'SELENITA RIBEIRO DA SILVA', 'JOALISSON JOSE DA SILVA', 'tania cristina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carolinne alves ribeiro', NULL, NULL, NULL, NULL, NULL, 'secretaria das mocas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'apresentacao da primaria', NULL, NULL, NULL, NULL, NULL, '1', '2018-12-09 12:32:03', '2018-12-09 12:32:03'),
(84, 159, 'Maceió Tabuleiro', 'Pratagy', 57, '2018-12-16', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Reuniao especial (conjunto Benedito e pratagy )', 'formatura dos seminarista e instituto', 'treinamento para os consultores historia da familia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'na ALA', 'no Farol', 'faro', NULL, NULL, '2018-12-23', '2018-12-16', '2018-12-16', NULL, NULL, NULL, 'As 19:00 Hs', '15 horas', NULL, NULL, 121, 112, 123, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Veridiana da Silva Almeida', NULL, NULL, NULL, NULL, NULL, 'professora da escola dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joão vascocelo', 'VERÔNICA VASCONCELOS', 'DAVI BISPO', '5', '10', '20', '1', '2018-12-16 10:59:59', '2018-12-16 13:56:13'),
(85, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-12-16', 'Bispo Luiz Fernando dos Santos', 'Bispo Luiz Fernando dos Santos', 'Diogo Bandeira Ramalho', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Confraternização de Natal', 'Ensaios - Cantata de Natal', 'Atividade Natal Feliz - Doações para pessoas Carentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', 'Capela Ben. Bentes', 'Sede da Estaca Tabuleiro', NULL, NULL, '2018-12-22', NULL, '2018-12-22', NULL, NULL, '18h', 'Quarta e sexta 19h', '9h', NULL, NULL, 123, 113, 122, 134, 'Jaciara Gomes Costa', 'Gerson Bernardino do Vale Jr', 'Luana de Paula Rocha Silva', 'Luiz da Rocha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suzana Maria Brito', 'Jaciara Gomes Costa', NULL, NULL, NULL, NULL, 'Presidente da Primária', 'Segunda Conselheira das Moças', NULL, NULL, NULL, NULL, 'Jaciara Gomes Costa', 'Ianara dos Santos Cordeiro da Silva', 'Ruth Grazielle Lessa Coelho', NULL, NULL, NULL, 'Presidente da Primária', 'Primeira Conselheira das Moças', 'Regente da ala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gabriele Adelaide Lisboa dos Santos', 'Ruth Grazielle Lessa Coelho', 'Paula Elizângela Gomes da Silva', '5', '10', '20', '1', '2018-12-16 11:26:34', '2018-12-16 13:40:09'),
(86, 159, 'Maceió Tabuleiro', 'Pratagy', 73, '2018-12-23', 'Bispo Mauricio Imbroisi', 'caio Henriqu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-12-16 13:56:59', '2019-01-06 10:21:43'),
(87, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2018-12-23', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, 'Sumo conselho da estaca', NULL, NULL, NULL, 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18:30h da Ala Benedito Bentes', NULL, NULL, NULL, NULL, '2019-01-20', NULL, NULL, NULL, NULL, '18h sai da Ala Gurguri', NULL, NULL, NULL, NULL, 121, 112, 133, 126, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', 'Geisa Rafaela Silva de Souza', 'Alisson Araújo dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Magna Rosicler da Silva Santos', 'Ianara dos Santos Cordeiro da Silva', 'Passar para ala Pratagy', NULL, NULL, NULL, 'Prof. da Soc. de Socorro', 'Primeira conselheira das Moças', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'José Roberto Calvacanti de Freitas', 'Bispo Luiz Fernando dos Santos', 'Presidente Genival dos Santos', '5', '10', '20', '1', '2018-12-23 10:46:36', '2018-12-23 12:57:39'),
(88, 24, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2018-12-23', 'CICERO FABIO', 'bispo pedro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'caravana ao templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', NULL, NULL, NULL, NULL, '2018-01-12', NULL, NULL, NULL, NULL, '19;00', NULL, NULL, NULL, NULL, 77, 102, 126, 133, 'azailde de jesus santana', 'JOALISSON JOSE DA SILVA', 'tiago marinho de gusmao', 'givaldo dos santos costa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bispo cicero pedro', 'bispo flavio vascocelos', 'cicero fabio', NULL, NULL, NULL, '1', '2018-12-23 11:52:51', '2018-12-23 11:52:51'),
(89, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-01-06', 'Presidente Genival dos Santos', 'Bispo Luiz Fernando dos Santos', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo conselho da estaca', NULL, NULL, NULL, 'Jogos Inter-religiosos da Juventude', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Na orla da Pajuçara em frente ao Restaurante Terraço', NULL, NULL, NULL, NULL, '2019-01-19', NULL, NULL, NULL, NULL, '7:30h', NULL, NULL, NULL, NULL, 2, 110, 1, 167, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', 'Fátima Maria Sabino Tenório', 'Edvaldo Pereira do Nascimento', 'Ícaro Santos do Vale', NULL, NULL, 'Gerson Bernardino do Vale Júnior', NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jailton Costa', NULL, NULL, NULL, NULL, NULL, 'Líder da obra missionária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2019-01-06 01:31:47', '2019-01-06 12:59:00'),
(90, 159, 'Maceió Tabuleiro', 'Pratagy', 78, '2019-01-06', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 115, 1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-01-06 10:30:07', '2019-01-13 02:30:23'),
(91, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-01-13', 'Presidente Romildo Lucio dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Rosival Barbosa dos Santos', NULL, NULL, NULL, 'Sumo conselho da estaca', NULL, NULL, NULL, 'Devocional Mundial Para Jovens Adultos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?', NULL, NULL, NULL, NULL, '2019-01-13', NULL, NULL, NULL, NULL, '21h', NULL, NULL, NULL, NULL, 5, 115, 26, 44, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Viviane Talita Alves de Lima Silva', NULL, 'Rosival Barbosa dos Santos', NULL, NULL, NULL, '1', '2019-01-13 02:45:25', '2019-01-13 02:45:25'),
(92, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-01-13', 'Romildo dos Santos', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, 112, 160, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana maria dos santos', 'Bruna Fragoso de Melo', 'Railda dos Santos', 'Danielle Priscilla dos Santos Freitas', NULL, NULL, 'Lider de berçario', 'Lider de berçario', 'Professora do CTR', 'Assistente de classe', NULL, NULL, 'Karla Bispo', NULL, 'Danielle Priscilla dos Santos Freitas', 'Bruna Fragoso de Melo', NULL, NULL, 'Professora', NULL, 'Professora', 'Professora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Valgeon dos Santos', 'Romildo Lucio dos Santos', NULL, NULL, NULL, '1', '2019-01-13 11:16:09', '2019-04-14 10:22:55'),
(93, 38, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-01-20', 'Pres. Genival dos Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-02-09', NULL, NULL, NULL, NULL, 'Saída dia 08 fev às 18h', NULL, NULL, NULL, NULL, 12, 112, 168, 136, 'Ruth Grazielle Lessa Coelho', NULL, 'Vitória Karoline Vieira de Oliveira', 'Pedro Vieira da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucineide Alves dos Santos Lins', NULL, NULL, NULL, NULL, NULL, 'Professora do CTR', NULL, NULL, NULL, NULL, NULL, 'Jean Pierre Torres de Souza', 'Lucas Fernando Cavalvante Sarmento', NULL, NULL, NULL, NULL, 'Presidente da Escola Dominical', 'Líder dos Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder', 'Elder', 'Gardênia Lisbôa dos Santos', '5 min.', '8 min', '15 min.', '1', '2019-01-19 18:40:54', '2019-01-20 13:02:17'),
(94, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-01-20', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', 'Raul Lima', NULL, NULL, 'Patriarca', 'Sumo conselhos', NULL, NULL, 'Reunião com as presidências dosquóruns de elderes da estaca', 'Reunião com os bispados da estaca e secretários', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', 'estaca', NULL, NULL, NULL, '2019-01-26', '2019-01-26', NULL, NULL, NULL, '16h as 17:30', '18h as 20h', NULL, NULL, NULL, 1, 1, 1, 1, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fabiana barbosa', 'poliana carvalho pimetel', NULL, NULL, NULL, NULL, 'assistência de classe da primaria', 'líder do berçário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marciria Gabriela', 'Raul lima', 'Geraldo carvalho', NULL, NULL, NULL, '1', '2019-01-20 12:00:17', '2019-04-14 10:22:48'),
(95, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-01-27', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Reunião com as presidências dosquóruns de elderes da estaca', 'Reunião com os bispados da estaca e secretários', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', 'estaca', NULL, NULL, NULL, '2019-01-27', '2019-01-27', NULL, NULL, NULL, '16h as 17:30', '18h as 20h', NULL, NULL, NULL, 88, 107, 135, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Welson Monteiro', 'Jessika Lima', 'Mauricio Imbroisi', '5', '10', '20', '1', '2019-01-27 00:45:39', '2019-04-14 10:34:43'),
(96, 358, 'Maceió Pajuçara', 'Antares', 0, '2019-01-25', 'teste', 'teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-01-30 15:16:03', '2019-01-30 15:16:03');
INSERT INTO `sacramental_meetings` (`id`, `user_id`, `stake`, `ward`, `frequencia`, `date`, `presidida`, `dirigida`, `rec_nome1`, `rec_nome2`, `rec_nome3`, `rec_nome4`, `rec_cham1`, `rec_cham2`, `rec_cham3`, `rec_cham4`, `anun_1`, `anun_2`, `anun_3`, `anun_4`, `anun_5`, `pub_anun_1`, `pub_anun_2`, `pub_anun_3`, `pub_anun_4`, `pub_anun_5`, `local_anun_1`, `local_anun_2`, `local_anun_3`, `local_anun_4`, `local_anun_5`, `data_anun_1`, `data_anun_2`, `data_anun_3`, `data_anun_4`, `data_anun_5`, `hora_anun_1`, `hora_anun_2`, `hora_anun_3`, `hora_anun_4`, `hora_anun_5`, `hino1`, `hino2`, `hino3`, `hino4`, `regente`, `pianista`, `oracao1`, `oracao2`, `bencao1`, `bencao2`, `bencao3`, `abencoador1`, `abencoador2`, `abencoador3`, `oficio1`, `oficio2`, `oficio3`, `converso1`, `converso2`, `converso3`, `converso4`, `converso5`, `confirmador1`, `confirmador2`, `confirmador3`, `confirmador4`, `confirmador5`, `oficio4`, `oficio5`, `oficio6`, `oficio7`, `oficio8`, `desob_nome1`, `desob_nome2`, `desob_nome3`, `desob_nome4`, `desob_nome5`, `desob_nome6`, `desob_cham1`, `desob_cham2`, `desob_cham3`, `desob_cham4`, `desob_cham5`, `desob_cham6`, `apoio_nome1`, `apoio_nome2`, `apoio_nome3`, `apoio_nome4`, `apoio_nome5`, `apoio_nome6`, `apoio_cham1`, `apoio_cham2`, `apoio_cham3`, `apoio_cham4`, `apoio_cham5`, `apoio_cham6`, `sacerdote1`, `sacerdote2`, `diacono1`, `diacono2`, `diacono3`, `diacono4`, `discursante1`, `discursante2`, `discursante3`, `tempo1`, `tempo2`, `tempo3`, `ativo`, `created_at`, `updated_at`) VALUES
(97, 56, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-02-03', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo conselho da estaca', NULL, NULL, NULL, 'Caravana ao Templo', 'Treinamento para os secretários das organizações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Templo de Recife', 'Capela do Ben. Bentes', NULL, NULL, NULL, '2019-02-09', '2019-02-03', NULL, NULL, NULL, NULL, '15:30h', NULL, NULL, NULL, 71, 113, 1, 183, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', 'Maria de Fátima dos Santos', 'José Ronaldo de Oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '.', '.', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2019-02-03 02:09:14', '2019-02-03 13:01:13'),
(98, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-02-03', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Cara a Cara - JAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Todos Jovens Adultos Solteiro de 18 á 30 anos.', NULL, NULL, NULL, NULL, '2019-02-10', NULL, NULL, NULL, NULL, 'as 16:00', NULL, NULL, NULL, NULL, 3, 107, 1, 84, 'Leticia', NULL, 'Hericles', 'hercules', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-02-03 09:47:24', '2019-04-14 10:34:37'),
(99, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-02-10', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', 'Manoel Messias da silva', 'manilson batista santos', NULL, 'Patriarca', 'Sumo concelho', 'Sumo conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 101, 147, 41, 'Leticia Carvalho', NULL, 'Everaldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nataly Maria de Lima Santos', 'Maura Cristina Vital Costa', NULL, NULL, NULL, NULL, 'Lider de Musica da Primaria', 'Lider de Musica do Berçario', NULL, NULL, NULL, NULL, NULL, NULL, 'Pedro Imbroisi', NULL, 'welson', NULL, 'Jeiza Rafaela Silva', 'Manoel Messias da silva', 'manilson batista santos', '5', '10', '20', '1', '2019-02-10 09:59:30', '2019-04-14 10:34:28'),
(100, 38, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-02-10', 'bispo fernando', 'bispo fernando', 'adriano ramos alves', 'valgeom de jesus dos santos', NULL, NULL, 'sumo conselheiro da estaca', 'Pres. dos Rapazes da Estaca', NULL, NULL, 'curso de Autossuficiência', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Benedito Bentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'procurar irmã gardênia', NULL, NULL, NULL, NULL, 174, 101, 186, 188, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Jr', 'David de Oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Valgeon dos Santos', 'Adriano Ramos Alves', NULL, '10', '10', '1', '2019-02-10 13:05:03', '2019-02-10 13:05:03'),
(101, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-02-17', 'GENIVALDO', 'Caio Henrique', 'João Vasconcelos', NULL, 'GENIVALDO', NULL, 'Patriarca', NULL, 'Presidente da estaca', NULL, 'Convenção de Professores Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', NULL, NULL, NULL, NULL, '2019-03-10', NULL, NULL, NULL, NULL, '15:00 as 17:30', NULL, NULL, NULL, NULL, 151, 106, 57, 199, 'Leticia', NULL, 'Lucas', 'ANGELA DUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pedro Imbroisi', 'davi bispo', 'edinaldo dutra', '5', '10', '20', '1', '2019-02-17 10:09:55', '2019-04-14 10:34:18'),
(102, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-02-17', 'Bispo Luiz Fernando dos Santos', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Devocional Acelerar a Obra Missionária', 'Acampamento O.R.M. da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', NULL, NULL, NULL, NULL, '2019-02-17', '2019-03-02', NULL, NULL, NULL, '16:00h', NULL, NULL, NULL, NULL, 145, 110, 166, 15, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', 'Maurício Carlos de Almeida Brandão', 'Ianara Cordeiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerson Bernardinho do Vale Júnior', NULL, 'Gerson Bernardino do Vale', '5', NULL, '15', '1', '2019-02-17 12:46:43', '2019-02-17 12:55:00'),
(103, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-02-24', 'Bispo Mauricio Imbroisi', 'Roberto Freitas', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Devocional Presidente do templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca do Farol', NULL, NULL, NULL, NULL, '2019-02-24', NULL, NULL, NULL, NULL, '19:30', NULL, NULL, NULL, NULL, 171, 112, 183, 81, 'Leticia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'João Pedro', 'Gabriela imbroisi', 'Roberto Freitas', '5', '10', NULL, '1', '2019-02-17 13:35:02', '2019-04-14 10:34:11'),
(104, 38, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-02-24', 'Bispo Luiz Fernando dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Caio Victor Ciriaco da Silva', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Devocional Especial Com pres. do Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Maceió', NULL, NULL, NULL, NULL, '2019-02-24', NULL, NULL, NULL, NULL, '19;30', NULL, NULL, NULL, NULL, 165, 115, 167, 83, 'Ruth Grazielle Lessa Coelho', NULL, 'Valdenice Joaquim dos Santos Vieira', 'Mauricio Carlos de Almeida Brandão', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mauricio', NULL, NULL, NULL, NULL, NULL, NULL, 'Paula Elizângela Gomes da Silva', 'Luiz Fernando dos Santos', NULL, '15', '10', '1', '2019-02-24 12:40:46', '2019-02-24 12:57:26'),
(105, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-03-03', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 114, 134, 97, 'Leticia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alex Veras Silva', NULL, NULL, NULL, NULL, 'Roberto Freitas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sister', 'Lucas de Lima', 'Alisson', '5', '10', '20', '1', '2019-02-24 13:22:58', '2019-04-14 10:22:40'),
(106, 24, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2019-03-03', 'Bispo Flávio Vasconcelos', 'Tiago marinho de gusmao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana ao templo', 'Convenção de Professores Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Templo', 'Estaca', NULL, NULL, NULL, '2019-03-09', '2019-03-10', NULL, NULL, NULL, '18 horas', NULL, NULL, NULL, NULL, 9, 1, 16, 72, NULL, NULL, 'Antônio brasiliano de Melo neto', 'Marlene de lima Firmino lopes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tassia paulianna Alves da Silva marinho', NULL, NULL, NULL, NULL, NULL, 'Professora da escola dominical  (jovens)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder oliveira', 'Bispo Flávio Vasconcelos', 'Joallison José da silva', '5', '10', '10', '1', '2019-03-03 03:23:59', '2019-03-03 03:35:22'),
(107, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 95, '2019-03-03', 'Pres. Genival dos Santos', 'Fernando Santos', 'Genival dos Santos', NULL, NULL, NULL, 'Pres. da Estaca', NULL, NULL, NULL, 'Caravana ao Templo', 'Conferência da ala Benedito Bentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Benedito Bentes', 'Capela Ben. Bentes', NULL, NULL, NULL, '2019-03-09', '2019-03-03', NULL, NULL, NULL, '18h', '10:10', NULL, NULL, NULL, 9, 101, 142, 89, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardinho do Vale Júnior', 'Natércia Santos', 'José Ronaldo de Oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerson Bernardinho do Vale Júnior', NULL, 'Ademar Leandro Vasconcelos da Silva', '5', NULL, '20', '1', '2019-03-03 12:58:18', '2019-03-17 14:04:23'),
(108, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-03-10', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Convenção de Professores Escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-03-10', NULL, NULL, NULL, NULL, '16:00 as 17:30', NULL, NULL, NULL, NULL, 70, 107, 1, 71, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-03-10 09:12:19', '2019-04-14 10:22:13'),
(109, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 87, '2019-03-10', 'Bispo Luiz Fernando dos Santos', 'Alexandre Carlos da Silva', 'Genival dos Santos', NULL, NULL, NULL, 'Pres. da Estaca', NULL, NULL, NULL, 'Conferência da Ala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Benedito Bentes', NULL, NULL, NULL, NULL, '2019-03-31', NULL, NULL, NULL, NULL, '10:10', NULL, NULL, NULL, NULL, 37, 105, 1, 196, 'Ruthe Graziela', NULL, 'Rita de Cassia de Almeida', 'Jaciara Gomes de Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Walission Barbosa Lemos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2019-03-10 13:04:19', '2019-04-02 22:32:20'),
(110, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-03-17', 'bispo Mauricio', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 107, 155, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'paulo jose bernardino dos santos', 'Rafael  de souza Gomes', NULL, '5', '10', NULL, '1', '2019-03-17 11:54:36', '2019-04-14 10:22:07'),
(111, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-03-24', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Encontro de Coros da Primária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'estaca', NULL, NULL, NULL, NULL, '2019-03-31', NULL, NULL, NULL, NULL, '15:00 as 16:30', NULL, NULL, NULL, NULL, 3, 101, 166, 197, 'Leticia', 'Thaise', 'alisson araujo dos santos', 'Jessika Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joao Pedro', 'michael arthur gomes', 'Pedro imbroisi', 'Lucas Gabriel', 'Welson da silva', 'gabriel pimentel', 'DAVI BISPO', 'DAVI BISPO', 'Mauricio Imbroisi', '5', '10', '20', '1', '2019-03-17 12:48:36', '2019-04-14 10:22:01'),
(112, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 86, '2019-03-17', 'Bispo Fernando Santos', 'Fernando Santos', 'Vitor Ciriaco', 'Maniuson', NULL, NULL, 'Sumo conselho', 'Sumo conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 110, 166, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manilson', NULL, 'Vitor Ciriaco', NULL, NULL, NULL, '1', '2019-03-17 14:07:53', '2019-03-17 14:07:53'),
(113, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 88, '2019-03-24', 'Luiz Fernando dos Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conferência da ala Benedito Bentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ala Benedito Bentes', NULL, NULL, NULL, NULL, '2019-03-31', NULL, NULL, NULL, NULL, '10:10', NULL, NULL, NULL, NULL, 12, 112, 26, 147, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Junior,', 'Bianca Carolinny Lessa Moura', 'Maria de Fatima dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edson', 'Elaine', 'Welton', 'Isaac', 'Nadja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Genilson Lisboa dos Santos', NULL, 'Jean Pierre Torres de 	Souza', '15', NULL, '15', '1', '2019-03-24 10:07:14', '2019-04-02 22:25:41'),
(114, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-03-31', 'Genivaldo', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 113, 171, 9, 'Leticia Carvalho', 'thaysa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Felipe', 'Mauricio Imbroisi', 'Gnivaldo', NULL, NULL, NULL, '1', '2019-03-30 11:11:02', '2019-03-31 11:30:10'),
(115, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 143, '2019-03-31', 'Pres. Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Genival dos Santos', 'Romildo Lucio dos Santos', 'Cícero Fábio Ferreira da Silva', 'Sumos Conselheiros', 'Pres. da Estaca', '1º Conselheiro da Estaca', '2º Conselheiro da Estaca', 'Reconhecer todos', 'Conferência Geral da Igreja 1ª Sessão de Sábado das 13:00 às 15:00 e 2ª Sessão de 17:00 às 19:00', 'Encontro de Coros da Primária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito. Bentes', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2019-04-06', '2019-03-31', NULL, NULL, NULL, NULL, '15:00 às 16:30', NULL, NULL, NULL, 81, 101, 50, 62, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', 'Marcos Glei Brandão', 'Simone Lucena de Santana Flores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jeniffer Laynne Duarte Lopes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Fernando Santos', NULL, 'Presidente Genival dos Santos', '5', NULL, '15', '1', '2019-03-31 12:22:51', '2019-04-02 22:23:41'),
(116, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-04-14', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 104, 1, 43, 'Leticia', 'Thaise', NULL, NULL, 'Luiz paulo Imbroisi maciel', 'Guilherme de almeida rodrigues caiano', NULL, 'Bispo Mauricio Imbroisi', 'marcos sergio rodrigues caiano', NULL, 'Bispo', 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-04-14 10:31:42', '2019-04-14 10:39:53'),
(117, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 98, '2019-04-14', 'Pres. Genival dos Santos', 'Bispo Luiz Fernando dos Santos', 'Pres. Genival dos Santos', NULL, NULL, NULL, 'Presidente da Estaca Tabuleiro', NULL, NULL, NULL, 'Treinamento Trimestal da liderança da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-04-14', NULL, NULL, NULL, NULL, '16:00hrs', NULL, NULL, NULL, NULL, 150, 115, 1, 194, 'Ruth Grazielle Lessa Coelho', 'Gerson do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Erika de Morais Silva Pereira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-04-14 12:30:31', '2019-06-02 19:30:18'),
(118, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 97, '2019-04-21', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Presidente Genival dos Santos', NULL, NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 99, 14, 85, 'Ruth Grazielle Coelho', NULL, 'Marta Rejane Ribeiro de Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Natércia Santos', 'Leonardo Aguiar Freitas Lins', NULL, NULL, NULL, NULL, 'Presidente da Organização das Moças', 'Presidente da Organização dos Rapazes', NULL, NULL, NULL, NULL, 'Ianara Cordeiro dos Santos', 'Gerson Bernardino do Vale', 'José Ronaldo de Oliveira', NULL, NULL, NULL, 'Presidente da Organização das Moças', 'Presidente da Organização dos Rapazes', '1º Conselheiro da Organização dos Rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Beltran', 'Alexandre Carlos da Silva', NULL, '5 minutos', '15 minutos', '1', '2019-04-20 13:15:42', '2019-04-28 10:41:54'),
(119, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-04-21', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-11', NULL, NULL, NULL, NULL, 'procure presidente Álisson', NULL, NULL, NULL, NULL, 12, 103, 186, 61, 'Leticia', 'Thaise', 'Leticia carvalho', 'daniela santos de oliveira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juliene  silva de almeida caiano', 'nataly maria de lima santos', 'Hercules Moreira Pimetel', 'Ana Luiza dos santos silva', NULL, NULL, '2 concelhera da primaria', 'lider de musica', '1 cocelheiro do rapazes', 'presidente da SOC SOC', NULL, NULL, 'Juliene  silva de almeida caiano', 'jeiza rafaela silva de souza /  daniela santos de oliveira', 'klecia poliana lima da silva Chrysotomo', 'Janderson leite silva / ewerton chrysostomo sousa', NULL, NULL, 'presidente da SOC SOC', 'jeiza 1 conelheira   /  daniela 2 cocelheira', 'secretaria soc soc', '1 concelheiro do rapazes / 2 concelheiro do rapaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Welson da silva monteiro', 'jeiza rafaela silva de souza', 'Geraldo Carvalho', '5', '10', '20', '1', '2019-04-21 01:22:40', '2019-04-21 11:49:32'),
(120, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 94, '2019-04-28', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Paulo José Bernardino Santos', NULL, NULL, NULL, 'Sumo Conselho da Estaca', NULL, NULL, NULL, 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10', NULL, NULL, NULL, NULL, '18:00h', NULL, NULL, NULL, NULL, 193, 103, 2, 41, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', 'Davi José da Silva', 'Emily Raquel Gomes Moreira Fernandes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria Crislayne dos Santos', 'Ruth Grazielle Lessa Coelho', NULL, NULL, NULL, NULL, '2ª Conselheira da Primária', 'Secretária da Sociedade de Socorro', NULL, NULL, NULL, NULL, 'Maria Crislayne dos Santos', 'Elisabeth Lessa Coelho', 'Luciano Roberto da Silva Filho', NULL, NULL, NULL, '2ª Conselheira da Organização das Moças', 'Secretária da Sociedade de Socorro', '1º Conselheiro da Organização dos Rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marise Barbosa Oliveira da Silva', NULL, 'Marcial Ferreira de Lima', '5 minutos', NULL, '15 minutos', '1', '2019-04-28 10:19:45', '2019-05-05 10:04:36'),
(121, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-04-28', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Caravana de 11/05/2019 ------- Vagas: 0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 115, 135, 136, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAILDA FIRMINDO', 'UZINEIDE SANTIAGO DE MELO', NULL, NULL, NULL, NULL, 'Lider de Musica da Primaria', '2 concelheiro DA PRIMARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sister vasquez', NULL, 'Bispo Mauricio Imbroisi', '5', NULL, '20', '1', '2019-04-28 10:47:55', '2019-04-28 11:54:52'),
(122, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-05-05', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'batismo do Jean hoje a tarde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'capela pratagy', NULL, NULL, NULL, NULL, '2019-05-05', NULL, NULL, NULL, NULL, 'Às 16:00', NULL, NULL, NULL, NULL, 71, 112, 1, 80, 'Leticia', NULL, NULL, 'Jessika Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dorgival Domingos de Oliveira,', NULL, NULL, NULL, NULL, NULL, 'receber sacerdócio aronico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-05-05 09:42:26', '2019-05-05 11:47:30'),
(123, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 89, '2019-05-05', 'Presidente Genival dos Santos', 'Bispo Fernando dos Santos', 'Presidente Genival dos Santos', NULL, NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', NULL, NULL, NULL, 'Caravana ao Templo', 'Devocional História da Família', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela Benedito Bentes', NULL, NULL, NULL, '2019-05-10', '2019-05-19', NULL, NULL, NULL, '18:00h', '19:30', NULL, NULL, NULL, 195, 101, 1, 151, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', 'Marcos Glei Brandão', 'Rita de Cássia de Almeida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-05-05 10:03:09', '2019-05-13 02:35:06'),
(124, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-05-12', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193, 115, 42, 199, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pedro Imbroisi', 'LUCAS GABRIEL', 'welson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-05-12 10:03:56', '2019-05-12 11:49:18'),
(125, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 103, '2019-05-12', 'Bispo Fernando Santos', 'Ademar Leandro Vasconcelos da Silva', 'Paulo José Bernardino Santos', 'José Antonio Silva dos Santos', NULL, NULL, 'Sumo Conselho', 'Sumo Conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, 147, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', 'Albert', 'Jamerson da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paulo José Bernardino Santos', NULL, 'José Antonio Silva dos Santos', '5', NULL, '15', '1', '2019-05-13 02:42:48', '2019-05-13 02:42:48'),
(126, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-05-19', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 101, 186, 191, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'irla pimentel', 'leticia carvalho', 'alisson', '5', '10', '20', '1', '2019-05-19 08:20:19', '2019-05-19 08:56:35'),
(127, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 98, '2019-05-19', 'Bispo Fernando Santos', 'Alexandre Carlos da Silva', 'José', NULL, NULL, NULL, 'Sumo Conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 114, 160, 145, 'Jaciara', 'Elder Mansfield', 'Roberto Vieira da Silva', 'Sâmia Isabelle Bezerra Santos do Vale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jamerson da Silva', NULL, 'Maria Crislayne dos Santos', '5', NULL, '15', '1', '2019-05-21 02:50:41', '2019-05-21 02:50:41'),
(128, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 91, '2019-05-26', 'Bispo Fernando Santos', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conferência Geral do Sacerdócio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-06-02', NULL, NULL, NULL, NULL, '16:00', NULL, NULL, NULL, NULL, 12, 103, 180, 153, 'Jaciara Gomes de Costa', 'Elder Mansfield', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ianara dos Santos Cordeiro da Silva', NULL, 'Ademar Leandro Vasconcelos da Silva', '5', NULL, '15', '1', '2019-05-21 02:53:40', '2019-06-02 06:25:44'),
(129, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-05-26', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 115, 153, 41, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MIKAEL ARTHUR', 'DANIEA OLIVEIRA', 'CAIO HENRIQUE', '5', '10', '20', '1', '2019-05-26 07:45:18', '2019-05-26 08:51:30'),
(130, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 98, '2019-06-02', 'Presidente Genival dos Santos', 'Alexandre Carlos da Silva', 'Presidente Genival dos Santos', NULL, 'Ednalva Maria Pinto do Vale', NULL, 'Presidente da Estaca Maceió Tabuleiro', NULL, '1ª Conselheira da Sociedade de Socorro da Estaca', NULL, 'Reunião Geral do Sacerdócio da Estaca (Hoje)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-06-02', NULL, NULL, NULL, NULL, '16:00 - 18:00', NULL, NULL, NULL, NULL, 195, 114, 1, 85, 'Jéssica de Holanda Porto dos Santos', 'Elder Mansfield', NULL, NULL, 'Benício do Vale Vasconcelos', NULL, NULL, 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, 'Élder', NULL, NULL, 'João Raimundo dos Santos', NULL, NULL, NULL, NULL, 'Marcial Ferreira de Lima', NULL, NULL, NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, 'Valdenice Joaquim dos Santos Vieira', 'Maria de Fátima dos Santos', NULL, NULL, NULL, NULL, 'Professora da Primária', 'Secretária Adjunta da Sociedade de Socorro', NULL, NULL, NULL, NULL, 'Valdenice Joaquim dos Santos Vieira', 'Maria de Fátima dos Santos', 'Walison Barbosa Lemos', 'Ellen Karine Brito Pereira', NULL, NULL, '2ª Conselheira da Primária', 'Professora da Primária', 'Assistente do Líder de Patrimônio da Capela', 'Professora da Escola Dominical - Jovens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-06-02 06:36:11', '2019-06-02 19:30:32'),
(131, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-06-02', 'Imbroisi, Mauricio Fernando Dos Santos', 'Silva, Caio Henrique Da', 'João Vasconcelos', NULL, NULL, NULL, 'partriaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 112, 1, 151, 'Leiticia carvalho', NULL, 'Maria Luzia Cassia da Silva Nascimento', 'Alisson Araújo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paolo Moroni Pari Ataulluco,', 'Maria Luzia Cassia da Silva Nascimento', NULL, NULL, NULL, NULL, 'pianista do coral', 'Regente do Coral', NULL, NULL, NULL, NULL, 'Welson', 'Pedro Imbroisi', NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-06-02 07:18:59', '2019-06-02 08:53:31'),
(132, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 91, '2019-06-09', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Presidente Genival dos Santos', 'Adeílson Cruz da Silva', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho', NULL, NULL, 'Conferência da Estaca', 'Entrevistas para recomendação de templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', 'Capela Benedito Bentes', NULL, NULL, NULL, '2019-06-16', '2019-06-12', NULL, NULL, NULL, '10:00', '19:00', NULL, NULL, NULL, 9, 113, 182, 199, 'Jaciara Gomes de Costa', 'Elder Mansfield', 'Isac Pereira da Silva', 'Maria Crislayne dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Antônio Alves Pereira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'João Raimundo dos Santos', NULL, NULL, NULL, NULL, NULL, 'Sacerdócio Aarônico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adeílson Cruz da Silva', NULL, 'Presidente Genival dos Santos', '5', NULL, '15', '1', '2019-06-08 19:14:15', '2019-06-09 13:54:30'),
(133, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-06-09', 'Presidente GENIVALDO', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ala pratagy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 114, 167, 97, 'Leticia Carvalho', 'Paolo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pedro Imbroisi', 'Paolo Moroni', 'welson', 'michael', 'Manilson Batista', 'Presidente GENIVALDO', NULL, NULL, NULL, NULL, '1', '2019-06-09 08:03:23', '2019-06-09 08:24:28'),
(134, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 82, '2019-06-23', 'Bispo Fernando Santos', 'Bispo Luiz Fernando dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Domingo do Amigo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', NULL, NULL, NULL, NULL, '2019-06-30', NULL, NULL, NULL, NULL, '10:00', NULL, NULL, NULL, NULL, 140, 117, 165, 147, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sâmia Isabelle Bezerra Santos do Vale', 'Antonio Alves Pereira', 'Alisson', NULL, NULL, NULL, 'Líder de Música da Primária', 'Sacerdócio Aarônico - Sacerdote', 'Líder de Patrimônio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Crissia Maria Dos Santos', NULL, 'Jaciara Gomes de Costa', '5', NULL, '15', '1', '2019-06-22 14:21:26', '2019-06-23 16:27:05'),
(135, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-06-23', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 113, 44, 85, 'Leticia', 'Paolo Moroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'welson da silva monteiro', 'ewerton chrysostomo sousa', 'Mauricio Imbroisi', '5', '10', '20', '1', '2019-06-23 07:42:04', '2019-06-23 07:42:04'),
(136, 127, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-06-30', 'Bispo Mauricio Imbroisi', 'caio henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 101, 197, 195, 'Leticia', 'Paolo Moroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caio Henrique', 'Roberto Freitas', 'Mauricio Imbroisi', '5', '10', '20', '1', '2019-06-30 06:56:26', '2019-06-30 08:19:54'),
(137, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 82, '2019-06-30', 'Bispo Luiz Fernando dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo Conselho da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 104, 168, 20, 'Jaciara Gomes Costa', 'Elder Mansfield', 'Ednalva Maria Pinto do Vale', 'Rita de Cássia de Almeida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'José Roberval Batista da Silva', NULL, NULL, NULL, NULL, NULL, 'Líder Masculino dos Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Cárdenas', NULL, 'Bispo Luiz Fernando dos Santos', '5', NULL, '15', '1', '2019-06-30 09:52:37', '2019-06-30 12:07:38'),
(138, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 95, '2019-07-07', 'Presidente Genival dos Santos', 'Alexandre Carlos da Silva', 'Presidente Genival dos Santos', 'Adeílson Cruz da Silva', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho', NULL, NULL, 'Caravana ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-07-13', NULL, NULL, NULL, NULL, '18:00h', NULL, NULL, NULL, NULL, 37, 101, 1, 35, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucas Fernando Cavalvante Sarmento', NULL, NULL, NULL, NULL, NULL, 'Líder Masculino do Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, 'José Roberval Batista da Silva', NULL, NULL, NULL, NULL, NULL, 'Líder Masculino do Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-07-06 21:12:59', '2019-08-25 10:03:25'),
(139, 25, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-08-07', 'presidente Genival dos Santos', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 110, 1, 70, 'Leticia', 'Paolo Moroni', 'Rafaela Barbosa', 'Gabriel Lisboa dos santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2019-07-07 08:23:47', '2019-07-07 08:52:30'),
(140, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-07-14', 'Presidente Cícero Fabio', 'Roberto Freitas', 'João Vasconcelos', 'Bispo Júnior Rodrigues', NULL, NULL, 'Patriarca', 'Coordenador do seminário', NULL, NULL, 'Encontro do missionário retornados', 'Noite americana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Tabuleiro', 'Capela Benedito Bentes', NULL, NULL, NULL, '2019-07-14', '2019-07-19', NULL, NULL, NULL, '15 horas', '19 horas', NULL, NULL, NULL, 168, 112, 162, 140, 'Leticia', 'Paolo Moroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Júnior Rodrigues', NULL, 'Presidente Cícero Fabio', NULL, NULL, NULL, '1', '2019-07-14 07:40:37', '2019-07-14 08:09:17'),
(141, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 85, '2019-07-14', 'Bispo  Luiz Fernando dos Santos', 'Alexandre Carlos da Silva', 'Bispo Júnior', 'Henrique Oscar dos Santos', NULL, NULL, 'Coordenador do seminário para Alagoas e Sergipe', 'Sumo Conselho', NULL, NULL, 'Encontro de Missionários Retornados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-07-14', NULL, NULL, NULL, NULL, '15:00h', NULL, NULL, NULL, NULL, 143, 103, 182, 145, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', 'Mauricio Carlos de Almeida Brandão', 'Jorge Luiz Flores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Júnior', NULL, 'Henrique Oscar dos Santos', '5', NULL, '15', '1', '2019-07-14 09:55:11', '2019-07-14 13:50:55'),
(142, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 93, '2019-07-21', 'Pres. Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Genival dos Santos', 'Antonio', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho', NULL, NULL, 'Projeto Mãozinhas que Ajudam', 'Carava ao Templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2019-07-27', '2019-07-27', NULL, NULL, NULL, '08:00 às 12:00', '17:30 às 20:00', NULL, NULL, NULL, 180, 105, 50, 5, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', 'Paula Gomes da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Magna Rosicler da Silva Santos', 'Martar Rejane Ribeiro de Lima', NULL, NULL, NULL, NULL, 'Professora da Primaria', 'Secretaria da Primaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ronaldo Oliveira', NULL, 'Leandro Vasconcelos', '15', NULL, '5', '1', '2019-07-16 17:15:36', '2019-07-28 09:11:29'),
(143, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-07-20', 'GENIVAL', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 105, 141, 166, 'Leticia', 'Paolo Moroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SISTER SANTOS', 'SISTER WOHLRAB', 'CARLOS LOBO', NULL, NULL, NULL, '1', '2019-07-20 23:08:47', '2019-08-03 22:17:38'),
(144, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-07-28', 'Genival dos santos', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 106, 135, 145, 'Leticia', 'Paolo Moroni', 'Irmã Nataly', 'Irmão Geraldo Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marcos Bezerra', 'davy bispo', 'roberto freitas', '5', '10', '20', '1', '2019-07-27 17:21:14', '2019-07-28 07:18:02');
INSERT INTO `sacramental_meetings` (`id`, `user_id`, `stake`, `ward`, `frequencia`, `date`, `presidida`, `dirigida`, `rec_nome1`, `rec_nome2`, `rec_nome3`, `rec_nome4`, `rec_cham1`, `rec_cham2`, `rec_cham3`, `rec_cham4`, `anun_1`, `anun_2`, `anun_3`, `anun_4`, `anun_5`, `pub_anun_1`, `pub_anun_2`, `pub_anun_3`, `pub_anun_4`, `pub_anun_5`, `local_anun_1`, `local_anun_2`, `local_anun_3`, `local_anun_4`, `local_anun_5`, `data_anun_1`, `data_anun_2`, `data_anun_3`, `data_anun_4`, `data_anun_5`, `hora_anun_1`, `hora_anun_2`, `hora_anun_3`, `hora_anun_4`, `hora_anun_5`, `hino1`, `hino2`, `hino3`, `hino4`, `regente`, `pianista`, `oracao1`, `oracao2`, `bencao1`, `bencao2`, `bencao3`, `abencoador1`, `abencoador2`, `abencoador3`, `oficio1`, `oficio2`, `oficio3`, `converso1`, `converso2`, `converso3`, `converso4`, `converso5`, `confirmador1`, `confirmador2`, `confirmador3`, `confirmador4`, `confirmador5`, `oficio4`, `oficio5`, `oficio6`, `oficio7`, `oficio8`, `desob_nome1`, `desob_nome2`, `desob_nome3`, `desob_nome4`, `desob_nome5`, `desob_nome6`, `desob_cham1`, `desob_cham2`, `desob_cham3`, `desob_cham4`, `desob_cham5`, `desob_cham6`, `apoio_nome1`, `apoio_nome2`, `apoio_nome3`, `apoio_nome4`, `apoio_nome5`, `apoio_nome6`, `apoio_cham1`, `apoio_cham2`, `apoio_cham3`, `apoio_cham4`, `apoio_cham5`, `apoio_cham6`, `sacerdote1`, `sacerdote2`, `diacono1`, `diacono2`, `diacono3`, `diacono4`, `discursante1`, `discursante2`, `discursante3`, `tempo1`, `tempo2`, `tempo3`, `ativo`, `created_at`, `updated_at`) VALUES
(145, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 85, '2019-07-28', 'Bispo Luiz Fernando dos Santos', 'Bispo Luiz Fernando dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reunião para todos os Líderes da Ala com a Presidência da Estaca', 'Devocional Acampamento do CREJAS 2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', 'Sede do Instituto Maceió, Estaca Maceió', NULL, NULL, NULL, '2019-07-28', '2019-07-28', NULL, NULL, NULL, '16:00', '19:00', NULL, NULL, NULL, 14, 110, 25, 83, 'Ruth Grazielle Lessa Coelho', 'Elder Mansfield', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vera Lucia Ricardo da Silva', 'Arthur Oliveira Cavalcante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana Lucia Cavalcante Rocha', NULL, NULL, NULL, NULL, NULL, 'Secretária da Primária', NULL, NULL, NULL, NULL, NULL, 'Ana Lucia Cavalcante Rocha', 'Jailton Costa', NULL, NULL, NULL, NULL, 'Professora da Primaria', 'Professor da Primária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Simone Lucena de Santana Flores', NULL, 'Aline Gleyce Chagas Guedes dos Santos', '5', NULL, '15', '1', '2019-07-28 09:20:06', '2019-07-28 13:38:58'),
(146, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-08-03', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Devocional acampamento', 'Devocional obra missionária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15 HORAS', '17 HORAS', NULL, NULL, NULL, '2019-08-03', '2019-08-03', NULL, NULL, NULL, 'estaca', 'ALA PRATAGY', NULL, NULL, NULL, 193, 115, 1, 84, 'Leticia', 'Paolo Moroni', 'Davi Bispo.', 'Irmão Juarez.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Geraldo Carvalho', 'joão Vasconcelo', NULL, NULL, NULL, NULL, 'primeiro concelheiro da escolha dominical', 'segundo concelheiro da escolha dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Testemunho', NULL, NULL, NULL, '1', '2019-08-03 22:07:09', '2019-08-03 22:16:20'),
(147, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-08-04', 'Presidente Genival dos Santos', 'Ademar Leandro Vasconcelos da Silva', 'Presidente Genival dos Santos', 'Adeílson Cruz da Silva', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho', NULL, NULL, 'Devocional Acampamento ORM 2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-08-04', NULL, NULL, NULL, NULL, '15:00', NULL, NULL, NULL, NULL, 2, 112, 1, 62, 'Ruth Grazielle Lessa Coelho', 'Gerson do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-08-04 08:57:46', '2019-08-04 10:02:20'),
(148, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-08-11', 'Bispo Mauricio Imbroisi', 'caio henrique', 'João Vasconcelos', 'José Luis da Silva', 'Glauciane Costa do Nascimento Silva', NULL, 'Patriarca', '(Consultor do MAS da estaca)', '(Consultor do MAS da estaca)', NULL, 'Caravana de  (Semana) ------- Vagas: 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 107, 137, 25, 'Leticia', 'Paolo Moroni', 'Irma Railda', 'Irma Sandra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Glauciane Costa do Nascimento Silva', 'José Luis da Silva', NULL, NULL, NULL, NULL, '1', '2019-08-10 23:09:01', '2019-08-10 23:10:52'),
(149, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-08-11', 'Bispo Fernando dos Santos', 'Alexandre Carlos da Silva', 'Malu e Paolo Pari', 'Tonyone Ferreira Alves', 'José Antonio Silva dos Santos', NULL, 'Casal Consultor do JAS da Estaca', 'Secretário Executivo', 'Sumo Conselho da Estaca', NULL, 'Festival de oratória - ORM da Ala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', NULL, NULL, NULL, NULL, '2019-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 113, 160, 89, 'Ruth Grazielle Lessa Coelho', 'Gerson do Vale Jr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria Luzia Cassia Nascimento Pari', NULL, 'Paolo Moroni Pari Ataulluco', '5', NULL, '15', '1', '2019-08-11 08:43:18', '2019-08-11 09:59:04'),
(150, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-08-18', 'Bispo Mauricio Imbroisi', 'ROBERTO FREITAS', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Caravana de 10/09/2019 (Semana) ------- Vagas: 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 112, 202, 89, 'Leticia', 'Paolo Moroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karla Bispo', 'Bruno Baretto', NULL, NULL, NULL, NULL, '1', '2019-08-17 21:41:39', '2019-08-18 06:16:14'),
(151, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 103, '2019-08-18', 'Presidente Genival dos Santos', 'Bispo Luiz Fernando dos Santos', 'Genival dos Santos', 'Adeílson Cruz da Silva', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho', NULL, NULL, 'festival de oratoria', 'Devocional das familia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Ben. Bentes', 'Capela Ben. Bentes', NULL, NULL, NULL, '2019-08-18', '2019-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193, 114, 35, 41, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana Laura Correia dos Santos de Santana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ruth Grazielle Lessa Coelho', NULL, NULL, '5', NULL, NULL, '1', '2019-08-18 08:16:47', '2019-08-25 07:48:24'),
(152, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '1993-08-25', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, 101, 166, 167, 'Leticia Carvalho', 'Paolo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROSIMEIRE BEZERRA', 'Alisson Araujo', 'Presidente Taylor', NULL, NULL, NULL, '1', '2019-08-25 07:33:22', '2019-08-25 08:34:44'),
(153, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-08-25', 'Bispo Luiz Fernando dos Santos', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 115, 145, 41, 'Ruth Grazielle Lessa Coelho', 'Gerson do Vale Jr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Laudeci Josefa dos Santos', NULL, 'Elder Martins', '5', NULL, '15', '1', '2019-08-25 07:51:56', '2019-08-25 07:53:41'),
(154, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-09-01', 'Bispo Mauricio Imbroisi', 'Caio Henrique', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 101, 1, 195, 'Leticia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testemunho', 'testemunho', 'testemunho', NULL, NULL, NULL, '1', '2019-09-01 08:52:32', '2019-09-01 08:52:40'),
(155, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 88, '2019-09-01', 'Bispo Fernando Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Transmissão da Reunião Extraordinária para o Sacerdócio', 'Transmissão Devocional com o Profeta Russel M. Nelson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela de Benedito Bentes', 'Capela de Benedito Bentes', NULL, NULL, NULL, '2019-09-01', '2019-09-01', NULL, NULL, NULL, '15:00', '16:00', NULL, NULL, NULL, 73, 101, 1, 66, 'Ruth Grazielle Lessa Coelho', 'Gerson do Vale Jr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-09-01 09:26:48', '2019-09-08 09:15:04'),
(156, 159, 'Maceió Tabuleiro', 'Pratagy', 0, '2019-09-08', 'Roberto Freitas', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', 'roberto freita', NULL, NULL, 'Patriarca', 'segundo concelheiro da estaca', NULL, NULL, 'Caravana de 10/09/2019 (Semana) ------- Vagas: 8', 'Caravana de 12/10/2019 ------- Vagas: 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 115, 183, 20, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pedro Imbroisi', NULL, 'JOAO LIMA', NULL, 'Siste dar Testemunho', 'Bispo Maurício', 'Pres. Roberto Freitas.', NULL, NULL, NULL, '1', '2019-09-07 17:49:37', '2019-09-08 08:40:58'),
(157, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 83, '2019-09-08', 'Bispo Luiz Fernando dos Santos', 'Bispo Luiz Fernando dos Santos', 'Tonyone Ferreira', 'Pres Roberto Freitas', NULL, NULL, 'Secretário Executivo da Estaca', 'Conselheiro da Estaca', NULL, NULL, 'Convenção de Professores Escola Dominical', 'Caravana ao Templo de 1 Semana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-09-08', '2019-09-10', NULL, NULL, NULL, '16:00', '08:00', NULL, NULL, NULL, 9, 103, 66, 167, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tonyone Ferreira', NULL, 'Pres. Roberto Freitas', '5', NULL, '15', '1', '2019-09-08 09:22:28', '2019-09-22 17:56:08'),
(158, 159, 'Maceió Tabuleiro', 'Pratagy', 120, '2019-09-15', 'Bispo Mauricio Imbroisi', 'Marcos Caiano', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 113, 174, 135, 'Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gabriel Lobo', 'Leandro Mendonça', NULL, NULL, NULL, NULL, '2 cocelheiro dos rapazes', 'secretario dos rapazes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho das siteres novas', 'Marciria Gabriela', 'Henrique Oscar', NULL, NULL, NULL, '1', '2019-09-14 22:53:14', '2019-10-13 23:53:47'),
(159, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 88, '2019-09-15', 'Bispo Luiz Fernando dos Santos', 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Devocional Prevenindo o Suicidio', 'Atividade da primária conjunta com a sociedade de Socorro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Maceió', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2019-09-22', '2019-09-28', NULL, NULL, NULL, '19hs', '08:00 às 16:30', NULL, NULL, NULL, 165, 105, 137, 145, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', 'Antonio Alves Pereira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mauricio', 'Ronaldo', 'Isac', NULL, 'Arthu', NULL, 'Marcos Glay Brandão', NULL, 'Cicera Pereira dos Santos', '05', NULL, '15', '1', '2019-09-15 09:54:29', '2019-09-22 17:56:24'),
(160, 444, 'Maceió Tabuleiro', 'Pratagy', 105, '2019-09-22', 'Bispo Mauricio Imbroisi', 'Bispo Mauricio Imbroisi', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 147, 112, 42, 199, 'Leticia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juliene Caiano', 'Guilherme Canuto', 'João Partriaca', NULL, NULL, NULL, '1', '2019-09-21 21:26:40', '2019-09-22 10:52:55'),
(161, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 93, '2019-09-22', 'Bispo Luiz Fernando dos Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atividade da primária conjunta com Sociedade de Socorro', 'Festival de Oratória ORM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2019-09-28', '2019-09-29', NULL, NULL, NULL, '08:00 às 16:00', '16:00 às 18:00', NULL, NULL, NULL, 141, 110, 136, 61, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ellen Karine Brito Pereira', NULL, 'Bruno Rafael de Queiroz Barretto', '5', NULL, '15', '1', '2019-09-22 09:48:07', '2019-09-22 17:57:06'),
(162, 159, 'Maceió Tabuleiro', 'Pratagy', 230, '2019-09-29', 'Presidente Genival', 'Bispo Maurício', 'Presidência da Estaca', 'Todos os líderes das Auxiliares', NULL, NULL, 'Presidente Genival e seus conselheiros', 'Presidência das Organizações e seus conselheiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, 113, 27, 29, 'Letícia Carvalho', 'Wil Robinson de Souza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, 'Klivia Monicke Elpidio dos Santos', NULL, NULL, NULL, NULL, NULL, '2°conselheira da Primária', NULL, NULL, NULL, NULL, NULL, 'Ana Luiza dos Santos', NULL, NULL, NULL, NULL, NULL, '2°conselheira da Primária.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Maurício', NULL, 'Presidente Genival', '15', NULL, '20', '1', '2019-09-28 22:53:01', '2019-10-13 23:51:45'),
(163, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 110, '2019-09-29', 'Bispo Fernando Santos', 'Alexandre Carlos da Silva', 'Romário Cavalcante', 'Adeilson Cruz da Silva', NULL, NULL, 'Sumo conselho', 'Sumo conselho', NULL, NULL, 'Festival de Oratória ORM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-09-29', NULL, NULL, NULL, NULL, '16:00', NULL, NULL, NULL, NULL, 166, 112, 1, 89, 'Ruth Grazielle Lessa', 'Gerson do Vale Jr.', 'Arthur', 'Pedro Vieira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rita de Cássia', 'Elder Grandford', 'Leandro Vasconcelos', '5', '5', '10', '1', '2019-09-30 10:25:37', '2019-09-30 10:27:53'),
(164, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-10-27', 'Elder Simplício', 'Alexandre Carlos da Silva', 'Elder Simplício dos Setenta', 'Adeilson Cruz da Silva', NULL, NULL, 'Setenta de Área', 'Sumo conselho', NULL, NULL, 'Treinamento Trimestral da Liderança.da Estaca', 'Projeto Mãos que Ajudam - Casa Aberta Nacional e Prêmios da Comunidade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2019-10-27', '2019-11-02', NULL, NULL, NULL, '16:00 às 18:00', '15:00 às 21:00', NULL, NULL, NULL, 3, 112, 57, 62, 'Ruth Grazielle Lessa', 'Gerson do Vale Jr.', 'Ednalva do Vale', 'Maurício Carlos de Almeida Brandão', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-10-04 19:16:47', '2019-10-14 18:30:24'),
(165, 262, 'Maceió Tabuleiro', 'Universitário', NULL, '2019-12-29', 'erick wesley melo de frança', 'Darlley Rodrigo Bezerra da Silva', 'Romildo Lució dos Santos', NULL, 'Manoel Messias dos santos', NULL, 'Primeiro Conselheiro da estaca', NULL, 'sumo conselho da estaca', NULL, 'caravana ao templo', 'Reunião Geral Trimestral com as lideranças das alas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'sede da estaca', NULL, NULL, NULL, '2020-01-11', '2020-01-12', NULL, NULL, NULL, '19:00 horas', '18:00 horas', NULL, NULL, NULL, 124, 112, 153, 57, 'Marjorie Louise de Moraes Pereira de Azevedo.', 'Diogo Bandeira Ramalho', 'Cintia Santos da Silva', 'Sanderly Sandes Lins Dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Junior César Antonio da Silva', 'Maria José Lima Soares', 'Darlley Rodrigo Bezerra da Silva', '10 minutos.', '20 minutos', '5 minutos', '1', '2019-10-12 08:11:38', '2019-12-29 08:46:20'),
(166, 444, 'Maceió Tabuleiro', 'Pratagy', 131, '2019-10-13', 'Bispo Maurício', '1°conselheiro Caio', 'João Vasconcelos', 'Geniva Santos', 'R', NULL, 'Patriarca', 'Presidente da Estaca', NULL, '01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, 104, 1, 73, 'Geraldo  Carvalho', NULL, 'Irmã Uziene', 'Sister dos Santos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irmã Laura', NULL, NULL, NULL, NULL, 'Irmão Hércules', NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-10-12 21:54:10', '2019-10-13 10:31:06'),
(167, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 87, '2019-10-13', 'Bispo Luiz Fernando dos Santos', 'Bispo Luiz Fernando dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Devocional do JAS. CREJAS 2020 (HOJE)', 'Atividade História da Família', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, '2019-10-13', '2019-10-19', NULL, NULL, NULL, '15:00', '19:30', NULL, NULL, NULL, 171, 113, 1, 70, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', NULL, NULL, 'Ravi Augusto Santos Medeiros', NULL, NULL, 'Marcial Ferreira de Lima', NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-10-13 10:03:57', '2019-10-14 18:04:30'),
(168, 444, 'Maceió Tabuleiro', 'Pratagy', 95, '2019-10-20', 'Bispo Mauricio Imbroisi', 'Marcos Sergio Rodrigues Caiano', 'João Vasconcelos', 'Henrique Oscar dos Santos', NULL, NULL, 'Patriarca', 'Sumo concelho', NULL, NULL, 'Reunião Anual dos Sumos Sacerdotes da Estaca.', 'Reunião com Presidentes de Quorun de Elderes  da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', '17;30hrs', NULL, NULL, NULL, '2019-10-20', '2019-10-26', NULL, NULL, NULL, '15:00hrs', '16:00hrs', NULL, NULL, NULL, 9, 101, 134, 41, 'Leticia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mikael Arthur Santos Gomes', 'Carlos Ghabryel Chagas Lobo', NULL, NULL, NULL, NULL, 'Sister Camilo', 'Juliene Silva de Almeida Caiano', 'Henrique Oscar dos Santos', '5', '10', '20', '1', '2019-10-19 16:20:54', '2019-10-20 09:47:32'),
(169, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 94, '2019-10-20', 'Presidente Genival dos Santos', 'Fernando Santos', 'Presidente Genival dos Santos', 'Adeilson Cruz da Silva', NULL, NULL, 'Presidente da Estaca', 'Sumo conselho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 174, 114, 182, 202, 'Ruth Grazielle Lessa', 'Gerson do Vale Jr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marcial Ferreira de Lima', NULL, 'Presidente Genival dos Santos', '5', NULL, '15', '1', '2019-10-20 09:22:01', '2019-10-21 20:05:17'),
(170, 444, 'Maceió Tabuleiro', 'Pratagy', 118, '2019-10-27', 'Bispo Maurício', 'Caio Henrique da Silva', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 168, 113, 1, 166, 'Letícia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sister Cabachyeiro/Sister Batista', '2°conselheiro Marcos Caiano/1°conselheiro Henrique', 'Bispo Maurício Imbroisi', '5', '10', '20', '1', '2019-10-25 12:25:44', '2019-11-03 10:45:47'),
(171, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-10-27', 'Bispo Fernando Santos', 'Leandro Vasconcelos', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo conselho', NULL, NULL, NULL, 'Projeto Mãos que Ajudam - Casa Aberta Nacional e Prêmios da Comunidade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-11-02', NULL, NULL, NULL, NULL, '15:00 as 21:00', NULL, NULL, NULL, NULL, 3, 112, 57, 62, 'Ruth Grazielle Lessa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Valdenice Joaquim dos Santos Vieira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mauricio', NULL, NULL, NULL, NULL, NULL, 'Luana de Paula Rocha da Silva', NULL, 'Ademar Leandro Vasconcelos da Silva', NULL, NULL, NULL, '1', '2019-10-26 23:16:11', '2019-10-27 09:28:02'),
(172, 49, 'Maceió Tabuleiro', 'Tabuleiro', 66, '2019-10-27', 'Bispo Flávio Ferreira de Vasconcelos', 'Cícero Vieira do nascimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Projeto mãos que ajudam - casa aberta nacional e prêmios da comunidade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-11-02', NULL, NULL, NULL, NULL, '15:00 as 21:00', NULL, NULL, NULL, NULL, 62, 105, 9, 42, 'Shirley Maria dos Santos Vasconcelos', 'Elder Helm', 'Arthur Antônio Cavalcante de barros Melo', 'Matheus Cavalcante  dos santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gabriel Gomes dos Santos', NULL, NULL, NULL, NULL, 'Elder Murilo carvalho', NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'IamIan Guilherme Lira de Nascimento', 'Yale karine Dos Ramos Silva Souza', 'Luiz Eduardo Félix da Silva', '5', '10', '20', '1', '2019-10-27 06:56:39', '2019-10-27 09:22:15'),
(173, 444, 'Maceió Tabuleiro', 'Pratagy', 126, '2019-11-03', 'Presidente Genival', 'Caio Henrique', 'João Vasconcelos', 'Geniva Santos', NULL, NULL, 'Patriarca', 'Presidente da Estaca', NULL, NULL, 'Noite de Integração Tema Argentina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', '2019-12-03', NULL, NULL, NULL, '19:30hrs', NULL, NULL, NULL, NULL, 43, 112, 1, 43, 'Letícia Carvalho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-11-02 18:41:14', '2019-11-03 10:59:49'),
(174, 49, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2019-11-03', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noite dos Padrões - OM', 'Caravana ao templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', 'Estaca', NULL, NULL, NULL, '2019-11-08', '2019-11-09', NULL, NULL, NULL, '19:00 as 21:00', '18:00', NULL, NULL, NULL, 1, 1, 1, 1, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-11-03 01:29:07', '2019-11-03 01:33:54'),
(175, 53, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2019-11-03', 'Flávio Vasconcelos', 'Flávio Vasconcelos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 186, 114, 1, 193, 'Shirley Vasconcelos', 'Joalison', 'Marlene de Lima Firmino', 'Diego bismark dos Santiago', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Testemunho', 'Testemunho', 'Twstemunho', NULL, NULL, NULL, '1', '2019-11-03 09:32:04', '2019-11-03 09:49:01'),
(176, 262, 'Maceió Tabuleiro', 'Universitário', 0, '2019-11-10', 'Bispo Antonio José Rogério Carlos', 'Erick Wesley Melo de França', 'Manoel messias da silva', NULL, NULL, NULL, 'Sumo conselho da estaca', NULL, NULL, NULL, 'Conferência da ala universitário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Universitário', NULL, NULL, NULL, NULL, '2019-11-24', NULL, NULL, NULL, NULL, 'As 09;00 horas', NULL, NULL, NULL, NULL, 35, 112, 145, 197, 'Marjorie Louise de Moraes Pereira de azevedo', 'Júlio César Campos lopez', 'Antonio Ferreira da Silva', 'Maria José Lima Soares', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manoel messias da silva', '15 minutos', NULL, '20 minutos', '1', '2019-11-03 09:41:19', '2019-11-10 00:19:26'),
(177, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-11-03', 'Pres. Genival dos Santos', 'Alexandre Carlos da Silva', 'Presidente Genival dos Santos', 'Adeílson Cruz da Silva', NULL, NULL, 'Presidente da Estaca Maceió Tabuleiro', 'Sumo Conselho da Estaca', NULL, NULL, 'Caravana ao Templo', 'Caravana da ALA B.BENTES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'B.bentes', 'B.Bentes', NULL, NULL, NULL, '2019-11-09', '2019-11-15', NULL, NULL, NULL, 'sai de 08 as 18hs', '04hs', NULL, NULL, NULL, 71, 115, 1, 124, NULL, NULL, 'Fátima Santos', 'Maria Crislayne dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mauricio Brandão', 'Marcos Glay Brandão', 'Isaac Pereira da Silva', NULL, NULL, NULL, 'TESTEMUNHO', 'TESTEMUNHO', 'TESTEMUNHOS', '5', '5', '5', '1', '2019-11-03 10:52:46', '2019-11-03 10:55:23'),
(178, 444, 'Maceió Tabuleiro', 'Pratagy', 157, '2019-11-10', 'presidente Genival dos Santos', 'Bispo Mauricio Imbroisi', 'Presidência da Estaca', 'Lideres das Auxiliares e Patriarca da Estaca', NULL, NULL, 'Presidente e Conselheiros', 'Sumo concelho e demais Membros da Estaca', NULL, NULL, 'caravana ao Templo', 'Noite dos Padrões', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca e demais unidades', 'Estaca Tabuleiro', NULL, NULL, NULL, '2019-11-15', '2019-11-22', NULL, NULL, NULL, '18:00hrs', '19:30h', NULL, NULL, NULL, 40, 115, 1, 85, 'Leticia Carvalho', NULL, 'Gardênia Lisboa dos santos', 'Gardênia Lisboa dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Todos os liíderes de Cachoeira', 'Desobrigação do Bispado Pratagy', NULL, NULL, NULL, NULL, 'Todos os Chamados', 'todos os chamados', NULL, NULL, NULL, NULL, 'Novo Bispo de Pratagy/Novo Bispo de Cachoeira', NULL, NULL, NULL, NULL, NULL, 'Bispos de Unidades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bispo Mauricio Fernando dos Santos Imbroisi', 'Novo Bispo de Pratagy', 'Novo Bispo de Cachoeira', '10', '10', '10', '1', '2019-11-07 19:01:32', '2019-11-10 10:59:06'),
(179, 49, 'Maceió Tabuleiro', 'Tabuleiro', 0, '2019-11-10', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Recital Natalino (Atividade Pré-Conferência)', 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', 'Estaca Tabuleiro', NULL, NULL, NULL, '2019-11-29', '2019-11-30', NULL, NULL, NULL, '19:00 a 21:00', NULL, NULL, NULL, NULL, 134, 104, 57, 89, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-11-10 08:03:38', '2019-11-10 08:03:38'),
(180, 49, 'Maceió Tabuleiro', 'Tabuleiro', 65, '2019-11-10', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', 'Paulo José Bernadino santos', 'Geremias José Macena da Silva', NULL, NULL, 'Sumo concelheiro', 'Presidente da escola dominical da estaca', NULL, NULL, 'Recital Natalino (Atividade Pré-Conferência)', 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', 'Estaca Tabuleiro', NULL, NULL, NULL, '2019-11-29', '2019-11-30', NULL, NULL, NULL, '19:00 a 21:00', NULL, NULL, NULL, NULL, 134, 104, 57, 89, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', 'Diego Bismark', 'Luciano de barros costa Junior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Geremias', 'Paulo José Bernadino santos', NULL, '15', '20', NULL, '1', '2019-11-10 08:04:54', '2019-11-17 07:47:26'),
(181, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-11-10', 'Bispo Luiz Fernando dos Santos', 'Alexandre Carlos da Silva', 'Adeilson Cruz da Silva', 'Antônio Carlos da Silva', 'José Antônio Silva dos Santos', NULL, 'Sumo Conselho da Estaca', 'Sumo Conselho / Pres. dos Rapazes das Estaca', 'Sumo Conselho da Estaca', NULL, 'Caravana ao Templo da Ala', 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela Benedito Bentes', 'Sede da Estaca Maceió Tabuleiro', NULL, NULL, NULL, '2019-11-14', '2019-12-30', NULL, NULL, NULL, '19:30h', '16:00 e às 19:00', NULL, NULL, NULL, 142, 101, 141, 83, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', 'Mauricio Carlos de Almeida Brandão', 'Bianca Carolinny Lessa Moura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Antônio Carlos da Silva', NULL, 'José Antônio Silva dos Santos', '5', NULL, '15', '1', '2019-11-10 10:21:09', '2019-11-10 11:03:23'),
(182, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 71, '2019-11-17', 'Presidente Genival', 'Bispo Carlos Lobo', 'Genival dos Santos', NULL, NULL, NULL, 'Presidente da Estaca', NULL, NULL, NULL, 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-30', NULL, NULL, NULL, NULL, '16:00hrs', NULL, NULL, NULL, NULL, 12, 112, 9, 4, 'Jeiza  Rafaela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'José Claudio Pereira Lopes', NULL, NULL, NULL, NULL, 'Alisson Araujo dos Santos', NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rosemeire de Azevedo Bezerra', 'Cristiane Rosy  Chagas Lobo', 'Sandra Regina Novais Lima', 'Gardênia Lisboa dos Santos', NULL, NULL, 'Presidente da Sociedade de Socorro', 'Primeira conselheira', 'Presidente das Moças', 'Primeira conselheira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rosemeire de Azevedo Bezerra', 'Sandra Regina Novais Lima', 'Alisson Araújo dos Santos', '10', '10', '10', '1', '2019-11-15 14:29:52', '2019-11-17 11:48:50'),
(183, 159, 'Maceió Tabuleiro', 'Pratagy', 48, '2019-11-17', 'Bispo Geraldo carvalho', 'Marcos Caiano', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Caravana de  (Semana) ------- Vagas: 22', 'Conferencia da estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pratagy', NULL, NULL, NULL, '2019-12-03', '2019-12-01', NULL, NULL, NULL, NULL, '10H da manha', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucas de Lima', 'Marcos Caiano', 'Bispo Geraldo carvalho', NULL, NULL, NULL, '1', '2019-11-16 20:35:44', '2019-12-08 09:17:55'),
(184, 49, 'Maceió Tabuleiro', 'Tabuleiro', 73, '2019-11-17', 'Bispo Flávio Ferreira de Vasconcelos', 'Cícero Vieira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Recital Natalino (Atividade Pré-Conferência)', 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca Tabuleiro', 'Estaca Tabuleiro', NULL, NULL, NULL, '2019-11-29', '2019-11-30', NULL, NULL, NULL, '19:00 a 21:00', NULL, NULL, NULL, NULL, 41, 112, 1, 1, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', 'Heitor Antonio Cavalcante de Barros Melo', 'Cecilia Ribeiro Ramos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ewerthon Erbert Silva de Araújo', NULL, NULL, NULL, NULL, NULL, 'Consultor dos sacerdotes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-11-17 07:51:53', '2019-11-17 10:28:38'),
(185, 262, 'Maceió Tabuleiro', 'Universitário', 0, '2019-11-17', 'Romildo Lucio dos Santos', 'Diogo Bandeira Ramalho', 'Romildo Lució dos Santos', NULL, NULL, NULL, 'Primeiro Conselheiro da estaca', NULL, NULL, NULL, 'Confêrencia da ala Universitário', 'Reunião Familiar (História da Familia )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ala Universitário', 'Ala Universitário', NULL, NULL, NULL, '2019-11-24', '2019-11-17', NULL, NULL, NULL, 'as 09:00 Horas', 'as 18:30 Horas', NULL, NULL, NULL, 50, 101, NULL, NULL, 'Marjorie Louise De Moraes Pereira de Azevedo', 'Julio Campos Lopes', 'Lukas Reginaldo Lima de Azevedo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-11-17 09:40:03', '2019-11-17 09:40:03'),
(186, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-11-17', 'Bispo Fernando Santos', 'Alexandre Carlos da Silva', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo Conselho da Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 147, 103, 182, 25, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paulo Ferro Costa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Davi José da Silva e Elisabeth Lessa Coelho', NULL, NULL, NULL, NULL, NULL, 'Casal Consultor do MAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bianca Carolinny Lessa Moura', NULL, 'Bispo Luiz Fernando dos Santos', '5', NULL, '15', '1', '2019-11-17 10:32:52', '2019-11-17 11:19:00'),
(187, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 61, '2019-11-24', 'Bispo Radmellys carlos Lôbo', '1° Conselheiro Juarez Jackson de Lima Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conferencia da Estaca Tabuleiro', 'Caravana ao templo de 01 Semana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', NULL, NULL, NULL, NULL, '2019-11-30', '2019-12-03', NULL, NULL, NULL, NULL, '08:00hrs', NULL, NULL, NULL, 20, 113, 26, 3, 'Jeiza Rafaela Silva de Souza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghabyella Karla Chagas Lobo', 'Guilherme Fabio Silva Couto', 'Gardênia Lisboa dos santos', 'Jeiza Rafaela Silva de Souza', NULL, NULL, '1° conselheira das Moças', 'conselheiro da Escola Dominical', 'Professora da Escola Dominical', '2° Conselheira da Soc. Socorro.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mikael Arthur Santos Gomes', 'Jennifer Karoline Meneses de Freitas', 'Davi Bispo de Oliveira', '5', '10', '15', '1', '2019-11-23 12:38:22', '2019-12-08 10:19:24'),
(188, 159, 'Maceió Tabuleiro', 'Pratagy', 50, '2019-11-24', 'Bispo Carvalho', 'Marcos Caiano', 'João Vasconcelos', NULL, NULL, NULL, 'Patriarca', NULL, NULL, NULL, 'Conferência da Estaca, falar somente das sessões dos Adultos e da Sessão Geral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, 117, 133, 42, 'Verônica Vasconcelos da Silva', NULL, 'Letícia Aguiar dos Santos Carvalho', 'Everaldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Letícia Aguiar dos Santos Carvalho', NULL, NULL, NULL, NULL, NULL, '(Regente da Ala)', NULL, NULL, NULL, NULL, NULL, 'Verônica Vasconcelos da Silva', NULL, NULL, NULL, NULL, NULL, '(Regente da Ala)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucas Gabriel dos Santos Ferreira', 'Verônica Vasconcelos da Silva', 'Caio Henrique', NULL, NULL, NULL, '1', '2019-11-23 21:36:57', '2019-12-08 09:18:15'),
(189, 49, 'Maceió Tabuleiro', 'Tabuleiro', 75, '2019-11-24', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', NULL, NULL, NULL, NULL, 'Sumo concelheiro', NULL, NULL, NULL, 'Noite de integração', 'Conferência da Estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tabuleiro', 'Estaca Tabuleiro', NULL, NULL, NULL, '2019-11-26', '2019-11-30', NULL, NULL, NULL, '19:30', NULL, NULL, NULL, NULL, 39, 106, 133, 168, 'Shirley Maria dos Santos Vasconcelos', NULL, 'Antonio Brasiliano de Melo  Neto', 'Carolinne Alves Ribeiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acácia da Silva Vieira', 'Emmanuel viera cordeiro', NULL, NULL, NULL, 'Elder Ethan Helm', 'Elder Ethan Helm', NULL, NULL, NULL, 'Élder', 'Élder', NULL, NULL, NULL, 'Antonio Brasiliano de Melo  Neto,', NULL, NULL, NULL, NULL, NULL, 'Presidente do Quórum de Élderes', NULL, NULL, NULL, NULL, NULL, 'Manilson Batista 	Santos', NULL, NULL, NULL, NULL, NULL, 'Presidente do Quórum de Élderes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cicero Vieira do Nascimento,', 'Ana Julia Da Silva Costa,', 'Nathália Karolyne de Oliveira Firmino,', '5', '10', '15', '1', '2019-11-24 06:55:35', '2019-11-24 09:30:39'),
(190, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-11-24', 'Luiz Fernando dos Santos Bispo', 'Ademar Leandro Vasconcelos da Silva', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo Cons. da Estaca', NULL, NULL, NULL, 'Treinamento para Todos os Professores, Consultores e Líderes de Organizações;', 'CONFERENCIA DA ESTACA 30/11-01/12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOJE ALA B.BENTES', '01/12: 10HS', NULL, NULL, NULL, '2019-11-24', '2019-11-30', NULL, NULL, NULL, '16:HS', '16HS /30/11', NULL, NULL, NULL, 168, 110, 127, 133, 'Ruth Grazielle Lessa Coelho', NULL, 'Veridiana da Silva Almeida', 'Jorge Luiz Flores Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Luiz da Rocha', NULL, NULL, NULL, NULL, NULL, 'LÍDER DE PATRIMÔNIO DA ALA B.BENTES', NULL, NULL, NULL, NULL, NULL, 'Jorge Luiz Flores Ferreira', NULL, NULL, NULL, NULL, NULL, 'LÍDER DE PATRIMÔNIO DA ALA B.BENTES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JESSICA BERNARDINO DO VALE VASCONCELOS', NULL, 'ADEMAR LEANDRO VASCONCELOS DA SILVA', NULL, NULL, NULL, '1', '2019-11-24 10:28:22', '2019-11-24 10:32:56'),
(191, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 70, '2019-12-08', 'Genival dos Santos', 'Bispo Carlos Lobo', 'Genival dos Santos', 'Raul Lima', 'Raul', NULL, 'Presidente da Estaca', 'Sumo Conselho da Estaca', NULL, NULL, 'Devocional de Natal da Presidência da Estaca', 'Noite dos padrões da OmNoite dos padrões da OM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca.', NULL, NULL, NULL, NULL, '2019-12-08', '2019-12-12', NULL, NULL, NULL, '16:00 as 18:00hrs', '18:30 as 23:00hrs', NULL, NULL, NULL, 151, 115, 1, 71, 'Jeiza Rafaela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maura Cristina Vital  Costa', 'Diana Correia Tavares de Azevedo', NULL, NULL, NULL, NULL, '2° conselheira da Primária', '2° conselheira da Primária.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-07 21:26:31', '2019-12-08 10:19:52');
INSERT INTO `sacramental_meetings` (`id`, `user_id`, `stake`, `ward`, `frequencia`, `date`, `presidida`, `dirigida`, `rec_nome1`, `rec_nome2`, `rec_nome3`, `rec_nome4`, `rec_cham1`, `rec_cham2`, `rec_cham3`, `rec_cham4`, `anun_1`, `anun_2`, `anun_3`, `anun_4`, `anun_5`, `pub_anun_1`, `pub_anun_2`, `pub_anun_3`, `pub_anun_4`, `pub_anun_5`, `local_anun_1`, `local_anun_2`, `local_anun_3`, `local_anun_4`, `local_anun_5`, `data_anun_1`, `data_anun_2`, `data_anun_3`, `data_anun_4`, `data_anun_5`, `hora_anun_1`, `hora_anun_2`, `hora_anun_3`, `hora_anun_4`, `hora_anun_5`, `hino1`, `hino2`, `hino3`, `hino4`, `regente`, `pianista`, `oracao1`, `oracao2`, `bencao1`, `bencao2`, `bencao3`, `abencoador1`, `abencoador2`, `abencoador3`, `oficio1`, `oficio2`, `oficio3`, `converso1`, `converso2`, `converso3`, `converso4`, `converso5`, `confirmador1`, `confirmador2`, `confirmador3`, `confirmador4`, `confirmador5`, `oficio4`, `oficio5`, `oficio6`, `oficio7`, `oficio8`, `desob_nome1`, `desob_nome2`, `desob_nome3`, `desob_nome4`, `desob_nome5`, `desob_nome6`, `desob_cham1`, `desob_cham2`, `desob_cham3`, `desob_cham4`, `desob_cham5`, `desob_cham6`, `apoio_nome1`, `apoio_nome2`, `apoio_nome3`, `apoio_nome4`, `apoio_nome5`, `apoio_nome6`, `apoio_cham1`, `apoio_cham2`, `apoio_cham3`, `apoio_cham4`, `apoio_cham5`, `apoio_cham6`, `sacerdote1`, `sacerdote2`, `diacono1`, `diacono2`, `diacono3`, `diacono4`, `discursante1`, `discursante2`, `discursante3`, `tempo1`, `tempo2`, `tempo3`, `ativo`, `created_at`, `updated_at`) VALUES
(192, 262, 'Maceió Tabuleiro', 'Universitário', 0, '2019-12-08', 'Romildo Lucio dos Santos', 'erick wesley melo de frança', 'Romildo Lució dos Santos', NULL, NULL, NULL, 'Primeiro Conselheiro da estaca', NULL, NULL, NULL, 'devocional de natal da igreja', 'retransmição cara cara com para Jovens e pais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'em suas casas', 'capela', NULL, NULL, NULL, '2019-12-08', '2019-12-08', NULL, NULL, NULL, '22:00 Horario de Brasilia', 'as 16:30', NULL, NULL, NULL, 124, 105, 121, 1, 'Marjorie Louise De Moraes Pereira de Azevedo', 'Julio Campos Lopes', 'Fernanda Costa Bernadino', 'Marivaldo Manoel da silva', 'Melissa dos santos silva', NULL, NULL, 'Darley Rodrigo bezerra da silva', NULL, NULL, 'Sumo Sacerdote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sanderly sandes lins dos santos', 'Debora Lorrani ferreira dos santos silva', 'Jessica Batista Felix', 'Ana Clara dos santos', NULL, NULL, 'Lider de berçario', 'Assistente do Berçário', 'Lider do Berçario', 'Assistente do Bercario', NULL, NULL, 'Danielle rosa calheiros', NULL, NULL, NULL, NULL, NULL, 'professora da escola Dominical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-08 07:57:25', '2019-12-08 08:56:51'),
(193, 159, 'Maceió Tabuleiro', 'Pratagy', 68, '2019-12-08', 'Bispo Geraldo carvalho', 'Marcos Sergio Rodrigues Caiano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-08 09:18:50', '2019-12-08 09:18:50'),
(194, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 67, '2019-12-08', 'Bispo Fernando Santos', 'Bispo Fernando dos Santos', 'Adeilson Cruz da Silva', NULL, NULL, NULL, 'Sumo Conselho da Estaca', NULL, NULL, NULL, 'Devocional de Natal da Presidência da Estaca', 'Devocional de Natal com Joel & Maristela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Sede do Instituto Maceió, Estaca Maceió', NULL, NULL, NULL, '2019-12-22', '2019-12-08', NULL, NULL, NULL, '17:00', '19:00', NULL, NULL, NULL, 121, 101, 1, 126, 'Ruth Grazielle Lessa', 'Gerson do Vale Jr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-08 10:12:36', '2019-12-15 14:40:37'),
(195, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 81, '2019-12-15', 'Bispo  Radmellys Carlos Lobo', '1°Conselheiro Juarez Jackson de Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Confraternização de Final de Ano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', NULL, NULL, NULL, NULL, '2019-12-20', NULL, NULL, NULL, NULL, '19:30hrs', NULL, NULL, NULL, NULL, 124, 104, 121, 132, 'Jeiza Rafaela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marciria Gabryella FloresLima Santos', NULL, NULL, NULL, NULL, NULL, 'Secretária da Sociedade de Socorro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deyvid Richard de Azevedo Bezerra (Arrependimento)', 'Genilsson Lisboa dos Santos (Poder para vencer o Adversário)', 'Cristiane Rosy Chagas Lobo (Jejum)', '5', '10', '15', '1', '2019-12-14 16:31:14', '2019-12-15 09:52:21'),
(196, 49, 'Maceió Tabuleiro', 'Tabuleiro', 80, '2019-12-15', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', 'Antônio brasiliano', 'Romário Enrique da Silva', NULL, NULL, 'Sumo concelheiro', 'Sumo concelheiro', NULL, NULL, 'Devocional de natal da estaca Tabuleiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-22', NULL, NULL, NULL, NULL, '17:00', NULL, NULL, NULL, NULL, 44, 112, 122, 134, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', 'Danilo Ribeiro', 'Rosa Pereira Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Isabelle hortência', 'Tiago Marinho', 'Pollyane Cardoso', NULL, NULL, NULL, '1', '2019-12-15 08:11:29', '2019-12-15 09:35:14'),
(197, 321, 'Maceió Tabuleiro', 'Benedito Bentes', 98, '2019-12-15', 'Bispo Fernando Santos', 'Alexandre Carlos da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 103, 1, 1, 'Ruth Grazielle Lessa Coelho', 'Gerson Bernardino do Vale Júnior', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-15 09:37:36', '2019-12-15 14:39:47'),
(198, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 61, '2019-12-22', 'Presidente Genival dos Santos', 'Bispo Radmellys Carlos Lõbo', 'Genival dos santos', NULL, NULL, NULL, 'Presidente da Estaca Tabuleiro', NULL, NULL, NULL, 'Confraternização de Final de Ano em conjunto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Capela do Benedito Bentes', NULL, NULL, NULL, NULL, '2019-12-27', NULL, NULL, NULL, NULL, '19:00hrs', NULL, NULL, NULL, NULL, 12, 112, 126, 133, 'Ghabryella Karla Chagas Lõbo Couto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Keven Max Moraes da Silva', 'José Deivisson da Silva', 'Laewerton Livramento de Melo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder White/Elder Monson Sendo 05 minutos cada um.', '1° conselheiro Juarez Jackson de Lima Santos', 'Bispo Radmellys Carlos Lõbo', '10', '15', '15', '1', '2019-12-21 19:31:56', '2019-12-22 09:57:15'),
(199, 49, 'Maceió Tabuleiro', 'Tabuleiro', 68, '2019-12-22', 'Bispo Flávio Ferreira de Vasconcelos', 'Tiago Marinho', 'Messias da Silva', NULL, NULL, NULL, 'Sumo concelheiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121, 98, 125, 131, 'Shirley Maria dos Santos Vasconcelos', 'Joallisson José da Silva', 'Acácia da Silva Vieira', 'Maniuson Batista Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Izabel kaylanne Vieira Alves', NULL, NULL, NULL, NULL, 'Elder Ethan Helm', NULL, NULL, NULL, NULL, 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Murilo augusto soares Ribeiro', 'Shirley Maria dos Santos Vasconcelos', 'Bispo Flávio Ferreira de Vasconcelos', NULL, NULL, NULL, '1', '2019-12-21 22:49:28', '2019-12-22 09:23:37'),
(200, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 82, '2019-12-22', 'Bispo Fernando Santos', 'Ademar Leandro Vasconcelos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Confraternização de natal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27', NULL, NULL, NULL, NULL, '19hs', NULL, NULL, NULL, NULL, 122, 105, 132, 133, NULL, NULL, 'ADEILSON CRUZ DA Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alexandre Carlos', 'ADEMAR LEANDRO', 'Bispo fernando', NULL, NULL, NULL, '1', '2019-12-22 10:18:07', '2019-12-29 09:17:05'),
(201, 423, 'Maceió Tabuleiro', 'Caetés', 94, '2019-03-24', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 101, 142, 197, 'Amanda', 'Wil Robson de Souza', 'Cristina Silva Novais', 'Nayana Leticia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roger\'s Ferreira', 'Alex Souza dos Anjos', 'Bispo Barros', NULL, NULL, NULL, '1', '2019-12-23 16:01:15', '2019-12-23 16:21:05'),
(202, 423, 'Maceió Tabuleiro', 'Caetés', 94, '2019-03-31', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 106, 171, 1, 'Amanda', 'Wil Robson de Souza', 'Tulio dos Santos', 'Cristina Pinto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Kozlowisk', 'Maryela', 'Antonio carlos', NULL, NULL, NULL, '1', '2019-12-23 16:08:55', '2019-12-23 16:20:42'),
(203, 423, 'Maceió Tabuleiro', 'Caetés', 112, '2019-04-14', 'Pres.Fábio', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 199, 104, 1, 183, 'Amanda', 'Wil Robson de Souza', 'Maxuel Ribeiro', 'Jackson da Silva Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-23 16:17:47', '2019-12-23 16:20:04'),
(204, 423, 'Maceió Tabuleiro', 'Caetés', 91, '2019-04-21', 'Genival', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 196, 102, 120, 3, 'Amanda', 'Wil Robson de Souza', 'Claudia Silva', 'Themistrocles Lopes das Trevas Neto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Matheus Rodrigo da Silva', 'Maria José alcina da Silva', 'Raissa Feijó Tavares dos Anjos', NULL, NULL, NULL, '1', '2019-12-23 16:25:44', '2019-12-23 16:36:46'),
(205, 423, 'Maceió Tabuleiro', 'Caetés', 95, '2019-04-28', 'Romildo', 'Alex Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 98, 61, 195, 'Amanda', 'Wil Robson de Souza', 'Joelson Silva da Conceição', 'Ytalo Simplicio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Kozlowisk', NULL, 'Paulo Sales', NULL, NULL, NULL, '1', '2019-12-23 16:43:57', '2019-12-23 16:44:20'),
(206, 423, 'Maceió Tabuleiro', 'Caetés', 100, '2019-05-05', 'Pres.Fábio', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 153, 115, 1, 141, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'José Gabriel Cardoso', 'Mércia Dayanne Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-23 16:49:05', '2019-12-23 16:49:56'),
(207, 423, 'Maceió Tabuleiro', 'Caetés', 83, '2019-05-12', 'Romildo', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 101, 1, 191, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'José Gabriel Cardoso', 'Amanda Patricia de Oliveira silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rafael Gomes', NULL, 'Pres.Romildo', NULL, NULL, NULL, '1', '2019-12-23 16:54:04', '2019-12-23 16:54:26'),
(208, 423, 'Maceió Tabuleiro', 'Caetés', 95, '2019-05-19', 'Genival', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 113, 44, 41, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'Gustavo Moroni de Oliveira Cavalcante', 'Marivan Santana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Claudia Cristiane Santos da Silva', 'Adan Rafael Souza dos Anjos', 'presidente Genival', NULL, NULL, NULL, '1', '2019-12-23 21:03:53', '2019-12-23 21:04:13'),
(209, 423, 'Maceió Tabuleiro', 'Caetés', 92, '2019-05-26', 'Bispo Barros', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 114, 25, 180, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'Taiane Rodrigues das Trevas', 'Elizabet Mariely Aguirre Escobedo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'elder Pires', NULL, 'Bispo Barros', NULL, NULL, NULL, '1', '2019-12-23 21:36:53', '2019-12-23 21:37:13'),
(210, 423, 'Maceió Tabuleiro', 'Caetés', 96, '2019-06-02', 'Pres.Fábio', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, 102, 1, 66, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'Quiteria Silvino', 'Lenildo Silvino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-23 21:40:07', '2019-12-23 21:40:22'),
(211, 423, 'Maceió Tabuleiro', 'Caetés', 95, '2019-06-09', 'Pres.Fábio', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 115, 26, 83, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'José Gabriel Cardoso', 'Grasiele Lima Alves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caio Ciriaco', NULL, 'pres.Fabio', NULL, NULL, NULL, '1', '2019-12-23 21:45:49', '2019-12-23 21:46:45'),
(212, 423, 'Maceió Tabuleiro', 'Caetés', 83, '2019-06-23', 'Bispo Barros', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 106, 142, 41, 'Amanda Patricia de Oliveira silva', 'Wil Robson de Souza', 'Thayanne Rodrigues das Trevas', 'Joelson Silva da Coceição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'elder Leite', 'Edna Vieira', 'Jackson Silva', NULL, NULL, NULL, '1', '2019-12-23 21:51:02', '2019-12-23 21:51:16'),
(213, 423, 'Maceió Tabuleiro', 'Caetés', 75, '2019-06-30', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 117, 50, 193, 'Thayanne Rodrigues das Trevas', 'Wil Robson de Souza', 'Jackson da Silva Santos', 'Adan Rafael dos Ajos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joâo Victor', 'Temistrocles das Trevas', 'Roger\'s dos Santos Ferreira', NULL, NULL, NULL, '1', '2019-12-23 22:01:12', '2019-12-23 22:01:49'),
(214, 423, 'Maceió Tabuleiro', 'Caetés', 68, '2019-07-07', 'Pres.Fábio', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, 115, 1, 79, 'Thayanne Rodrigues das Trevas', 'Wil Robson de Souza', 'João Vitor Bezerra Monteiro', 'Joelson Silva da Coceição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 13:49:41', '2019-12-24 13:50:11'),
(215, 423, 'Maceió Tabuleiro', 'Caetés', 91, '2019-07-14', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 112, 147, 73, 'Mercia Dayane Rodrigues', 'Wil Robson de Souza', 'Alvaro Victor Brito', 'Osnaldo Brito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sebastião Cicero de Oliveira Lima', NULL, 'Jose Antonio Silva dos Santos', NULL, NULL, NULL, '1', '2019-12-24 14:33:26', '2019-12-24 14:33:47'),
(216, 423, 'Maceió Tabuleiro', 'Caetés', 83, '2019-07-21', 'Pres.Fábio', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 106, 3, 197, 'Thayanne Rodrigues das Trevas', 'Wil Robson de Souza', 'Matheus Rodrigo da Silva Santos', 'Cicero Fabio Ferreira da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thayane Rodrigues das Trevas', 'Maria Gerlane Souza', 'Roberta Jaqueline Ferreira', NULL, NULL, NULL, '1', '2019-12-24 14:34:34', '2019-12-24 14:40:03'),
(217, 423, 'Maceió Tabuleiro', 'Caetés', 93, '2019-07-28', 'Romildo', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 104, 135, 80, 'Thayanne Rodrigues das Trevas', 'Wil Robson de Souza', 'Jivanildo Vieira', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jose Gabriel Cardoso', 'Lenildo Silvino da Silva', 'Alex Anjos', NULL, NULL, NULL, '1', '2019-12-24 14:44:10', '2019-12-24 14:44:29'),
(218, 423, 'Maceió Tabuleiro', 'Caetés', 90, '2019-08-04', 'Genival', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 105, 1, 143, 'Mercia Dayane Rodrigues', 'Wil Robson de Souza', 'Joelson Silva da Conceição', 'Rosangela Leite dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:47:14', '2019-12-24 14:47:28'),
(219, 423, 'Maceió Tabuleiro', 'Caetés', 89, '2019-08-11', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 115, 1, 25, 'Thayanne Rodrigues das Trevas', 'Wil Robson de Souza', 'Matheus santos', 'Adan Rafael dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ewerton erbert silva de araujo', 'natali maria de lima', NULL, NULL, NULL, NULL, '1', '2019-12-24 14:52:25', '2019-12-24 14:53:04'),
(220, 423, 'Maceió Tabuleiro', 'Caetés', 83, '2019-08-18', 'Romildo', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:54:04', '2019-12-24 14:54:21'),
(221, 423, 'Maceió Tabuleiro', 'Caetés', 139, '2019-08-25', 'Genival', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:54:57', '2019-12-24 14:55:12'),
(222, 423, 'Maceió Tabuleiro', 'Caetés', 73, '2019-09-01', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:55:49', '2019-12-24 14:56:00'),
(223, 423, 'Maceió Tabuleiro', 'Caetés', 98, '2019-09-08', 'Genival', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:56:35', '2019-12-24 14:56:49'),
(224, 423, 'Maceió Tabuleiro', 'Caetés', 86, '2019-09-15', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:57:15', '2019-12-24 14:57:26'),
(225, 423, 'Maceió Tabuleiro', 'Caetés', 94, '2019-09-22', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:57:49', '2019-12-24 14:58:01'),
(226, 423, 'Maceió Tabuleiro', 'Caetés', 84, '2019-09-29', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:58:34', '2019-12-24 14:58:46'),
(227, 423, 'Maceió Tabuleiro', 'Caetés', 63, '2019-10-20', 'Roberto Freitas', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 14:59:35', '2019-12-24 14:59:51'),
(228, 423, 'Maceió Tabuleiro', 'Caetés', 72, '2019-10-27', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 15:00:23', '2019-12-24 15:00:35'),
(229, 423, 'Maceió Tabuleiro', 'Caetés', 64, '2019-11-03', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-24 15:01:10', '2019-12-24 15:01:20'),
(230, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 71, '2019-12-29', 'Bispo Radmellys Carlos lobo', '1°Conselheiro Juarez Jakson de Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123, 104, 122, 133, 'Jeiza Rafaela da Silva de Souza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gabriele Lisboa dos Santos', 'Karyny Couto Belo Ramalho', 'Diogo Bandeira Ramalho', '5', '10', '15', '1', '2019-12-28 19:04:27', '2019-12-29 10:47:27'),
(231, 49, 'Maceió Tabuleiro', 'Tabuleiro', 78, '2019-12-29', 'Bispo Flávio Ferreira de Vasconcelo', 'Cícero Vieira do nascimento', 'Romário Henrique da Silva', 'Raúl Silva Lima', NULL, NULL, 'Sumo concelheiro', 'Sumo concelheiro', NULL, NULL, 'Reunião sacramental próximo domingo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10:20', NULL, NULL, NULL, NULL, 12, 112, 77, 191, NULL, NULL, 'Luciene da Silva Santos', 'Geremias José Macena da Silva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acácia da Silva Vieira', 'Nathalia karolyne de oliveira Firmino', 'Seni lira de oliveira nascimento', NULL, NULL, NULL, '1', '2019-12-29 06:46:14', '2019-12-29 09:48:10'),
(232, 262, 'Maceió Tabuleiro', 'Universitário', 0, '2019-12-29', 'erick wesley melo de frança', 'Darlley Rodrigo Bezerra da Silva', 'Romildo Lució dos Santos', NULL, NULL, NULL, 'Primeiro Conselheiro da estaca', NULL, NULL, NULL, 'ghnghng', 'mnhgmn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0015-12-15', '0015-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 3, 16, 17, 'Marjorie Louise De Moraes Pereira d', 'Julio Campos Lopes', 'Cintia Santos da Silva', 'Sanderly Sandes Lins Dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Junior César Antonio da Silva', 'Maria José Lima Soares', 'Darlley Rodrigo Bezerra da Silva', NULL, NULL, NULL, '1', '2019-12-29 08:31:14', '2019-12-29 08:31:45'),
(233, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 0, '2019-12-29', 'Bispo Fernando Santos', 'Alexandre Carlos', 'ADEILSON CRUZ DA silva', NULL, NULL, NULL, 'Sumo conselho', NULL, NULL, NULL, 'Excelência das Moças', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-29', NULL, NULL, NULL, NULL, '18hs', NULL, NULL, NULL, NULL, 14, 110, 26, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elder Paz', 'Jean Pierri', 'Bispo fernando', NULL, NULL, NULL, '1', '2019-12-29 09:40:20', '2019-12-29 09:40:20'),
(234, 218, 'Maceió Tabuleiro', 'Gurguri', 75, '2019-12-29', 'Presidente Freitas', 'Junior Santana', 'Presidente Freitas', 'Rafael Gomes', NULL, NULL, '2 Conselheiro da estaca', 'Secretário da Estaca', NULL, NULL, 'Excelência das Moças', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurguri', NULL, NULL, NULL, NULL, '2019-12-29', NULL, NULL, NULL, NULL, '16 horas', NULL, NULL, NULL, NULL, 16, 112, 151, 79, 'Amanda Patricia', NULL, 'Dgina Lins', 'José Cicero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fabiana', 'Everton', 'João', NULL, NULL, 'Willian Robert de Souza Farias', 'Junior Santana', 'Elder Bergentem', NULL, NULL, 'Élder', 'Sumo Sacerdote', 'Élder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Môroni', 'José Cicero', 'felipe', 'thalytuan', 'PEDRO', NULL, 'ELDER HASLAM', 'ELDER BERGENTEM', 'Renata Oliveira', '5', '5', '15', '1', '2019-12-29 16:47:19', '2019-12-29 16:47:34'),
(235, 423, 'Maceió Tabuleiro', 'Caetés', 73, '2019-10-10', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 114, 196, 197, 'alcina rodrigues', 'Wil Robson de Souza', 'grazielle lima alves', 'Marcos Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alcina Rodrigues', 'Rosival Santos', NULL, NULL, NULL, NULL, '1', '2019-12-30 14:47:37', '2019-12-30 14:51:03'),
(236, 423, 'Maceió Tabuleiro', 'Caetés', 66, '2019-12-08', 'Bispo Barros', 'Alex dos Anjos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 124, 106, 1, 132, 'Mercia Dayane Rodrigues', 'Wil Robson de Souza', 'Edna Sales', 'Joelson Silva da Coceição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-30 14:55:50', '2019-12-30 14:56:04'),
(237, 423, 'Maceió Tabuleiro', 'Caetés', 60, '2019-11-17', 'Roberto Freitas', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-30 15:09:31', '2019-12-30 15:09:53'),
(238, 423, 'Maceió Tabuleiro', 'Caetés', 62, '2019-12-15', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-30 15:11:41', '2019-12-30 15:12:42'),
(239, 423, 'Maceió Tabuleiro', 'Caetés', 69, '2019-11-24', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-30 15:17:24', '2019-12-30 15:17:41'),
(240, 423, 'Maceió Tabuleiro', 'Caetés', 84, '2019-12-22', 'Bispo Barros', 'Roger\'s Ferreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2019-12-30 15:19:11', '2019-12-30 15:19:25'),
(241, 423, 'Maceió Tabuleiro', 'Caetés', 71, '2019-12-29', 'Bispo Barros', 'Bispo Barros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 114, 142, 80, 'Mercia Dayane Rodrigues', 'Wil Robson de Souza', 'Edna Vieira', 'adriano ramos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'elder blesinger', 'izaias gomes', 'Bispo Barros', NULL, NULL, NULL, '1', '2019-12-30 15:23:10', '2019-12-30 15:23:26'),
(242, 444, 'Maceió Tabuleiro', 'Cachoeira do Meirim', 64, '2020-01-05', 'Bispo Radmellys Carlos lobo', 'Bispo Radmellys Carlos Lobo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana ao Templo', 'Devocional Mundial para Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca', 'Capela B.Bentes', NULL, NULL, NULL, '2020-01-11', '2020-01-12', NULL, NULL, NULL, 'Saida dia 10 as 19:00hrs', '18:00hrs horario de Salt Lake', NULL, NULL, NULL, 12, 104, 1, 136, 'Ghabryella Karla Chagas Lõbo Couto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gabriel Lisboa dos santos', 'José Diego de azevedo Bezerra', NULL, NULL, NULL, NULL, 'Avanço no Sacerdocio Aaronico oficio de Diacono', 'Avanço no Sacerdocio Aaronico oficio de Diacono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dia de testemunhos da Congregação', 'Dia de Testemunhos da Congregação', 'Dia de testemunhos da Congregação', NULL, NULL, NULL, '1', '2020-01-04 21:27:31', '2020-01-05 09:51:06'),
(243, 262, 'Maceió Tabuleiro', 'Universitário', 0, '0020-01-05', 'Antonio Rogério Carlos', 'erick wesley melo de frança', 'Romildo Lució dos Santos', NULL, NULL, NULL, 'Primeiro Conselheiro da estaca', NULL, NULL, NULL, 'caravana ao templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-01-05 08:25:46', '2020-01-05 08:25:46'),
(244, 262, 'Maceió Tabuleiro', 'Universitário', 0, '2020-01-05', 'Antonio josé Rogério Carlos', 'erick wesley melo de frança', 'Romildo Lució dos Santos', NULL, NULL, NULL, 'Primeiro Conselheiro da estaca', NULL, NULL, NULL, 'caravana ao templo', 'Limpeza da Capela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sede da estaca', 'Ala Universitário', NULL, NULL, NULL, '2020-01-10', '2020-01-11', NULL, NULL, NULL, 'as 19:00 horas', 'as 16:00 horas', NULL, NULL, NULL, 71, 101, 1, 26, 'Marjorie Louise De Moraes Pereira d', 'Julio Campos Lopes', 'José luiz dos santos', 'Girleide Maria Alves Carlos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '------------------- testemunho-----------------------', '------------------testesmunho------------------------', '---------Testemunho---------', '1 munito', '1 minuto', '10', '1', '2020-01-05 08:39:20', '2020-01-05 08:54:32'),
(245, 49, 'Maceió Tabuleiro', 'Tabuleiro', 82, '2020-01-05', 'Bispo Flávio Ferreira de Vasconcelo', 'Bispo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caravana para o templo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-10', NULL, NULL, NULL, NULL, '19:00', NULL, NULL, NULL, NULL, 71, 106, 1, 12, 'Shirley Maria dos Santos Vasconcelo', 'Joallisson José da Silva', 'Thiago Marinho de Gusmão', 'Cícero vieira do nascimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seni lira de oliveira nascimento', NULL, NULL, NULL, NULL, NULL, 'Líder de templo e história da família', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-01-05 09:18:03', '2020-01-05 10:41:04'),
(246, 37, 'Maceió Tabuleiro', 'Benedito Bentes', 70, '2020-01-05', 'Bispo Fernando Santos', 'Ademar Leandro Vasconcelos da Silva', 'Adeilson Cruz da Silva', NULL, 'Rau Lima', NULL, 'Sumo conselho', NULL, 'Sumo Conselho', NULL, 'Reunião geral trimestral com as lideranças das Alas', 'Devocional Mundial para Jovens Adultos Solteiros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sede da Estaca Tabuleiro', 'Capela do Benedito Bentes', NULL, NULL, NULL, '2020-01-12', '2020-01-12', NULL, NULL, NULL, '16:00', '18:00', NULL, NULL, NULL, 12, 112, 1, 62, 'Ruth Grazielle Lessa', 'Elder Eross', 'Fátima Santos', 'Lidiane Pamela dos Santos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-01-05 09:48:21', '2020-01-05 11:44:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `self_reliances`
--

CREATE TABLE `self_reliances` (
  `id` int(10) UNSIGNED NOT NULL,
  `stake` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `grupo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `ativo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `self_reliances`
--

INSERT INTO `self_reliances` (`id`, `stake`, `ward`, `user_id`, `grupo`, `status`, `ativo`, `created_at`, `updated_at`) VALUES
(3, 'Maceió Tabuleiro', 'Tabuleiro', 49, 'Finanças Pessoais', '1', '1', '2018-03-25 19:36:38', '2018-03-25 19:36:38'),
(4, 'Maceió Tabuleiro', 'Pratagy', 51, 'Finanças Pessoais', '2', '1', '2018-04-29 16:12:46', '2018-07-08 20:35:57'),
(5, 'Maceió Tabuleiro', 'Pratagy', 1, 'Finanças Pessoais', '2', '1', '2018-04-29 19:00:05', '2018-06-27 22:05:06'),
(6, 'Maceió Tabuleiro', 'Pratagy', 21, 'Finanças Pessoais', '2', '1', '2018-05-06 19:51:41', '2018-07-08 20:21:04'),
(7, 'Maceió Tabuleiro', 'Pratagy', 133, 'Finanças Pessoais', '2', '1', '2018-05-07 00:07:27', '2018-07-08 20:36:05'),
(8, 'Maceió Tabuleiro', 'Pratagy', 23, 'Finanças Pessoais', '2', '1', '2018-05-07 12:20:05', '2018-07-08 20:21:15'),
(9, 'Maceió Tabuleiro', 'Pratagy', 21, 'Iniciar e Melhorar Meu Negócio', '1', '1', '2018-05-07 17:44:17', '2018-05-07 17:44:17'),
(10, 'Maceió Tabuleiro', 'Pratagy', 54, 'Finanças Pessoais', '2', '1', '2018-05-07 22:51:11', '2018-07-05 19:29:11'),
(11, 'Maceió Tabuleiro', 'Pratagy', 155, 'Finanças Pessoais', '1', '1', '2018-05-20 11:58:56', '2018-05-20 11:58:56'),
(12, 'Maceió Tabuleiro', 'Pratagy', 156, 'Iniciar e Melhorar Meu Negócio', '1', '1', '2018-05-20 18:58:07', '2018-05-20 18:58:07'),
(13, 'Maceió Tabuleiro', 'Pratagy', 133, 'Finanças Pessoais', '2', '1', '2018-05-27 11:08:43', '2018-07-05 23:02:23'),
(14, 'Maceió Tabuleiro', 'Aeroclube', 174, 'Finanças Pessoais', '1', '1', '2018-05-27 13:10:43', '2018-05-27 13:10:43'),
(15, 'Maceió Tabuleiro', 'Pratagy', 174, 'Finanças Pessoais', '1', '1', '2018-05-27 16:43:02', '2018-05-27 16:43:02'),
(16, 'Maceió Tabuleiro', 'Pratagy', 134, 'Finanças Pessoais', '1', '1', '2018-05-27 17:27:49', '2018-05-27 17:27:49'),
(17, 'Maceió Tabuleiro', 'Pratagy', 44, 'Finanças Pessoais', '2', '1', '2018-06-02 12:30:07', '2018-06-27 22:06:37'),
(18, 'Maceió Tabuleiro', 'Pratagy', 183, 'Finanças Pessoais', '2', '1', '2018-06-02 12:32:41', '2018-06-27 22:08:10'),
(19, 'Maceió Tabuleiro', 'Pratagy', 89, 'Finanças Pessoais', '2', '1', '2018-06-10 21:08:03', '2018-07-08 20:26:03'),
(20, 'Maceió Tabuleiro', 'Pratagy', 159, 'Educação para um Emprego Melhor', '1', '1', '2018-06-10 21:17:33', '2018-06-10 21:17:33'),
(21, 'Maceió Tabuleiro', 'Pratagy', 141, 'Educação para um Emprego Melhor', '1', '1', '2018-06-10 21:19:40', '2018-06-10 21:19:40'),
(22, 'Maceió Tabuleiro', 'Pratagy', 25, 'Educação para um Emprego Melhor', '1', '1', '2018-06-10 21:31:39', '2018-06-10 21:31:39'),
(23, 'Maceió Tabuleiro', 'Pratagy', 192, 'Educação para um Emprego Melhor', '1', '1', '2018-06-10 21:37:07', '2018-06-10 21:37:07'),
(24, 'Maceió Tabuleiro', 'Pratagy', 174, 'Educação para um Emprego Melhor', '1', '1', '2018-06-10 21:49:03', '2018-06-10 21:49:03'),
(25, 'Maceió Tabuleiro', 'Pratagy', 114, 'Finanças Pessoais', '2', '1', '2018-06-11 16:30:07', '2018-07-08 20:35:30'),
(26, 'Maceió Tabuleiro', 'Pratagy', 199, 'Finanças Pessoais', '2', '1', '2018-06-13 21:25:17', '2018-07-08 20:29:54'),
(27, 'Maceió Tabuleiro', 'Pratagy', 202, 'Finanças Pessoais', '1', '1', '2018-06-15 16:30:46', '2018-06-15 16:30:46'),
(28, 'Maceió Tabuleiro', 'Pratagy', 204, 'Educação para um Emprego Melhor', '1', '1', '2018-06-18 14:51:10', '2018-06-18 14:51:10'),
(29, 'Maceió Tabuleiro', 'Pratagy', 178, 'Finanças Pessoais', '1', '1', '2018-06-20 09:26:21', '2018-06-20 09:26:21'),
(30, 'Maceió Tabuleiro', 'Pratagy', 134, 'Educação para um Emprego Melhor', '1', '1', '2018-06-29 11:07:44', '2018-06-29 11:07:44'),
(31, 'Maceió Tabuleiro', 'Pratagy', 129, 'Finanças Pessoais', '2', '1', '2018-07-08 21:04:22', '2018-07-18 08:59:45'),
(32, 'Maceió Tabuleiro', 'Universitário', 14, 'English Connect 1 e 2', '1', '1', '2019-01-22 10:45:23', '2019-01-22 10:45:23'),
(33, 'Maceió Tabuleiro', 'Universitário', 72, 'English Connect 1 e 2', '1', '1', '2019-01-22 10:50:25', '2019-01-22 10:50:25'),
(34, 'Maceió Tabuleiro', 'Universitário', 287, 'English Connect 1 e 2', '1', '1', '2019-01-22 11:31:52', '2019-01-22 11:31:52'),
(35, 'Maceió Tabuleiro', 'Pratagy', 44, 'English Connect 1 e 2', '1', '1', '2019-01-22 13:50:13', '2019-01-22 13:50:13'),
(36, 'Maceió Tabuleiro', 'Pratagy', 339, 'English Connect 1 e 2', '1', '1', '2019-01-22 13:51:43', '2019-01-22 13:51:43'),
(40, 'Maceió Tabuleiro', 'Pratagy', 352, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:02:03', '2019-01-22 14:02:03'),
(41, 'Maceió Tabuleiro', 'Pratagy', 25, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:11:13', '2019-01-22 14:11:13'),
(42, 'Maceió Tabuleiro', 'Pratagy', 89, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:26:05', '2019-01-22 14:26:05'),
(43, 'Maceió Tabuleiro', 'Pratagy', 54, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:37:33', '2019-01-22 14:37:33'),
(44, 'Maceió', 'Farol', 353, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:56:44', '2019-01-22 14:56:44'),
(45, 'Maceió Tabuleiro', 'Pratagy', 114, 'English Connect 1 e 2', '1', '1', '2019-01-22 14:58:18', '2019-01-22 14:58:18'),
(46, 'Maceió Tabuleiro', 'Pratagy', 108, 'English Connect 1 e 2', '1', '1', '2019-01-22 15:04:48', '2019-01-22 15:04:48'),
(47, 'Maceió Tabuleiro', 'Gurguri', 227, 'English Connect 1 e 2', '1', '1', '2019-01-22 15:21:30', '2019-01-22 15:21:30'),
(48, 'Maceió Tabuleiro', 'Pratagy', 51, 'English Connect 1 e 2', '1', '1', '2019-01-22 15:39:20', '2019-01-22 15:39:20'),
(49, 'Maceió Tabuleiro', 'Tabuleiro', 77, 'English Connect 1 e 2', '1', '1', '2019-01-22 15:49:56', '2019-01-22 15:49:56'),
(50, 'Maceió Tabuleiro', 'Benedito Bentes', 130, 'English Connect 1 e 2', '1', '1', '2019-01-22 15:51:03', '2019-01-22 15:51:03'),
(51, 'Maceió Tabuleiro', 'Pratagy', 354, 'English Connect 1 e 2', '1', '1', '2019-01-22 16:07:36', '2019-01-22 16:07:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgao_exp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_nasc` date NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stake` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `genre`, `rg`, `orgao_exp`, `dt_nasc`, `phone`, `uf`, `city`, `stake`, `ward`, `email`, `password`, `ativo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DAVI', 'BISPO DE OLIVEIRA', 'M', '2007559', 'SSP AL', '1982-07-11', '(82) 9 9969-3407', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'davi-bispo@hotmail.com', '$2y$10$rMCBMUqgfDPLsgmp/D8qj.7PHz2y/EtiwTNgqeGyLpfiUfoSz/uv6', 1, 'RgrExCsLGFL6XCva1QsefQXGAl2Zf1SN5CUi193HmCc4Nk7CNXReApbzYooh', '2018-02-27 14:10:05', '2019-12-26 22:52:30'),
(3, 'DARLLEY RODRIGO', 'BEZERRA DA SILVA', 'M', '2002006020342', 'SSP-AL', '1990-05-25', '99302-1068', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'darlley.silva2006@outlook.com', '$2y$10$clPt0Pp5amvjhKqdbyKUZO19Br5rvlb5zd8AZ3VpfCF/eOQ3FFMzu', 1, 'Pe6sqZ3SWVqnWm3ToLjc8YqRoeM3uO9kexIyFLIv6g4YE1tear5YevpX8V2s', '2018-03-01 17:26:50', '2018-10-30 08:57:56'),
(4, 'FABIO', 'SILVA', 'M', '2001001217415', 'SSP/AL', '1987-06-24', '987073118', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'cicerosilva_sud@hotmail.com', '$2y$10$a5h8b1KwDR/ERNpEsBAaW.pNu1Pq7bx7hwP3ZqOioQm0bhu3P.d0.', 1, '0dPpwqnWwGiYr5iw8YOZUZERGiEc6CyY9Q5BEJIRdfCunN2ca5fvrDXcORWu', '2018-03-01 18:38:21', '2019-09-03 13:03:03'),
(5, 'MARCOS PEDRO', 'DA SILVA', 'M', '1999001002709', 'AL', '1981-10-22', '988779092', 'AL', 'Maceió', 'Maceió Litoral', 'Prado', 'macpedro8@gmail.com', '$2y$10$vuwOTSIVlja7kZohA2yCH.Oc2OxgTtnzrTonm3N.mt5gMzW.TV65W', 1, 'V0bzNAnylQB2FerNDuc4kisziHKL3UJiHPJPWGRmIj946HomFpjiDn14Spq9', '2018-03-01 18:58:33', '2018-03-01 18:58:33'),
(6, 'ELITON S.', 'OLIVEIRA', 'M', '2033819', 'SSPAL', '1982-02-09', '998006439', 'AL', 'São Miguel dos Campos', 'Maceió Litoral', 'São Miguel dos Campos', 'secretarioconselhodeareamaceio@gmail.com', '$2y$10$QCpgTMjmJ/co6XtiRdsKzOckqfGujnI60pFYKsmtK1.0uMFyZDxC.', 1, 'hSZRkj6cLunVhLVcWBWSJfRSOzyZNLqQFHq09LbVP3J8ZsVKXY9Mw0AH29lb', '2018-03-01 22:03:54', '2018-03-17 18:04:24'),
(7, 'JAILSON', 'OLIVEIRA', 'M', '1953249', 'SSP/AL', '1981-05-03', '99931-5098', 'AL', 'Arapiraca', 'Arapiraca', 'Primavera', 'jailsonroliveira@gmail.com', '$2y$10$EPn2c5TdMLRns/wdF.UbCu6TjlY8cqtiRGkBN4AJafUHZvqtokAai', 1, NULL, '2018-03-02 07:18:33', '2018-03-02 07:18:33'),
(8, 'RUBENS BAPTISTA DO', 'PRADO', 'M', '70843461', 'DETRAN RJ', '1971-05-17', '79996600070', 'SE', 'Aracaju', 'Aracaju Sul', 'Aruana', 'bispo.prado@gmail.com', '$2y$10$FZV5/izdQ3Aov6UCqij1HuytFyK02NMJLAavhnKh6MMJVIexEmKEm', 1, 'VXIlbO14SXE2u0wmUOAXbX8r0u4kh5tp1MWXZiclGe4TxRXs7ipr3qEbdvhU', '2018-03-02 07:53:05', '2018-03-02 07:53:05'),
(9, 'ROMILDO', 'SANTOS', 'M', '883503', 'SSP AL', '1967-04-21', '988181361', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'romildo_celia@hotmail.com', '$2y$10$DMlSrwG.nUePVm7oVQ/ufuONp22YyWrREp.EOdpvVr62AnzHEy6fu', 1, 'h07ZqAcUStadMG1CGJkwfUtI0kV9hsgBLqVtH6FmnWBMU4P1HLEXxMNyv4B3', '2018-03-02 09:30:12', '2019-10-30 13:36:58'),
(10, 'ANTONIO CARLOS', 'SOARES LIMA', 'M', '1045725', 'SSP/SE', '1971-11-13', '79988491078', 'SE', 'Aracaju', 'Aracaju Sul', 'Grageru 1', 'antoniocarloslimase@gmail.com', '$2y$10$vQ/zzBTB1woVQZRBrEocrO9W/YW8vfXM9cXewsm7BCjzcl.0cKPoW', 1, NULL, '2018-03-02 09:46:10', '2018-03-02 09:46:10'),
(11, 'JOSé ERASMO', 'DE PáDUA WALFRIDO', 'M', '5059582', 'SDSPE', '1976-05-25', '991327281', 'AL', 'Maceió', 'Maceió Pajuçara', 'Jatiúca', 'erasmodepadua@hotmail.com', '$2y$10$0D455mVpWMSXGnGjLw0YcucbeBq8x8Q5mszHIL4DuOg/EbUT9HGJS', 1, NULL, '2018-03-02 12:44:22', '2018-03-02 12:44:22'),
(12, 'JUVINO', 'ALVES', 'M', '1126343', 'SSP', '1974-01-10', '(82) 987146505', 'AL', 'Maceió', 'Maceió Colina', 'Paraíso', 'juvinosud@hotmail.com', '$2y$10$qkEYZwQNcMwzLpepBdUh8OxZmJD2iODwG8x.R8JTfeoyIy.S.GnzG', 1, NULL, '2018-03-02 12:59:48', '2018-03-02 12:59:48'),
(13, 'DINIO', 'GóES', 'M', '34268494', 'SSP/SP', '1984-03-09', '82994029969', 'AL', 'Maceió', 'Maceió', 'José Tenório', 'dinio.goes@ldschurch.org', '$2y$10$j4Zj7l3JiVXNks5U/NZbx.Kb4UKR.xlOgjytLhfwOntvzTGlv11g2', 1, NULL, '2018-03-02 15:36:45', '2018-03-02 15:36:45'),
(14, 'RAFAEL', 'SOUZA GOMES', 'M', '2001001228964', 'SSP/AL', '1988-11-01', '(82) 99644-6798', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'rafaelsouzagomes@hotmail.com.br', '$2y$10$nSv7p5V22HEon38pp3Y9fe00NxXwL7hcMDMjU7O20ZVGjPI5VVj2u', 1, 'mwnZIybeM22REa2beYBvCQ2tUwSrtlNdVwtmZWDeFOWvjZlvHYaj24GzRRWC', '2018-03-04 07:40:11', '2019-09-01 18:52:28'),
(19, 'CLAUDIVAN', 'VIEIRA', 'M', '21166668', 'SSP/SE', '1984-07-02', '79991077414', 'SE', 'Aracaju', 'Aracaju Norte', 'Centenário', 'bob.2012sergipe@gmail.com', '$2y$10$DhJWlfs4puraR.ZNw7rkC.3H1/dNTW24pO6imnVycxh6uurGrC7.G', 1, 'HUCTGT5xVybjOapNZmBrYOL2GzhmgVFYmwEKbjSkVPamDHIRE6GCYN6cBmJ9', '2018-03-04 22:41:58', '2018-03-04 22:41:58'),
(21, 'RAUL', 'LIMA', 'M', '1700057', 'SSPAL', '2018-03-05', '82988797689', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'raullima22@hotmail.com', '$2y$10$2mdxpGp0fJ2NTPe/9UYcdOFQ0VqC8SLXMiHhHGWOIrtXefedWii3W', 1, 'HYLtPAXj8upM9WQvm4dZZBGXAzSiN8xlYafjvrtWAVTEt7W9zAyPpxsjtAP7', '2018-03-05 15:27:09', '2019-11-10 22:35:38'),
(22, 'MAURICIO', 'IMBROISI', 'M', '99001078185', 'SSP AL', '1983-05-01', '988293175', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'imbroisimcz@gmail.com', '$2y$10$Vp4lFewCaeTYe1M2u5qJk.8661mLveOnamQI//CN.zqf7Tr5DLEj6', 1, 'l53Jh9UXyrDUBtIF3PdlkQ3sSrncAMtSPI053lOMU2UQMv3kWq0DSw03J2Km', '2018-03-05 15:34:27', '2018-03-05 15:34:27'),
(24, 'TIAGO', 'MARINHO DE GUSMAO', 'M', '6751226483', 'AL', '1990-07-11', '82987193564', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'marinhotiago035@gmail.com', '$2y$10$.b/xdjNpCjMtpQt9no3X2OMKu.AoXXrR3aY60nU97vR04ql7nEJo.', 1, 'fc504mTQLzWTiiPxPcEpgjv1iJNUXK5xj4YiZUht2XMNCbL6NzptUWJe3pvv', '2018-03-05 16:50:31', '2018-05-18 18:57:24'),
(25, 'JOSé ROBERTO ', 'CAVALCANTI DE FREITAS', 'M', '5757498', 'SSP-PE', '1982-07-15', '82999073774', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Pratagy', 'jrc-freitas@live.com', '$2y$10$NF36ffMloUF3bafQCBKQcO.qBNCwQNWdhCd4XMDx018RZJbuqOygy', 1, 'INbhwkomxZicrrCxvaWeNhmZyf39eK26znWWF8lwYkAkjsRrrWVHcCzKmz5r', '2018-03-05 17:45:29', '2018-03-05 17:45:29'),
(26, 'JOSÉ LUIZ', 'DA SILVA', 'M', '98001122003', 'SSP/AL', '1979-10-10', '82988274089', 'AL', 'Atalaia', 'Maceió Tabuleiro', 'Aeroclube', 'j.luiz_silvac@hotmail.com', '$2y$10$ATM9JFYdcosvSPF1xX5vO.cLw1dV82lEfDV2MDISaaPDCeykpSGJq', 1, 'JOcCoHdl3NNwN78UW68zNMouv0ySIdy95NMfGTD5KV8datPINIVomtIWoFPF', '2018-03-06 15:26:52', '2018-03-10 21:18:50'),
(28, 'LUA', 'FELIZOLA SOARES DE MEDEIROS', 'M', '34053590', 'SSP', '1994-07-20', '79991221114', 'SE', 'Aracaju', 'Aracaju Norte', 'Santos Dumont 1', 'luanfmedeiros@hotmail.com', '$2y$10$e3wAppRozPxj1MM.9zV2k.vh4n35DXZEBNII95PUUuAKRinQkDhXy', 1, 'Xp4VCZN2LdU8g2e0L6TVVn6lyZ0Syjwlg0ZnQ7pq7e75PSn0T0N4PE4iTgud', '2018-03-06 15:52:35', '2019-01-29 12:11:27'),
(29, 'MAHIARA', 'SANTOS FARIAS', 'F', '33122628', 'SSP/AL', '1992-09-19', '82988837901', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'mahiara.fs@gmail.com', '$2y$10$Zah1uT0WQnRNkGkC/n7uu.SBFpZmhJpYnALcU5.Y7Yc3eY.i3QIdC', 1, 'LD5qWmjjgYyRig9F1hGn0OTpM27PsW7ayHwdnqEQtylswNytUibBFn1uzilZ', '2018-03-06 16:22:34', '2018-03-06 16:22:34'),
(30, 'JOALLISSON', 'SILVA', 'M', '37106465', 'AL', '1994-01-11', '82999689228', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'joallisson.silva.sud@gmail.com', '$2y$10$bmQJdG.0iRpgeCn7VLMgkunHVCS.1Aj6GGVZi4pDjZw1vVi3QcYBW', 1, 'GWWBOT1F3SJ3YfPLidlh0oNwzBPqwCpSCZS4vqa1wAeecQd44aZGVA9pkorH', '2018-03-06 19:45:07', '2019-09-15 19:22:21'),
(31, 'ADNA MSC', 'DE OLIVEIRA', 'F', '716902', 'SSPAL', '1966-11-01', '82996606954', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'adnaphd@hotmail.com', '$2y$10$n.Y/WI074oiCoteAN5lIXO5CSeRQzL6SfGv/1Ek8PbBEP1mTWAglC', 1, 'x4mMbnx7aMRpcBXsoPF2JuYjqRtv7m2NR5pK28i5mMK04P1dFUYLQK0vL0Up', '2018-03-06 20:39:03', '2018-03-06 20:39:03'),
(32, 'JAMERSON', 'NASCIMENTO', 'M', '34438513', 'AL', '1993-04-04', '82996424637', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'jamesnascimento@outlook.com', '$2y$10$Bjs6fSO7muRThyT11TVEJu/Ymwl.f7bdzxL1N70USXNLJp86W6uo.', 1, 'cAYBJpckafAEKzNrUstXv4cWpqfyxgwGRVKvR9m5ENxXeg8PXq9y7abzpCys', '2018-03-09 16:25:02', '2018-08-21 17:37:16'),
(33, 'DENISE', 'BRAZ', 'F', '33314446', 'SDS AL', '1992-06-10', '82987194916', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'falecomdenisebento@hotmail.com', '$2y$10$vuFYmfapno8QRVaQd6BD/OvOiyxEV2UJJDzSS/gzHxCoIXGpol8tu', 1, '9MdOuokFbzh3Is3nivGQnLHWbRJy5AYiu79qRqyXDyWVAMyunCW0pXte0LuL', '2018-03-09 17:29:33', '2019-02-19 10:06:08'),
(34, 'CICERO PEDRO DA', 'SILVA', 'M', '1260579', 'SSPAL', '1977-04-24', '82988744324', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'cpsilvacp@hotmail.com', '$2y$10$1Pld5fYpDiAwqKg0tX0pk.0ehIxKpZoo99R2GW4RCNwvgSGY9AWmy', 1, 'u47jTbFZguHekEO6dBwzC7V5RoieNxe5izdV1iKgZpVQfeKBsLFIKmjRksF2', '2018-03-10 18:17:21', '2018-06-17 08:04:09'),
(36, 'MAXWELL SANTOS', 'FARIAS', 'M', '33986436', 'SSP/AL', '1994-04-08', '8298764-0979', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'maxwell.1nefi37@gmail.com', '$2y$10$jp.qzTZi//L7wc7aNQ5QYOvt1vuQbhJFNjG54PECZ3HN8xyP88swq', 1, 'u3lsHdqiUyVBuCx3Q2nrDMUNjy1D5gn65PTBpHpYzotrnsmsMOmjwzc7aCUV', '2018-03-10 19:37:27', '2019-01-04 20:08:06'),
(37, 'ADEMAR LEANDRO', 'VASCONCELOS', 'M', '33222541', 'ALAGOAS', '1991-10-15', '82988064257', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'oleandro14@hotmail.com', '$2y$10$/bgJwDR8xRdgMFkOdTbIoeMKvSxaZV7EIgxKUklFZBGzQNc.XcMoe', 1, 'LnPxrNc5XoWrfls2hUV9dzKxBONkUfhNuMksNSofjHhJgIY4bp8KJePNMA1g', '2018-03-11 09:04:53', '2018-03-11 09:04:53'),
(38, 'ALEXANDRE CARLOS', 'SILVA', 'M', '1605531', 'AL', '1980-01-10', '82996784541', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'alexandre.carlos.sud@gmail.com', '$2y$10$hoVeIvH6KUeUtC1dHBINAOXnN3ME8ePtCcfkT15dYAKn214..9P0W', 1, '0Vhrz6aozF8qov8hVyLYqqCOzaSknp268i70LSv6RNEbIyK4QTNmaluhcSlY', '2018-03-11 10:26:13', '2018-03-11 10:26:13'),
(39, 'JEFFERSON', 'CAVALCANTE SILVA', 'M', '2000001025397', 'SSP-AL', '1983-04-09', '82-991297532', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'jefferson1488@gmail.com', '$2y$10$ptBEXWagofCFZyc3xtIcUObjnr3UTa.8PVf769Cf4gqPomi/NGEzu', 1, 'Mf5VBMWd2Na9MvueWWgdoj1abCzOj0EAZVAjBUrcuMx2tj9mtZYX05MrXmll', '2018-03-11 19:16:31', '2018-03-11 19:16:31'),
(40, 'JOAO VASCONCELOS', 'DA SILVA', 'M', '99001342982', 'SSP-AL', '1961-05-09', '82-988066259', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'joaovasconcelos1961@gmail.com', '$2y$10$DsYlimkdVu1A7A5KbEZT5uGzLboutY4iB.Yq7OWmuWyo7cvv8XA/m', 1, '0eTC4iYAj60y82peHfwovL3u7Sf74gq6AR9YD3SwC0KDmA0B7bPhjy0RuAJZ', '2018-03-11 20:43:27', '2018-03-25 11:00:39'),
(41, 'DIEGO', 'A BARROS', 'M', '30548268', 'SSP/AL', '1988-12-12', '82999574538', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'diegoabarross@gmail.com', '$2y$10$nC2WVIDGyOUgAtZU3.M5XOk6fChLBJR13jTHnS.1/tjfdeG1KzbEq', 1, 'rEY1Mi0FFEHzw4trNH9CqmHu2cQQjR5q3uXKaTw7XyRBI7SEPHtcOcNuy7xn', '2018-03-11 21:38:27', '2018-04-08 09:35:06'),
(42, 'ANTONIO B.', 'DE MELO NETO', 'M', '1143736', 'SSP-AL', '1977-10-12', '(82 99105-8002', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'tonymeloka@gmail.com', '$2y$10$Z1YkkxpF.uzsje8ifyzz0OrVwynOrMOA6GvHPKPPXmOJxX6arraY2', 1, 'yIgwxNg9VThHoMnppm3l9w7dzIFgShRG0qrxpH8fM3NqlkzSkJORyNl77hrZ', '2018-03-12 10:20:05', '2018-04-15 13:45:41'),
(43, 'MARIA PATRICIA', 'C. BARROS MELO', 'F', '1529745', 'SSP-AL', '1978-02-02', '(82) 98891-2458', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'rhpatricia@gmail.com', '$2y$10$j2YCJhJrFToH5f8K6A/GtOUhTkuPhj/vZiowoNxyP.VVM7.BYdqnO', 1, 'jtOH9Enf2xJHYIr0PnAhuBMpOPO4rHNsHwIOEM41BTSM7yCSaUyGIQ7vLQyu', '2018-03-12 10:36:14', '2018-03-12 10:36:14'),
(45, 'GERSON', 'VALE', 'M', '3290266', 'SSP PE', '1968-08-24', '999128905', 'PE', 'Jaboatão dos Guararapes', 'Maceió Tabuleiro', 'Benedito Bentes', 'gersonjge@gmail.com', '$2y$10$SJMzz5Nkt1yx.cWBeGf03u6y9Wsuy9Eu14MgFsPAgoaftXkDFr3Nu', 1, 'RMDxvcGXRew4OSQ9qKYBr5hXp75Hr9wmDBWUGIwPzluR6KgV6NQAf9CbZtCZ', '2018-03-12 21:02:56', '2018-03-12 21:02:56'),
(47, 'BRUNO', 'BARRETTO', 'M', '98001470427', 'SSP AL', '1984-01-10', '988951572', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'bruno.barretto.28@gmail.com', '$2y$10$72yvufwyICfm5mMCBG6PMO0ZwffsYLx8Ptkb.zWuud2M3zFeML/P.', 1, '4iHQV5jykwK8CQul9yBaZyQODXDHaJLu3vVfcsrJ990gBm3gsTZ5RFxNvBD2', '2018-03-14 00:45:10', '2018-03-25 06:14:04'),
(48, 'ELAINE CRISTINE', 'TENÓRIO CORREIA', 'F', '99001228500', 'SSP/AL', '1982-03-28', '82999442733', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'lali_910@hotmail.com', '$2y$10$HN9os3NWm6hU40WxlM26SeZG/uRb8Ehi7tHIY6eDGgqDBF8jHZ8Qe', 1, '6cGAzh3hZPERdUi2u6eeCrK8TgN8mshMbWvNJvZwfp9B9ydmZYbK4aDwUC3r', '2018-03-14 20:45:27', '2019-05-03 23:22:17'),
(49, 'SAMMUEL JOSé LOURENçO', 'SILVA', 'M', '392415483', 'ALAGOAS', '1993-11-26', '82988503861', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'sbmxsam@gmail.com', '$2y$10$JXDWP/tDcr4qE93JIDnwO.C6VvsSOii7Vty1IAGu898OPNHZ1665O', 1, '66FxeWRjTvQz0WOFBag9MCKuwGAqVfiU729YatH9Xhxi812Y2QVtkbtzMIMF', '2018-03-15 10:30:15', '2018-03-15 10:30:15'),
(50, 'HIZAQUIAS', 'NASCIMENTO', 'M', '39688682', 'AL', '1999-08-06', '987141395', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'hizaquesud@outlook.com', '$2y$10$YgiUdqxta0lUzDDVKHxYqO4r4UDa6YIXEWnd7Kd6Tszdrsc/ZYEcC', 1, NULL, '2018-03-17 08:58:59', '2018-03-17 08:58:59'),
(51, 'KARLA MONIQUE', 'GAMA BISPO', 'F', '2002002037879', 'SDS AL', '1985-04-26', '82996564390', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'karlabispo.psi@hotmail.com', '$2y$10$ePAW6t4xyrT0s4t5Ul8KLOH.qiAwFXHpJZ3lrGnbd.f0LwaNsnFFW', 1, 'mbcwPiFmYt4erdz2AiD9FOL71lqgdLT0LKbBD7YfGKrr79wXF1VRJW90owQH', '2018-03-17 09:38:31', '2018-04-25 22:06:12'),
(52, 'CLAYTON COIMBRA', 'DE LUCENA', 'M', '765288', 'SSPAL', '1971-12-13', '82991284683', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'claytoncoimbra@hotmail.com', '$2y$10$wez16uQp0Q3yr7c1HREdPeheuyc0o0mrawWccUSSogIk2xyMhMHnm', 1, 'V8q7btpl3tGDeybvLhnlghh2tJ7xrIdZjlKaHZnwJOhxNMJ3OLSK3GAWH2xK', '2018-03-17 16:50:44', '2018-03-17 16:50:44'),
(53, 'FLAVIO FERREIRA', 'VACONCELOS', 'M', '4268669', 'SPPE', '1974-08-02', '82996156657', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'igpgerenciamento04@gmail.com', '$2y$10$IC7RVBwya1NHofMrqKgf6.8fKq4IHD7IbAKCfAcMoGnIjoNTo4VnK', 1, 'T08X0ZFwVehY8JAADVVDSpXUhKsZDznGN8IxmhbeRUzW6CHNr3Ed5w3uhoVl', '2018-03-17 17:04:33', '2018-03-25 09:52:21'),
(54, 'JUAREZ', 'SANTOS', 'M', '969664', 'SSPAL', '1969-04-12', '82988337557', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'jjuarezlima@gmail.com', '$2y$10$HlVfhMkNoTcsojW5oZJ6POcNRLvOv0O31RS6xVssOTiIS5Ox8ZT1u', 1, 'dOCXFmMiAsk59cf8Pefsk11veD04hBJTO1pdzNwOcUlKAFNDprnWUaAHJjDV', '2018-03-17 18:44:40', '2019-11-18 02:28:42'),
(55, 'DANIELA', 'OLIVEIRA', 'F', '35562067', 'SSP AL', '1994-05-10', '82991780775', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'danielasdeoliveira17@gmail.com', '$2y$10$jIIt5adWgGdeklMta4FtHePA0yXy6X4ltG/y5JRgpCThHtot.IoNK', 1, 'GxKqp7AEj0iKt4cCZZDccFlJxBs5EwD62hxwbzkGtY50Vxk6TxMPpXVzqHA6', '2018-03-17 22:22:30', '2018-04-13 14:06:53'),
(56, 'ADEILSON', 'CRUZ DA SILVA', 'M', '1444451', 'AL', '1977-06-13', '82 98816-0251', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'adeilsoncruz77@gmail.com', '$2y$10$ROs2Y9rrBXTWtgEspWCNlOWNO1mMav2kCkhZfR8WVnCtJ6IVxxogq', 1, 'OaMTEZ6HAoOA8VZlkzjTjuqNhWbVW8m2h926PruJJiRYzBl6kK8ZaZIKMgmU', '2018-03-18 07:34:19', '2018-03-25 10:13:27'),
(57, 'GENIVAL', 'SANTOS', 'M', '1127073', 'SSP/SE', '1975-01-30', '82999506765', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Benedito Bentes', 'genivalsantos1998@hotmail.com', '$2y$10$tFwXjYVgKXfJhkfmwx4LB.ikyNAzDw7YBrJmNNHKV/vZ5oK5PA8Wq', 1, 'q4ErqSnBkb80lWTdU3S0BkDbgPD9Yfu1d9No1jhtXqPZfs3Svgi2j6jHxKyS', '2018-03-18 09:37:00', '2018-03-18 09:37:00'),
(58, 'SENI', 'LIRA DE OLIVEIRA NASCIMENTO', 'F', '741173', 'SSP AL', '1966-10-06', '82988029090', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'chisnascimento.2016@gmail.com', '$2y$10$I06KlrhFAls1dDE8EWMpTeF3brAqVIuO1NTD51QRw3UZxnjeWKXGG', 1, '9JXCkpDuMISfhpK3BJkOfnnAeQX97TZvKecVawACuXtSCrLR8b0kX8DHlXCw', '2018-03-18 11:53:11', '2019-10-05 15:42:29'),
(59, 'JEILIANE', 'BARBOSA DA SILVA', 'F', '1756484', 'SSP/AL', '1979-11-17', '82 98887-0759', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'barbosajeiliane@gmail.com', '$2y$10$UVwVTjArIERNudUEaDC/1OiUn7Y4UeJfoaXDvPAdhwpUGF/H/kviy', 1, 'ojZvehZRQ5RYy5p2FyC6s3C9w048G4940uyegdLcAlwiCQlCVz6CW8D8MjgO', '2018-03-18 20:20:45', '2018-03-18 20:20:45'),
(60, 'ANTôNIO', 'SANTOS', 'M', '2003001100780', 'SSP/AL', '1983-11-18', '988967041', 'AL', 'Palmeira dos Índios', 'Maceió Tabuleiro', 'Aeroclube', 'jasud2009@hotmail.com', '$2y$10$NQSaNakyoJgFoAuLhunGte.iI6XDv06L7yqEiySbkufrphwTAZyKu', 1, NULL, '2018-03-18 23:08:23', '2018-03-18 23:08:23'),
(62, 'SIDINEI', 'LIMA', 'M', '116578246', 'IFP', '1972-04-27', '82999971960', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'sidineiram@gmail.com', '$2y$10$toBkMfhWAfkj2r4e3xJUD.gTxsN2fOPshyYws0c18/tiHWJsiKnYK', 1, 'IWgezRz75vwXtfYZdTIdrGqG2Ve8HFStseIPMfN18G5qw7AEenFfqdL0VE18', '2018-03-21 13:15:03', '2018-03-26 20:12:50'),
(63, 'IAN GUILHERME', 'LIRA DE OLIVEIRA NASCIMENTO', 'M', '38235587', 'SSP-AL', '2003-05-10', '82988297479', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'ianstarkoficial@gmail.com', '$2y$10$7bkzZZoPCECzBk1Bl6O9megEtxtcWR2P.bm29drCSOc0oEM4Frn/2', 1, 'Ey6M2tFRcCTqvndAZGjHkIZF9wlGRCgth74EyxdFIfKyckhwezhz83fgR6Me', '2018-03-21 21:17:20', '2019-10-05 15:43:21'),
(64, 'CíCERO', 'VIEIRA DO NASCIMENTO', 'M', '1433539', 'SSP-AL', '1975-02-18', '82988640489', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'nascimentosud10@gmail.com', '$2y$10$L16yNoX48K26NxAiAI6iXerB6mpYkdugM3Ac4vM4kwO7E47Ckpv6y', 1, 'j4ZUHoALUleypxPkq8ECRTgeuify0nYO444OuqKvDZxwyrqsR5y1zzZYh1Sj', '2018-03-21 21:25:14', '2018-10-30 16:06:01'),
(65, 'CLáUDIA', 'ANGéLICA', 'F', '929877', 'SSP', '2018-03-09', '8299 88502618', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'isatomaz@live.com', '$2y$10$Lbudn35WIZHgneap3YqVM.79cSStj.MWGFoIoufbmOBSFrKW/6aaa', 1, 'VQjrjMqpiAM7MH6cK2J1HVM7znm7WS4bHIHZs1mKlg7foUDLWUOkJLnQipZI', '2018-03-21 23:18:28', '2018-03-21 23:18:28'),
(66, 'JIVANILDO', 'TOMÁZ DOS SANTOS', 'M', '2001001137721', 'SSP AL', '1963-01-27', '82988261533', 'AL', 'Maragogi', 'Maceió Tabuleiro', 'Gurguri', 'jivanildotsantos@gmail.com', '$2y$10$BCmc2L94tpj5.fKwzrTZN.Nh49o95.iqZtpCm0nFm7dMzYwY5vQrS', 1, 'caRcGxE5XLsm73x4tKhrlJ26FoOPe8YmQwz1mHv6Afx4E66sTAhhj9Mxb3G0', '2018-03-25 07:39:46', '2018-03-25 07:39:46'),
(67, 'MARILEIDE', 'SILVA', 'F', '708666', 'SEDS', '1965-01-06', '82991012238', 'AL', 'Maceió', 'Maceió', 'Antares', 'marileide.consultora@gmail.com', '$2y$10$MhDJiFwsbS.P9c7Lm7jDI.zSo56xNWft4rBkMSjJerKZgD.jCZnYa', 1, NULL, '2018-03-25 14:48:34', '2018-03-25 14:48:34'),
(68, 'FRANCISCLAUDIA', 'DE  JESUS SILVA COIMBRA', 'F', '41070739', 'SSP BA', '1983-07-04', '82999428908', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'claudiadjesuscoimbra@gmail.com', '$2y$10$W5FUc9oMdfd8oULuSypJrueb.48bbjGhzL3GvA/UO7fkQGWipsSSK', 1, NULL, '2018-03-25 21:44:10', '2018-03-25 21:44:10'),
(70, 'DOUGLAS MORONNI', 'FERREIRA SANTOS', 'M', '34723862', 'SEDS AL', '1995-11-04', '82988134135', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'admdouglasmoronni@gmail.com', '$2y$10$kozO1HjVEXtmLAgxDpSdsO.pTEEsV0d6sslj2PxRjYGUwFpm5CkOm', 1, 'wFVgxUH5kqMbWomc28rsdoJGBeYsa3fMbQxVRy0mwnsKw5hGJNKVOA7SwKO4', '2018-03-26 14:39:08', '2019-05-05 10:16:52'),
(71, 'JOSIVAN', 'SANTOS', 'M', '31532497', 'SSPAL', '1988-06-07', '82988602919', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'josivan-js@hotmail.com', '$2y$10$CjMF7RZAGi/3G71RiqsHjOVmeLxmJdhT0lzqvdgW0unPrMkzZXOim', 1, '7JOTWncK65QnlSmYv3y9yI0uNdvXVoaV8ISb5RC4G9SCeRslEl5IfGnEoOIk', '2018-03-26 19:09:19', '2018-03-26 19:09:19'),
(72, 'CAMILA', 'SILVA', 'F', '481989584', 'SSP', '1992-01-18', '82999996372', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'cbicaleti@outlook.com', '$2y$10$f/78DT5LlkIJT58fVzc7N.61T0YpHVb8NknjUPcV4ousV7JB0KTRe', 1, 'Z3HbHKSsEQQ2XCVmjvzTHUZdqea1a88dGfqyrvt6CpnL3Bd2EFidNlVKCju6', '2018-03-27 13:57:02', '2018-03-27 13:57:02'),
(73, 'FRAZIO VALDEZ', 'TENóRIO CAVALCANTE', 'M', '2001001018960', 'SSP/AL', '1982-09-14', '82999851507', 'AL', 'Maceió', 'Maceió', 'Farol', 'tenorio_@hotmail.com', '$2y$10$C7PmV4C.y8QZ.M2Uf6Vu6ecbxBe1Ljq37EbeyPnpCr2tFk8bJcdTS', 1, NULL, '2018-03-27 14:44:05', '2018-03-27 14:44:05'),
(74, 'ROBERTO', 'VIEIRA DA SILVA', 'M', '736310', 'SSP AL', '1966-08-28', '82996181276', 'AL', 'Capela', 'Maceió Tabuleiro', 'Benedito Bentes', 'robvieiradasilva@outlook.com', '$2y$10$d3ybDeic7mOGNobtrkG3TeWloTruqAGSFTP9sx1Natr4ktX/1SWnC', 1, 'sJf06YnkYm2ZFoPKVVGNMLOlEbhFTbbvaP4S9xQweZZlT94cKLK0Za0uG6XJ', '2018-03-27 16:32:31', '2018-03-27 16:32:31'),
(75, 'DERLANI', 'BRAZ', 'F', '35295627', 'AL', '1995-11-30', '8298826-8134', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'derlani.braz@gmail.com', '$2y$10$aQA0RJCpdLU0OuZ3VVB2m.5t5juIErKxrBXk8JOP3wUefk6e2f8f.', 1, 'vnuD9Mmk1SgW3cA6WzIfZxa7BKvyNoPjulCqaEMEsZTWPGf5LKwR2HJoL1bc', '2018-03-28 11:18:29', '2018-03-28 11:18:29'),
(76, 'SARA', 'SILVA', 'F', '422890716', 'SP', '1985-02-20', '82996270667', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'saracarvalhaess@gmail.com', '$2y$10$og9mXvwG8x9IZd3jLO6jf.2QZdLdToQ1mg1icHIzH6QP/aXXN8x.q', 1, 'F1CGM7D1R0DU0CxhG1EouFDuqYZywQIbKi2m3deJ404bZb444SIrMsc8DaQ6', '2018-03-28 22:59:50', '2018-03-29 22:59:43'),
(77, 'POLLYANE ROBERTA', 'CARDOSO DE OLIVEIRA FIRMINO FYSH', 'F', '1755608', 'SSP AL', '1980-08-10', '988480035', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'pollyanafysh@gmail.com', '$2y$10$GSevZoX9LEHHw2AbRcTojOJTNYrmQNthtFlVNAiCmAbkc50CBsAFG', 1, 'rYqih183abU2StgSR7TP5suczC8KJvP5fHWKH2n611shCTgNnGJe8k7ze5ek', '2018-03-31 18:40:34', '2018-03-31 18:40:34'),
(78, 'MANOEL', 'MESSIAS DA SILVA', 'M', '248875', 'ALAGOAS', '1956-02-02', '82988255937', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'CRB.MMESSIAS@GMAIL.COM', '$2y$10$SPeNtTCb3E7vckoYY9xn5uk7nDCmNke3NwLPgUic4rbUFxRihqrTi', 1, 'ptBPZCajFJIkWXClne6qbCPhZUtJjwAG0WhxhHdCueYUt4lilD5OBEfYPdi4', '2018-04-01 07:07:13', '2018-04-01 07:07:13'),
(79, 'MARCíRIA GABRYELLA', 'FLORES LIMA SANTOS', 'F', '8934513470', 'SSP - AL', '2001-02-01', '82988623802', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'rio_siria.gaby@hotmail.com', '$2y$10$4aNEUPiqHL7UaEjLDnQXn.aekYh.YC5NWYfFSmSKMc43Lswqjfk42', 1, 'yFw2m3vPxGnXICJVWVgI3jwf1liFSqkdCCrXyYuTgjiaKj4XzU0aN8KkCEZ8', '2018-04-01 15:30:26', '2018-04-01 15:30:26'),
(80, 'THAYNá', 'CLAUDIA DOS SANTOS', 'F', '331254326', 'SSP AL', '1995-06-22', '82999461589', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Thasantos21.ts@gmail.com', '$2y$10$rMjEvnm3vAL1BwwH62s2YOHqZZXN/6VP2ZeNo6WlvcpmtEe8e3MwS', 1, 'SrMMhmevmuDerGpauEyWZc38lsJtBjYdIvH95z3Ej4ZHdDTXKYQ1kmQNchm7', '2018-04-05 20:47:20', '2018-04-05 20:47:20'),
(81, 'ANDERSON RAFAEL DA', 'SILVA', 'M', '36435040', 'SESAL', '1996-05-02', '82993325606', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'ars.sud.ar@gmail.com', '$2y$10$dsSvL2qrPz28val/gBIqfOl/19YqOu7NewZvGTq7jf7vksdJkg.z6', 1, 'fxjP6X0XV7u9DLOsud3ccinpCyaFo8kWAXPTAZjAhRamzBDOwgstpgqeBObi', '2018-04-07 19:58:06', '2019-01-11 21:27:04'),
(82, 'AZAILDE', 'DE JESUS SANTANA', 'F', '2090752', 'SSP/SE', '1954-04-06', '99617-9233', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'azaildedejesus@gmail.com', '$2y$10$v65eSU0wPaXgDODunn8Elur3MGA9zVVDFnbY1NNujmvUTGqEjzF2i', 1, 'AH4qTXUT0H3GpJDGlvuhJ6xsYG7zpt77SEBJ0pvkUPq93FOeXC7i9m44zWO7', '2018-04-08 11:55:26', '2018-04-08 11:55:26'),
(83, 'SAMUEL ELDER', 'TENóRIO DA ROCHA TORRES', 'M', '42237262', 'SSP/AL', '2011-02-07', '996418695', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'Samueleldert@gmail.com', '$2y$10$YMe.SMuev.WlH/X9qAbZ/udGQ/kWIyl8ikzfI6pcm.JTuIpaYhLL2', 1, NULL, '2018-04-08 21:22:14', '2018-04-08 21:22:14'),
(84, 'JULIO', 'CAMPOS LóPEZ', 'M', '8155985130', 'PF', '1993-09-09', '82996764486', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'juliocesar090993@gmail.com', '$2y$10$oLhhVh6ZzL3Xko1zZOIoOe09toJecJvRFS5Mp.tY6x0dr18i/iRaO', 1, NULL, '2018-04-09 11:28:15', '2018-04-09 11:28:15'),
(85, 'FELIPE', 'ALMEIDA', 'M', '34812199', 'SSP', '1991-10-05', '988496772', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'felipe.sudbrasil@gmail.com', '$2y$10$cLhN5gNTecASplWnYF9/IeorzCsiMUAY2d/tbEVJCCOpsnwk6i292', 1, 'BowsPPtJEG8UI8BCeuNBSxYVOJXzyIv8Kb25yNwqipWigncP9guZTBGc2Aw6', '2018-04-09 12:42:13', '2018-04-09 12:42:13'),
(86, 'MARISA ELISA', 'SANTOS DA SILVA', 'F', '33702756', 'SEDSAL', '1992-04-26', '82988131977', 'AL', 'Maceió', 'Maceió Pajuçara', 'Bariloche', 'marisa.elisa@hotmail.com', '$2y$10$ivSa4xEs7sZVngHoRxVb5..E88eUJMajtWJ6pxvm.GGQ6Yo2J.WX2', 1, NULL, '2018-04-09 15:18:57', '2018-04-09 15:18:57'),
(87, 'EDJANE DOS SANTOS', 'SILVA', 'F', '2000001182891', 'SSPAL', '1975-01-04', '82988852472', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'edjane-dode@hotmail.com', '$2y$10$4s005EZJSl9DgRouzTaaVe9BObyHMiS58qHg7Ebl.zbQxEQDVSRgK', 1, 'JnhDYH3d6tZ9P24iQjZF3ChJusbU6qV9Sm6kh44uEDDaqYgt2r4m7QWRa368', '2018-04-10 19:43:54', '2018-04-10 19:43:54'),
(88, 'DGINA', 'LINS', 'F', '1219723', 'SSP', '1975-09-01', '82988694386', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'dginalins@hotmail.com', '$2y$10$9KabgmzkqbdOMGQEa0fqWehFPEes/FB5L4PXDd7cn3nw8eM3cYLz6', 1, 'yehW9WT2rd86LoKCYuVNqBrLbwYmDfmcGHSYHRi30iT7qtcbtHelznBz8Yku', '2018-04-15 10:06:51', '2018-04-15 10:06:51'),
(89, 'VIVIANE TALITA', 'ALVES DE LIMA SILVA', 'F', '2002002044867', 'SSP-AL', '1986-03-07', '82993727522', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'viviane1306ls@gmail.com', '$2y$10$cs0OGEWQ9nGPZ.irGYr6f.gfgCL.lkNpMz4grD9nBsOHy4j0IiX7S', 1, 'S5SMCnqfs401jMpi1qWkAyACnAyJccTRoqyUuUrCwLqe7pxrECWzxnsvP2vs', '2018-04-15 17:46:13', '2018-04-15 17:46:13'),
(90, 'CRISTINA', 'PINTO DA SILVA', 'F', '32286937', 'SSP/AL', '1979-03-21', '82998302145', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'cristinapintodasilva21031979@gmail.com', '$2y$10$Ww5gc2wWS9u7S5/itKbx8eytspUXkJI/A1d1aRGZ7tX0XhN0GgaW6', 1, 'ocaViSgtgmBc1NMHDceRkHonY89rEH76dxJPFSoTI1Tt85JJAa2ppzvmtGAB', '2018-04-17 21:25:47', '2018-04-17 21:25:47'),
(91, 'ARTHUR CESAR', 'DOS SANTOS TENÓRIO', 'M', '42231841', 'SSP AL', '2002-01-10', '82998426343', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'arthesarnorio@gmail.com', '$2y$10$4hlsYQxRcyiSn.FkJf0Cue18G3XrnoC8FJnmR151WLVEyCVg9iWyu', 1, 'bIXJb15cuMNCfYVhsC3BhQCwPoCrffK51nPih2RbtgGcfVHaKwzvHFi2fZjJ', '2018-04-17 22:13:59', '2018-04-17 22:18:42'),
(92, 'JAIRO', 'RIBEIRO', 'M', '722112', 'SSPAL', '1967-08-28', '82988472056', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'jrsudribeiro@hotmail.com', '$2y$10$z9z99I4ZjY3SGbG4OUXbquRWiZ6Nsqrbc5NwqXI1NpbvZiawZAozG', 1, 'SEx4Ew9t2kAmf3lDJL7JZPGmvUo5p9YgCCusZI15xhgHEKV5ephojdD4IKgt', '2018-04-19 18:12:40', '2018-04-19 18:12:40'),
(93, 'LEILIANE', 'SABINO DA SILVA', 'F', '34485988', 'AL', '1993-04-28', '987312194', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Gurguri', 'leiliane.sabino@Outlook.com', '$2y$10$ibi0IQ7ORhg72R/C5qouo.Ayea765z3fBeMR29J6DKSOn2EbNNE9i', 1, 'Xgu4Wch2OiCk8BTiEgcoEK0ROB54uSYeOkiHsngztTnDmSFEqmwWSbZNml2w', '2018-04-20 12:23:47', '2018-04-20 12:32:21'),
(94, 'LETíCIA', 'SABINO DA SILVA', 'F', '34485996', 'RIO LARGO', '1994-08-06', '988130688', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'leticia.sabino.silva@outlook.com', '$2y$10$q8.a5qVu46vrmljkyhnCS.X1HacOaupyUo5w7A1zzpyOpqyy8HNDO', 1, 'xYf9fnkkCDu6rh2uOf4F370utJjf0OOF77SNvwOkaiCbSAgSL109VO24F6so', '2018-04-20 12:30:51', '2018-07-20 22:07:25'),
(95, 'JAILTON', 'COSTA', 'M', '2002001198097', 'SSPAL', '2019-09-10', '95991330627', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'jailtoncosta1984@bol.com.br', '$2y$10$kB0Yc7ctFZD1FdO/saOUZuv7lZw8g8wn.lShww7/UtvB1boTrZUde', 1, 'Q2hDB89amFgmNhvauIUtpSZQdMEYUotbtleDtT1o6Czq39hqacjjROwxWfCd', '2018-04-22 17:00:41', '2018-04-22 17:00:41'),
(96, 'STEPHANIE CHRYSTIE', 'DOS SANTOS COSTA', 'F', '31636160', 'ALAGOAS', '1992-03-11', '988904485', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'chrystie.santos@outlook.com', '$2y$10$4BXrhizlapf79bC8YCHjJumU./8vuwInjBtDw8KJkF1iZELudt78m', 1, 'Fq1c3H3aQ6sT69RUlB1LECd4mJlUiWGmIQQZSnkjGt431bN2jCbFtDwVdctZ', '2018-04-22 17:02:04', '2018-08-10 09:24:25'),
(97, 'LEONARDO', 'AGUIAR FEIRAS LINS', 'M', '31719031', 'SãO AL', '1988-12-22', '996350913', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'leonardo-lins22@live.com', '$2y$10$DDUBKgahqwdXU7z/PQAF9uW9tZGPAbwdVX4xeIbkSqiV8Z4vgf/ry', 1, 'KJaUgN5FsaiRQ3YCk16AVaCHvhbp7lrZKxFTpjsqYFFKH2WBRUBZYVScZINH', '2018-04-22 17:02:30', '2018-04-22 17:02:30'),
(98, 'CRISTIANO', 'OLIVEIRA', 'M', '1465386', 'AL', '1974-10-22', '988182064', 'AL', 'Palmeira dos Índios', 'Maceió Tabuleiro', 'Gurguri', 'cristianoalberto.oliveira@gmail.com', '$2y$10$0oB1f/rTtJdKAlR0WSwYhe9.408eTh9NjNE5XNxwoggYDfk/F7Y7S', 1, '8wyVQkxV4LXNAmG238a6XzEGfqZ3jhtK8Osf9cdmHvZcZlX0UkwAK9QrZd5u', '2018-04-22 17:02:35', '2018-04-22 17:02:35'),
(99, 'ERIVANIA', 'SILVA DE SA BERNARDINO', 'F', '2029957', 'SSP/AL', '1974-11-29', '82987324566', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'erivaniasa@hotmail.com', '$2y$10$6jJn9g2cJIK9UrHLKVSiAORlqU.l85cQneaMt5s7zJLFg/3y0ydb2', 1, 'xLn3woaECLhZ1YDVKtoJYzdZcOA9fA0IjHYXfPvWpwUmtAWnvPwRwajhkVnk', '2018-04-22 17:03:00', '2018-04-22 17:03:00'),
(100, 'ESTEVAO', 'SILVA', 'M', '1687710', 'SSP/AL', '1981-08-01', '82996114442', 'SE', 'Aracaju', 'Maceió Tabuleiro', 'Aeroclube', 'estevao.s.consultoria@gmail.com', '$2y$10$kr8Fqm4Cx2qIuI3UzKYSAO3XLmPhLdOvtDzEOaB/NnAqpkLcs.FOS', 1, 'IEX0kLu3gUdM63RAAdJP9BaDsQF0oiyf6Jiu1wK9WYFqWJxiqxcJ8C1OVXHd', '2018-04-22 17:07:03', '2018-04-22 17:07:03'),
(101, 'SANDRO', 'AUGUSTO', 'M', '2002001292239', 'ALAGOAS', '1977-05-14', '996449000', 'AL', 'Ibateguara', 'Maceió Tabuleiro', 'Aeroclube', 'sandro14-@hotmail.com', '$2y$10$RlksX4.Tdnn1ozFy635x4uHZNs8EueNBjnkE7.tXBtpAGjFooLXpy', 1, NULL, '2018-04-22 17:11:47', '2018-04-22 17:11:47'),
(102, 'AZAILDE', 'SANTANA', 'F', '290752', 'SSP/SE', '1954-04-06', '8296119233', 'SE', 'Aracaju', 'Maceió Tabuleiro', 'Aeroclube', 'azaildesantana@gmail.com', '$2y$10$0ncWB2jMvd8iixjiWE/8jeqBTZZ2vUefaNze/WAJnW0B9hL2oCIq2', 1, 'AoK5NECSJxtvG9kWE8GOH1P1Bwn9948S5ho4AONjnWvz6p9CizXVziSiNCyG', '2018-04-22 17:13:07', '2018-04-22 17:13:07'),
(103, 'MARIA GORETE', 'VALDEVINO DOS SANTOS DELMIRO', 'F', '1177473', 'SSP AL', '1970-12-15', '8298-8765183', 'AL', 'Viçosa', 'Maceió Tabuleiro', 'Aeroclube', 'goretedelmirobag@gmail.com', '$2y$10$FG6YLH/aAZJiCSyF7WYCeun0qv3FG00todd2rLiTDvQrJcn5H1Bly', 1, NULL, '2018-04-22 19:02:12', '2018-04-22 19:02:12'),
(104, 'GIVALDO', 'COSTA', 'M', '950248', 'SSPAL', '1969-05-24', '82988326951', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'givaldopintor345@gmail.com', '$2y$10$HOiKCQQOfptY4PQTOfk7OOpi5kbsqCmzs30Iqn.bE2bB6ETS8UbjG', 1, 'QtupzQQ7jOAX7uLUZnkkDzJBnL5pByuepV1encvlW05q8kJ4xhAegZxrNsK5', '2018-04-22 20:52:18', '2018-04-22 20:52:18'),
(105, 'EDNALVA', 'MARIIA PINTO DO VALE', 'F', '2.271283', 'SSP-PE', '1962-08-28', '988916322', 'PE', 'Jaboatão dos Guararapes', 'Maceió Tabuleiro', 'Benedito Bentes', 'nalvaegerson@yahoo.com.br', '$2y$10$hBXLi5jSpPcZQw4lNi8Vq.PVQOW8w2kTvlPycilp.3Iq08fuwhMiK', 1, 'Dygoc9k0P5PlOgx3OlyzpRwLCeTJLXyijZb3DM5xi55kpec30qqWYjLmHVBz', '2018-04-23 10:27:05', '2018-05-01 07:50:15'),
(107, 'CAMILLA', 'SOBRAL DE MENEZES', 'F', '36252182', 'SEDS AL', '1995-02-23', '82987091954', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'c.menezeslds@gmail.com', '$2y$10$1KaFMU.uqT049p.URMFx3OM8UBQmm.c2Wrh8TJkDp2ElffbMCWxuS', 1, 'EIWGGi7pmh5c8287WgnxkGgaXNlr5y1UvSWQHqtyjGEFhLTZVhFFOoz9lSCc', '2018-04-24 02:35:56', '2019-05-07 00:54:02'),
(108, 'ALISSON', 'ARAúJO', 'M', '10022870490', 'SSP / AL', '1992-08-25', '98185-4039', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'liko_alisson@hotmail.com', '$2y$10$zcD0jFgXTnZL39/.ZD57mOCjz/8AsObBoz.uK9rYL1i/nGdwex39G', 1, 'pkKiGx05kUKACQsg2GLKpFJH6CUKp6QeCsC0pGHSh8rpiLH1GpfCHi5zSKVq', '2018-04-25 09:17:56', '2018-05-06 08:27:47'),
(109, 'JULIANA MAYARA', 'MELO DA SILVA', 'F', '42324394', 'SSP AL', '2001-08-03', '82987264240', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'mahiara.sf@hotmail.com', '$2y$10$oXXOxYsuIpIaqDSHm4tKo.yABoqhrDq2qaXQwlSHnp3rES15j/gFa', 1, 'sHJeBUwbYkKyWJJvnqzF59ZgdngWu0uTtPt5sRWYpReRZh2d5Pz1we9smLji', '2018-04-26 21:00:24', '2018-04-26 21:00:24'),
(110, 'CLAUDIA CRISLENE', 'DA SILVA PINTO', 'F', '33124276', 'SSP AL', '2003-07-06', '82998302145', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'mahiara.fariassantos@gmail.com', '$2y$10$9KEvMsNEAOPsAJ06Q2BqtOVAVqWAX/WZqLFIbgeaS2NqL35Uz34em', 1, NULL, '2018-04-26 21:10:17', '2018-04-26 21:10:17'),
(111, 'LUCAS', 'SARMENTO', 'M', '33022348', 'SDSAL', '1998-02-09', '988445097', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'lucassarmento191919@gmail.com', '$2y$10$hxX0Nfftu.7o56BtIyzygeJCHc.Vap6DeRPXfWFO/m93aI5/CCjlq', 1, 'OIcxV2ApL2cv3imZENNPEo8y9I6qOl6cuXWolCUSFzo4wV8Gxt6DerK1NGpQ', '2018-04-27 11:47:47', '2018-04-27 11:47:47'),
(112, 'SEBASTIãO', 'LINS', 'M', '07045002', 'PMAL', '1972-01-20', '988831022', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'sergio.dgina1972@gmail.com', '$2y$10$PCowWf7Fxfkjoe8LlNsfUOqDvFt0HDRRF37kuw3u837a7nRMBja4.', 1, 'cu7W81zMSvxYs8WauybCuX7XVWYpPcm4LK5fMlfCnoUL0hfhl3w6zsLoSDlp', '2018-04-27 22:19:34', '2018-04-27 22:19:34'),
(113, 'IVâNIA', 'CALISTA', 'F', '358899', 'SSP', '1954-08-01', '82988198884', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'bruna.lins@live.com', '$2y$10$nmw8Z3KPS3OqsimpTj/n0ejdipEq/cnMUQgrH0Qjm9OUvPKSG2WR2', 1, 'MKZNY3qOCmJS5d8qIJC66hxo4GCx3kzylWTNZHL1ZJJ8WQrqpMmo32IxwL1D', '2018-04-27 22:38:27', '2018-04-27 22:38:27'),
(114, 'JEIZA', 'SANTOS', 'F', '30853893', 'SSP', '1988-12-26', '82981199794', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'jeiza_raphaell@hotmail.com', '$2y$10$QRrvIm8aSjjegmIdvr3nGuj/MijnJxAWd8bAqbp93p8rSo62L.wlC', 1, 'P9X2OdgvIb2Q2MPzpZitXdzlNIFBhyzv7u445mIjWwiEK56UtaseKnjFgbpz', '2018-04-28 15:49:22', '2019-11-10 22:35:54'),
(115, 'ARIANA', 'DA CONCEIçãO DE LIMA', 'F', '2002004140723', 'ALAGOAS', '1985-05-19', '82 988555523', 'AL', 'Marechal Deodoro', 'Maceió Tabuleiro', 'Aeroclube', 'arianalima451@gmail.com.br', '$2y$10$KLJF074XmX.14cvYwdpT7OnKRzrJ4TQfIdJAQqkJGxWM1M4MIoQJC', 1, 'VjtmKa2rR7DZnKF4xNZ8a8HOTu9ytB9RpYXAUUV8xwV27qXo3r2oqjI0eq5o', '2018-04-28 19:16:08', '2018-04-28 19:16:08'),
(116, 'MARIA', 'EDILEUZA MARQUES ANA SANTOS', 'F', '1094791', 'AL', '1971-05-16', '82988292174', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'edileuzaanacleto1971@gmail.com', '$2y$10$z9GR6Ye89R6zTfX9BQxXvOLumdVQ/6xpseLbRTL2xJbc9hHT7ReWC', 1, '7DGAbOCRygIlNBP6jYjwxj3BX3K4Y4z41Zl0pYrZHSxgto5pWsEVk2TNVmjS', '2018-04-29 10:07:57', '2018-04-29 10:07:57'),
(117, 'GIVANEUZA', 'BARBOSA DA SILVA', 'F', '206006', 'SSP/AL', '1954-10-15', '82998481541', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'givaneuzabarbosa@gmail.com', '$2y$10$pTYW.B7FkMEVFO8UKlodQumFPS67OPzmp9j2//PzsMVg/2xUWo3Rq', 1, 'CCNneGUbTfsZFqRP2jMnnMHawwZfWsQOUOk3V4r5i4atAiV2uOHbvUDlYBrm', '2018-04-29 12:22:11', '2018-04-29 12:22:11'),
(118, 'STHARLLES', 'SANTOS', 'M', '36382082', 'SSP/AL', '1994-08-17', '82988799958', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'stharlles94@gmail.com', '$2y$10$igkFVIOUmcpjPoCN12TSFud/kIJmhATLNec3bB5MFhZHwgu0NFvlW', 1, 'LCspUfg4ojhMxt6leHqdCtAwFDErEy1VG7b7pVKOCC44d8aEk48IimjwiUC9', '2018-04-29 13:02:04', '2018-04-29 13:02:04'),
(119, 'TASSIA PAULIANNA', 'ALVES DA SILVA', 'F', '32460341', 'SSPAL', '1990-07-04', '988991671', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'perolla_bela@hotmail.com', '$2y$10$406csFDR6tL6UCDZE250WuIRbNcaISZAaEZUwKQfah4jQSlHg.jDe', 1, 'QfBkEmv7SmWBF0igwOdf9wgld3rPY7KJTkwkrq9c2tTZm0he4XV7osMzXxtA', '2018-04-29 14:32:49', '2018-04-29 14:32:49'),
(120, 'JACIARA', 'GOMES DE LIMA COSTA', 'F', '21628530', 'SSP - AM', '1987-10-19', '82 99582323', 'AM', 'Manaus', 'Maceió Tabuleiro', 'Benedito Bentes', 'jaciaralima0612@gmail.com', '$2y$10$9Dt4haw6mmdIUiu5TLgniO6l0.GA5CDLjiDtrDqmI2X3Lp0Fo1pmK', 1, 'ZOuk0lApwejzCiXv2UZ4Nvpm8cvHrhZhXAQT8eHJ2Soh735TqXjL4wLIMjuK', '2018-04-29 16:35:26', '2018-04-29 16:35:26'),
(121, 'LAVINIA', 'LIMA COSTA', 'F', '12345', 'SSP-AM', '2009-05-12', '82 99582323', 'AM', 'Manaus', 'Maceió Tabuleiro', 'Benedito Bentes', 'jaciaralima2012@bol.com.br', '$2y$10$UKT60CjpihQOTASZo/mMK.MHXJVVXoy2YUFKK8U1iZlaLJHeXinNq', 1, 'MEhxRLMtLsBlWwuyFnDnwS2e1KsiWOQruPJzlygl1ZlLFNhwb4mLsJHPSQ8N', '2018-04-29 16:46:48', '2018-04-29 16:46:48'),
(122, 'LUIZ FERNANDO', 'DOS SANTOS', 'M', '2001001136482', 'SSPAL', '1983-12-06', '82988147446', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'lfernandoz20@hotmail.com', '$2y$10$7.Os4AAtjt7XAW9nRJ7xSeMzc79SEJlEoqOC55dtH0XwphdAl61Uu', 1, 'bZDskRkwmfgETVm5YqzU4jZW8gxaGUpBvqx67FpysbtAt7VSMvqfahBKZLuR', '2018-04-29 19:10:21', '2018-04-29 19:10:21'),
(123, 'VERôNICA', 'VASCONCELOS SILVA LIMA', 'F', '123456789', 'SãO/AL', '1966-02-19', '82988065309', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'veronicavasconcelos_sud@hotmail.com', '$2y$10$DE/9lW9sOoRKi4NR3wmoOuOdrcTpFAm/iTOKhnXwc2ytGmBdu0dBK', 1, '2TaP2v5Yxxx6QMovNChhNrLKCSdknFR8RSIqroyLf4pTOO46buklTArqu6pD', '2018-04-29 19:51:09', '2018-05-27 09:51:27'),
(124, 'ALEX', 'DOS ANJOS', 'M', '31471390', 'SSPAL', '1988-07-19', '988637142', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Caetés', 'anjosmspn121@gmail.com', '$2y$10$S0NunRc19sr9ZY8mQHTc0Oi2laQYmAljgclN8G/WQDi9iHtxR1j86', 1, 'zywGKUmy1DcNAZPPyst4PvNp6pxfVco805YCMPvLQleOQIW44LZbHDcaERI2', '2018-04-29 23:24:09', '2018-04-29 23:30:33'),
(125, 'RAISSA', 'DOS ANJOS', 'F', '06614042442', 'SSPAL', '1993-09-25', '982024771', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'raissa_feijo@hotmail.com', '$2y$10$ukcZDpPKwnNBOj/8U.YmgO.FF/LaJ7Woys4tskMfKXFbKCK0DZYyK', 1, 'B9lyGSc3nzTtkMIw0nuPgYDvNacIcKybeHvuFUfr4LEBQAKBoK407WqH6dl8', '2018-04-29 23:35:25', '2018-11-12 10:19:12'),
(126, 'UZIENE', 'SANTIAGO DO NASCIMENTO', 'F', '332259', 'SSP/AL', '1956-12-10', '82987099935', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'uzienesantiago@hotmail.com', '$2y$10$b2cDSe1eNwCA3ygXXRff9OKT6r7OL2R8DXXTvboE4RgnOV2nz/sTm', 1, 'GhZAxnkK7xSULFl9y2Y93lCvvPPd0oheYDerb6sXcO52m4vVOpVMS0IESQEz', '2018-04-30 10:18:31', '2018-04-30 10:18:31'),
(127, 'CAIO HENRIQUE', 'DA SILVA', 'M', '8 416 689', 'SSP AL', '1988-03-01', '82998315155', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'caio.hds.sud@gmail.com', '$2y$10$JtmhYCc.iN/hiAeugUL1s.iAP8TduljFkwg26ilBx5l1NN1zly1Su', 1, 'cFPmuz2vgIpYwqDHtslU4McotRb401K01O5oAEBxXNGiuFsLTL9LoTGU0mFo', '2018-04-30 10:26:05', '2018-11-18 19:11:55'),
(128, 'ROSA MARIA', 'PEREIRA DOS SANTOS', 'F', '1420693', 'SSPAL', '1974-05-04', '988289884', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'monicaps74@hotmail.com', '$2y$10$R/Kho/tQCx0KXFvDnkMWPOoMePRUz07G4SsFIhVi4XaxwOofEZyN2', 1, 'f5f3MaAh90q3mId9LDmjDeNgvkC4VfPlM0SClIOv2QadqKZUjDJgxTmkF2pS', '2018-04-30 13:12:18', '2018-04-30 13:12:18'),
(129, 'JULIENE', 'SILVA DE ALMEIDA CAIANO', 'F', '33769079', 'SSP/AL', '1993-07-18', '82999200219', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'juhalmeida.sud@gmail.com', '$2y$10$kB4IKx8DFIaRDN7mMNCPYugw0zO0.TRUMIKNp.C8WtQEE3Js8W8Kq', 1, 'LgDXD7Qb81yX8q9VulDrkz4e9YQi4Y0T8q9kgZ9DFIU38XUNGnBCzA3IC0Zz', '2018-05-01 00:27:47', '2018-05-01 00:27:47'),
(130, 'GARDENIA', 'LISBOA DOS SANTOS', 'F', '1304198', 'SSPSE', '1979-06-08', '988190899', 'SE', 'Aracaju', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'gardenialisboa1998@hotmail.com', '$2y$10$5E/hsxrJT1hzds88tFwhyeBwJ3JMyQrFf2g3nMmmdpRREhTNqr1c2', 1, 'fNaJAg1imr6W8nRpXmlq3hMSB5PLeqmuIIb68v4RXKzoLRg9fDuk98j5F0yW', '2018-05-01 00:42:15', '2019-11-11 11:15:14'),
(131, 'FATIMA', 'MARIA SABINO TENORIO', 'F', '123456', 'SSP-AL', '1961-08-20', '988324567', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Benedito Bentes', 'gersonjge@ig.com.br', '$2y$10$UpGTXDnSxVIUHCR3nRST0.TlSeLLWlIV/2rOlRZu4KUCO2LcW.xNq', 1, '1s6oRaf9nhRQHtukujLrmeImjPkErpwWVK4EIS2zFnVR8bU00qU2UP8CJITp', '2018-05-01 14:14:45', '2018-05-01 14:14:45'),
(132, 'MARINA', 'MOURA', 'F', '4012608-0', 'AL', '2002-05-09', '82987322607', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'marinamourasantoss@gmail.com', '$2y$10$VaYabG7YV7G5RA6.a/cIruUly/fDTmAsdqnynLXcIwH3bTmiqcVk6', 1, NULL, '2018-05-01 15:47:42', '2018-05-01 15:47:42'),
(133, 'FABIANA', 'BARBOSA DA SILVA', 'F', '2000001148561', 'SSP AL', '1985-08-07', '82988340600', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'barbosinha.fabi@gmail.com', '$2y$10$BRtG1ylu1Uvc7zvFQMr.2.a5kH8RBcWgQjGxt8yBRHP9/doK6q9SK', 1, 'WSgRaVz6Htdo8ZqT7ztnsXvYVqKWCy3qd4VA5fky0DwLXajGjQQP07SphH6L', '2018-05-01 18:13:51', '2018-05-27 11:07:50'),
(134, 'JOSE AIRTON', 'DA CRUZ FILHO', 'M', '9.391.535', 'SDS-UF', '1992-07-27', '82988689753', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'joseairtonlds@gmail.com', '$2y$10$NEsSNcqiNzWIzaZi2RPw5.VSPea2lmjzeyvO.vP.kSl3Jo1fJlg/e', 1, 'nhbZD9edRPZq29ImjKuhGEYB2IOnqycREcEtQEelAM3hd7Sx6UOZe0o3ZNpB', '2018-05-01 18:26:23', '2018-05-01 18:26:23'),
(135, 'THAYS', 'OLIVEIRA', 'F', '219006251', 'DETRAN/RJ', '1992-03-20', '82999213731', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'tthaysdacosta@gmail.com', '$2y$10$37iJIgCm./2XQ0yK5sO77.SDBNGodYAid/1drZzZb0O70V4Xe4MUG', 1, 'mGpaOnatHMX7hTRWfFWmVQEE33Xl6tPWO673pkSVruPN9XKD3Sd2r6YljgqG', '2018-05-03 12:15:06', '2018-06-02 18:35:46'),
(136, 'GABRIELLA', 'HOLANDA PORTO DOS SANTOS IMBROISI', 'F', '2002001284350', 'SSPAL', '1987-07-12', '82 988293175', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'gabiportoimbroisi@gmail.com', '$2y$10$y5NnmVF7o3txbHkm9Dh3Nu2gHwTAsqqcnsB9gjuc3drzwhquXe5Wy', 1, NULL, '2018-05-05 18:33:00', '2018-05-05 18:33:00'),
(137, 'JOAO GABRIEL', 'NOVAIS LIMA', 'M', '41839129', 'SSP', '2006-02-02', '82988223338', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'sancell@gmail.com', '$2y$10$AWt/I3PDLnMOmRfykpYxluZ4G73MvbgKZC5wH7OKhiidikoVWKr7G', 1, 'c0jnL6yc3UaGQHSZ5UMGjPufjDBMu97l60nzyF2HstBRWBq117IGRnvONL3k', '2018-05-05 19:32:30', '2018-05-05 19:35:07'),
(138, 'MARLENE', 'DE LIMA FIRMINO', 'F', '1455949', 'MACEIó', '1975-02-10', '988522642', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'marlenefirmino601@gmail.com', '$2y$10$IScBLev3PqFqwl7gcPidsuVAN7mYji21LTrkHcvHeW2wi002L0bqa', 1, '8wP2hiISiPSRWtcSBwZUWqh7EHtMrvuqOC4VqjQWxCAh3kgtGNPoHfu3x3Qx', '2018-05-05 22:06:15', '2018-08-04 16:22:01'),
(139, 'WENDELL LUCIANO FERREIRA DOS', 'SANTOS', 'M', '4334035', 'SSPAL', '1975-05-24', '82988356053', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'wendellluc@gmail.com', '$2y$10$UHuixnVLN/BGDDOCX5Z84.5qRgkBJugO9zPqqSj1lggqIxucUzEEq', 1, 'VCaX5VWQWXUVYhc3Nc9Tjc3YbeXgJNnEyI9gvcaKAM0zduYEHWLL6MnYJ9jW', '2018-05-06 12:50:55', '2018-05-06 12:50:55'),
(140, 'CARLOS HENRIQUE', 'DELMIRO DA SILVA VALDEVINO', 'M', '1571931', 'SSP AL', '1975-11-17', '082988368165', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'delmirobag@gmail.com', '$2y$10$CybMIapa09hQr4gbP9GB0.2NkA2fRe9xpBQ/ZFMZ01gYBM2DEuTT2', 1, NULL, '2018-05-06 12:53:35', '2018-05-06 12:53:35'),
(141, 'JESSIKA LUCIA DOS SANTOS', 'DE LIMA', 'F', '35103710', 'ALAGOAS', '1991-04-05', '8287481465', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'jessika.lds.lima@gmail.com', '$2y$10$UBwzhvcft0hBgkSTua.Rj.QtrK6QtUL4EdidVCfF.lt4v9fikaUvG', 1, 'Dn6YKxc5SrG7lf6rxBQQJ0pCTHFd0Pa8I10mE4BBFzROhti2cDLsmSWLHM3J', '2018-05-06 14:02:07', '2018-06-02 16:40:12'),
(142, 'NATHALIA KAROLYNE DE', 'OLIVEIRA FIRMINO', 'F', '35812362', 'SSP', '1997-02-17', '82996156299', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'nathaliakarolynesud@hotmail.com', '$2y$10$VMJ3pfQlri.CJHIb5rwNmuu.QX3jw0KDb9cyW28nU4rpR6wOEP85O', 1, 'ySraFPAXL0PG0itWS8p44u4t31jwNR9q168G1kFPuqrJDpx3mOggu750UEgj', '2018-05-06 17:00:59', '2018-05-06 17:00:59'),
(144, 'LíGIA', 'MARIA PEREIRA DA SILVA DO NASCIMENTO', 'F', '2002001244439', 'SSP/AL', '1985-06-23', '82991012028', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'ligiasud@hotmail.com', '$2y$10$1ZCuEzxesncS8zdn9WC56OqqFAZ440StI7I9hkrjTBxp2NuAXJw56', 1, 'JcOww8582QDIDX6eVEoyU3Z5PJkpCTqSO1mjuMRnWAlDq2PEXrCOpkKxMqZC', '2018-05-10 13:20:46', '2018-05-10 13:20:46'),
(145, 'MARCOS', 'SERGIO RODRIGUES CAIANO', 'M', '30184580', 'SDS/AL', '1989-06-09', '82996642084', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'marcos.prosv@gmail.com', '$2y$10$PPZFMqmrp3llf3aFl7VKkuLQAiRbqfHpgpSheap2Y5KQX7mpSQ.Hm', 1, NULL, '2018-05-10 18:36:56', '2018-05-10 18:36:56'),
(146, 'JANETE', 'FERREIRA', 'F', '326439', 'SSPAL', '1952-08-31', '987292580', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'nicoladmoura2000@gmail.com', '$2y$10$xR5P.n3OALYMtA2wcVJih.ZA1rqGy3P2uT4nw9Liqno/.kgBgP6EG', 1, '81QxK3MwKaK6Uk1xVAdMEw0P2ySDleHz31VQODfb7SZr5WNL75nB61zyc6vC', '2018-05-10 19:50:32', '2018-05-10 19:50:32'),
(147, 'SONIA', 'BALBINO DOS SANTOS SANTANA', 'F', '2000002011250', 'SSP/AL', '1983-07-06', '82988616113', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'sonia20js@gmail.com', '$2y$10$5u3fm.qt5UdvowyOPWa8BeSsSSzw3J4/lO7PLyz.rJ.wr1jOZxxBC', 1, 'N0gLhJUPiR51T8qhkO4rzsK7oUGZCK3sfM3SCsjKO4OBl60CbMOHLlPwAyVh', '2018-05-11 14:11:58', '2018-11-04 11:36:19'),
(148, 'JACKSON', 'Dá SILVA SANTOS', 'M', '3814497-2', 'SSP', '1997-01-17', '82998419603', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'jacksonsilva-16@hotmail.com', '$2y$10$WnK3rG8.nwyFiQnXdgRweu1JkTtcH9Y6rUMXrHksehKR//AQaCnJO', 1, 'kRZU3PRMnvqbxIqfSZcA2to6q1HsFxHEGw9WAa5skgcEhXRmoKyCFzOKIuP9', '2018-05-16 10:09:40', '2020-01-05 14:16:18'),
(149, 'JOSY', 'BARBOSA', 'F', '586763', 'SSPAL', '1964-11-18', '988470281', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'josysantos2013.js@gmail.com', '$2y$10$oGIE9NxB7MkMGgWfvRdGD.XQe7kp1uSL6PzrtG8RDiyEw1C95m5Hm', 1, NULL, '2018-05-17 18:31:26', '2018-05-17 18:31:26'),
(150, 'TALITA', 'SILVA', 'F', '35861398', 'SSP', '1994-01-26', '82998408089', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'ttalitaa.al@gmail.com', '$2y$10$WIoESFhLCJwX8OYoprPAweOULo5ttSVNdB/qM3Kjdwo/adEc3AdjS', 1, 'vOpqVfG4Kq3eVjELDHI6jjQg1nleEPuB62t0e5l06wP6fEBvbxhshY6hRIex', '2018-05-18 07:12:33', '2018-05-18 07:14:31'),
(151, 'SIMONE', 'LUCENA', 'F', '1415078', 'SSPAL', '1974-02-12', '987016664', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'sil-lucena2012@hotmail.com', '$2y$10$HPppNL/HPafD37ZztO.8s.qf/ZSzQMAmDBXWigUVA7BeQwU0VQqFq', 1, 'Z7h2V7UDc8TmjU7tITXtoa5ADVgu77x4BvqcYPmWWOsdaxArOFLaXiBzypPb', '2018-05-18 09:55:59', '2018-05-18 09:55:59'),
(153, 'ADRIANO SILVA DOS', 'SANTOS', 'M', '783989', 'SSP-AL', '1970-06-02', '988945358', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'adrianosud1970@gmail.com', '$2y$10$p/j9iqB0bse/qVJS5gC6v.U3LY7/DK.6VHtJ7IE8IP1vIik7xtRL.', 1, NULL, '2018-05-18 16:13:54', '2018-05-18 16:13:54'),
(154, 'ADRIANO', 'DO NASCIMENTE', 'M', '2002006007524', 'SSP AL', '1982-11-07', '082991036169', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'al.solucoes@hotmail.com', '$2y$10$tOEz8CBcIR6E1NmpJPh6bOVtCMQaTnZ9QdGLFjugOxDT4qbXYJfHm', 1, NULL, '2018-05-20 06:58:11', '2018-05-20 06:58:11'),
(155, 'JOSENILDO', 'FLORêNCIO RODRIGUES', 'M', '3181482-4', 'SSP/AL', '1990-04-06', '82999261332', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'josenildof.rodrigues@gmail.com', '$2y$10$sv0.gF5vHhxjSEEoZW29/O0cqnW2ysp56KiAg/8tdvYtkzRcUmSNq', 1, NULL, '2018-05-20 11:54:08', '2018-05-20 11:54:08'),
(157, 'DANIEL', 'ALMEIDA', 'M', '38411865', '19072013', '1995-10-19', '82988257858', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'daniel.almeida.mbrp@gmail.com', '$2y$10$7VniOGVUJYaHb4.855NFEuRM4obx.Fu9pxMCl8ZDy6W5v3eKVERTm', 1, NULL, '2018-05-20 20:46:17', '2018-05-20 20:46:17'),
(158, 'JOELSON', 'SILVA', 'M', '3901102', 'SSP', '1997-01-27', '81988532558', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'joelson.silva.conceicao18@gmail.com', '$2y$10$HPvTsnGbe0kx/NorEhZ4LeMvQoiDem0qOWdXtDtyPsdPt1tMmADpW', 1, '6JyBm68UDMFJBEYlt0VNnegb9JVCYR6HHo1mKl30OZCQVbx6RoMXyx7X0IpR', '2018-05-21 05:12:08', '2019-10-29 22:16:37'),
(159, 'LUCAS', 'DE LIMA', 'M', '34271783', 'AL', '1993-09-05', '82987481465', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'lucas.nivana.rock@gmail.com', '$2y$10$mSo5ZZ64Hu.3oaw7EoDcV.R1zdMpfrkLgxjAJUl6/h.Ssf6VPPK2W', 1, '4rwOokqVoGBvVRLWFaAupGORoPBOy8toxLeP1VfzhydyDjO2Ke159eBt9IjK', '2018-05-21 11:00:27', '2018-06-02 19:25:01'),
(160, 'INGRID RAIANE', 'SILVA DOS SANTOS', 'F', '42321328', 'SSP/AL', '2000-12-10', '82999200219', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'juhalmeidacaiano.sud@gmail.com', '$2y$10$BUSdsOZ4DDUthGmv1w05eeANWj23A4HVRrKQxa3QGjiOwjijEnneG', 1, 'oAGuVVRWe0qqUTPKqDGwe3dMdfx5p8wTLD5bOBmrIQNoNxNlI1i0jH3vaNKK', '2018-05-21 12:05:41', '2018-06-04 19:32:06'),
(161, 'NATALY', 'LOPES VASCONCELOS DA SILVA', 'F', '42464501', 'SSP/AL', '2004-02-08', '82999200219', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'juhpedagogia@hotmail.com', '$2y$10$0T57F6YRnJSFa7tf.7wUieScAWwx2fdQdLNm2g8J6JhnzGHSvLSL2', 1, NULL, '2018-05-21 12:11:19', '2018-05-21 12:26:42'),
(162, 'MAGDALANE', 'DOS SANTOS', 'F', '730779', 'SSP/AL', '1966-11-26', '987388228', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'magdasantos8881@gmail.com', '$2y$10$/jROfkmNEjmYC5jq9hvmdeuWsVNbAQB/ShYAa3Epp05YzImXPpgUy', 1, 'K0jU6lcKfmMJeUgbjIiJRuIfOUIZ7sHlfN8Lt8v7JnM6icIXDTHczEbuLQZe', '2018-05-22 20:36:30', '2018-05-24 20:11:05'),
(163, 'MARINEUSA', 'GONçALVES ROMãO', 'F', '556760', 'SSP/AL', '1953-12-03', '82988262140', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'marineusa.sud@gmail.com', '$2y$10$NmhcePm2TXhd5qSioGFVHO//lHr2r5pe1oehOOTKmRPYhqdnWbmoC', 1, 'xc97CuAoDiW6GUzLWvIh627odlNGghxME1dobf0MMuo7B41bZjCYab8faEBg', '2018-05-23 16:06:33', '2018-05-23 16:06:33'),
(166, 'BIANCA', 'GAMA DOS SANTOS', 'F', '43501630', 'SSP/AL', '2005-09-01', '999197529', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'marcoscaiano.sud@gmail.com', '$2y$10$qmBmSVQSkroU5YYJXcQgm.4b/DNgKumTnoCqdg6dmSYgBbF6Ra9ua', 1, '2GWPoXLgxcZkUwFfyPVt1jWwXDnxHhLxFiIqm1Vm2m9XpYvZe4qtdkjCzUJH', '2018-05-24 19:08:12', '2018-05-24 19:08:12'),
(167, 'EMILLY RAYANE', 'GONçALVES ROMãO BELO', 'F', '43216650', 'SSP/AL', '2006-10-22', '82988262140', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'emillygoncalvesromaobelo@gmail.com', '$2y$10$MYWSx6GxGQHyxZTJsUbqOueUlmXPXH5bhZjTL3Q70tix0824vTlO6', 1, '9yS90TixAGHtRthMCZ8NemQ495cEEX3ul7lYgHTFnKYGmFMXHCrsJVffnlYX', '2018-05-24 19:59:28', '2018-05-24 19:59:28');
INSERT INTO `users` (`id`, `name`, `lastname`, `genre`, `rg`, `orgao_exp`, `dt_nasc`, `phone`, `uf`, `city`, `stake`, `ward`, `email`, `password`, `ativo`, `remember_token`, `created_at`, `updated_at`) VALUES
(168, 'ÁLVARO VICTOR', 'GOUVEIA DOS SANTOS BRITO', 'M', '38922118', 'SDS/AL', '1998-04-29', '82987314273', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'alvarovictor.brito@gmail.com', '$2y$10$sZPFR27DOKIjmdEJjtejw.yeiQ..0/txhO6dHzcewYYtUC.VNkzXK', 1, 'iDtPSCi86MvZkwxYD1kZcyxQG2rO4eF8tRVf9Iiwl4Wi2NFiZ7hBwHsbRwQa', '2018-05-24 21:34:07', '2018-05-24 21:34:07'),
(169, 'OSNALDO', 'CLEMENTE DE BRITO', 'M', '2003001151660', 'SSP/AL', '1963-12-03', '82', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'ocbrito@hotmail.com', '$2y$10$cuqhUViapIuBYkUxLR8vu.O/wrxPaoBQ79s9aRlY2onmme8QFyXi2', 1, 'cCoQ7SUMxLZx7tU8H00FDsjSpD3nE6sfLed8IpZAlBwfzZvmVPFGhPnSnadD', '2018-05-24 21:42:07', '2018-06-15 10:08:17'),
(170, 'ROSâNGELA', 'GOUVEIA DOS SANTOS BRITO', 'F', '843443', 'SSP/AL', '1968-09-04', '82988739094', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'rosangelabritosud@gmail.com', '$2y$10$7habtnBUaiW2Y79fxKacFeUKLis13gWErOajFbAkm4KUokCECKZv6', 1, 'USFb034O9wGAouhpMqhVVAUoyUcXGSflTIX5qYH4ySBGnPMlUHaLT05WHuj4', '2018-05-24 21:45:20', '2018-05-24 21:45:20'),
(171, 'MAYRA', 'NASCIMENTO', 'F', '34556761', 'AL', '1994-02-19', '988496772', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'nascimento.mayra@outlook.com', '$2y$10$d.JVlZtwuPIGVNiY00NpWegAVSUYAe6FsH.CxQFnzAlP/16xEte0m', 1, NULL, '2018-05-26 02:27:16', '2018-05-26 02:27:16'),
(172, 'DANILO LUIZ', 'DOS SANTOS MOURA', 'M', '3555192-5', 'SSP AL', '1999-01-26', '987357991', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'danilomourasud@gmail.com', '$2y$10$zFkY7F9xoiREIhiF2KrvA.Rl8J7Gq86zoucoh4ADOsq0NJkcacbL2', 1, 'rzEamU6Rsl09S3wOWRqnnCoxEzex5b2ohSUqn03UG5HPbk6hlW4XYAwoiHhk', '2018-05-27 10:55:48', '2018-05-27 10:55:48'),
(173, 'NAYARA KAMILLE', 'DE OLIVEIRA FIRMINO', 'F', '41989589', 'SSP AL', '2003-05-26', '998240850', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'naykamilly234@gmail.com', '$2y$10$lQtcdQ3xO1nRjU/TGACiCeaR5zxVuk9vGDVhL8Z.8H7WlRaes5poy', 1, NULL, '2018-05-27 11:02:40', '2018-05-27 11:02:40'),
(174, 'RAFAELA FERNANDA', 'BARBOSA DOS SANTOS', 'F', '9.445.139', 'SDS', '1996-09-20', '82988689753', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'barbosarafaelalds@gmail.com', '$2y$10$RcaWfc8TxEM3RgC5/sTcteC9I02Uo44tVRNqgFn8QkQma8wdWrszm', 1, 'EF83tHMdHcrFL2393FtkJPmmRSmb4wX6EhGzor4dff877QlpV7CG3D9kiowz', '2018-05-27 13:05:04', '2018-05-27 16:42:39'),
(175, 'MARIA DAS DÕRES', 'DA SILVA (DORINHA)', 'F', '980.013.541.33', 'SSP/AL', '1965-05-26', '8298849-8224', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'dorinhacarinhosa18@gmail.com', '$2y$10$E1Biq3nvgGmdrp0Dhy6iXu.zebqNUnDtsic7xZ2t00CH03MzPZNOW', 1, 'ggbYqyLQS83QD8QTTl7ZDwVKlowZj1PMiSjHvpY2jGmvR5H3S7H3m0dj8mdD', '2018-05-27 18:20:49', '2018-05-27 18:20:49'),
(176, 'RITA DE CASSIA', 'SILVA SOARES', 'F', '1459847', 'SSP/AL', '1975-05-10', '988925230', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'rotasoares19775@hotmail.com', '$2y$10$3A1c/f.dTkZeE0a2yfLh1eW5Fis3WHI.ruVXomM9vBYbTzV7kwNK6', 1, '23RTEgIU2kaGTi5ekZkMWWwICJgIgbWWkHK6XG5Rewy95etkKjoj2RmzDbl4', '2018-05-27 19:59:15', '2018-05-27 19:59:15'),
(177, 'ERIBERTO', 'ALVES SOARES DE MELO', 'M', '813440', 'SSP/AL', '1967-12-11', '8288882058', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'eribertosoares2016@hotmail.com', '$2y$10$4ZQI9Z1yW0uQ0EtAktlYs.bctmgiA4UsdH0kGfZgGUOl2OwojpWjG', 1, NULL, '2018-05-27 20:13:08', '2018-05-27 20:13:08'),
(178, 'LETICIA', 'CARVALHO', 'F', '3566235-2', 'SEDS', '1998-02-06', '82988164065', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'leticiafamiliacarvalho98@gmail.com', '$2y$10$r/DYkwETQYe.GT39AoYFqO7./LIS6yvxyvyprwx7X3d.TtCJO/KHW', 1, 'rB6FOipchGXtZmXIyIj3hlZVMQPaSyBdz1HLnLcRY3taqQnyoEm7AJte7DEy', '2018-05-28 11:08:04', '2018-05-28 11:08:04'),
(179, 'SILVIO SILVA DOS', 'SANTOS', 'M', '3283644-9', 'SSPAL', '1979-07-11', '82996109478', 'AL', 'Palmeira dos Índios', 'Maceió Tabuleiro', 'Aeroclube', 'silvinho.sud.25@hotmail.com', '$2y$10$ZByoC.kWOIHvZx2EcYw/huMTG2VW71GWGMa42uAkccgUvjzZ62q2i', 1, 'N0ajLSlKxkztW8wLunIyg9V1wzu4CvYhDHhpoVUVAtrsONi6GPiNeL0d995Q', '2018-05-29 21:07:29', '2018-05-29 21:07:29'),
(180, 'ZILMA', 'DOS SANTOS MORAIS', 'F', '474929', 'SSP/AL', '1962-06-26', '82987260581', 'AL', 'Viçosa', 'Maceió Tabuleiro', 'Universitário', 'zilmasud1962@gmail.com', '$2y$10$dTD6BsGjLJtyeny3Cvz7OOvbvazFIfdONNELhQzbsEsXIvofg/UwG', 1, 'AZnZUvYvwseVnZiXafiZY3B0geIKTCXkmpI01lNXlXGtSos8hlwb0psTeRf4', '2018-05-30 16:55:15', '2018-05-30 16:55:15'),
(181, 'ANA CLARA', 'DOS SANTOS', 'F', '37481914', 'SSP/AL', '1999-09-16', '82987260581', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Anaclaradossantossud@gmail.com', '$2y$10$./X3nxR/hkLmchoPui6FNOwoKzMUycUON4zFsyReOI8vPUSM2aphm', 1, 'tk0ucy98jOnUP0nofKJijIbigPMI2UUGQPSNZw4LorRSYyLJRtBjEQNtRlPO', '2018-05-30 17:21:26', '2018-05-30 17:21:26'),
(182, 'BRUNA', 'ANDRé SAMPAIO', 'F', '35282673', 'SSP AL', '1993-12-10', '82996021586', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'abrunasampaio@hormail.com', '$2y$10$AnC6/9qwFVdaPpKR5iVsGerBGWCe1G8EQfmRdvmYz2f6Z/beU0PDa', 1, '2HzjdgA37DNY1FSfGehkANIaH4jviDQJuPJUdxTb5bISu0gsoEVNDqOBCS26', '2018-05-31 11:57:24', '2018-05-31 11:57:24'),
(183, 'SALETE', 'CARVALHO', 'F', '1108216', 'SSP AL', '1971-04-27', '82987533282', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'salete_familiacarvalho@hotmail.com', '$2y$10$SpDV1ZEHhclkpnvhpPJBse7t4ALorhdcQwTZ4gdcvt5G98Lg9Rbbq', 1, 'mdLuHSFeUXzVxYcGU2UXGMq7IAjgEcZh7kw8scq65FFphAVtUJTre86DjFpL', '2018-06-02 12:32:21', '2018-06-10 14:59:14'),
(184, 'JéSSICA', 'BERNARDINO DO VALE VASCONCELOS', 'F', '33078394', 'SSP PE', '1991-02-21', '82988010554', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'jessicadovalevasconcelos@gmail.com', '$2y$10$D2zwfjvqw5TP5Ww5bSRE9e3yeOb.GfsSdkQymZ5L353.hHxFFkv6W', 1, 'WDIz22OcvWBgeVrpLdDLvmveoYnHq9MfAo2vW81HuHKSD1pdua5X5KiVakIt', '2018-06-02 19:16:36', '2018-06-02 19:16:36'),
(185, 'JOãO VITOR', 'BEZERRA MONTEIRO', 'M', '38036398', 'AL', '1998-03-07', '988590123', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'victorxclone@hotmail.com', '$2y$10$woRsLQjyJdTzdFqOcMZnaeLVzMhvitRnnWpN28E71wMvcA22qFdPW', 1, 'Gp8IFrcEoJbnZHkCmFDBlLGkOoKNu3PNIHDPSSfXEWVVQ6FburEdZphzeJ8c', '2018-06-03 13:27:46', '2018-09-24 00:06:40'),
(186, 'MARIA', 'EDUARDA BARBOSA DE FREITAS', 'F', '41798341', 'SSP', '2002-09-30', '82988340600', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'dudab.freitas2002@gmail.com', '$2y$10$74JPDsRs5rhb6tR2Fx7LhuSKeLjpQ3pKnOPMITsOlsTBPbKUBHWT2', 1, '24iKyXiiKRf0fhibsYUj52qeBz3uQjGJ4ml05Md9NBlOTl9TY1i5JkkVdUg7', '2018-06-04 19:14:50', '2018-06-04 19:23:00'),
(187, 'RUTH', 'MELO', 'F', '99001280618', 'SSPAL', '1982-10-29', '82987215712', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'ruthmelo82@gmail.com', '$2y$10$yi5Y4tVEqeVLAuzGpGw3..hM476efuP5hmXh2fFyC2pxnh25jsxWy', 1, NULL, '2018-06-09 17:55:47', '2018-06-09 17:55:47'),
(188, 'LUCIENE', 'DA SILVA SANTOS', 'F', '1468649', 'SSPAL', '1975-01-31', '82988123653', 'AL', 'Pilar', 'Maceió Tabuleiro', 'Tabuleiro', 'lucienepilar@outlook.com', '$2y$10$iOBrQMv8YZBounp1RrkcZuvvamCsmwD13ndOxkbgl4gL7xqqqSVtm', 1, 'BIWDiBYNm6dZ9VkuTEVjuvgWavFK1BALCgp3DCv0lFGxcvtgSa1ixOuFsFel', '2018-06-10 08:55:17', '2018-06-10 08:55:17'),
(189, 'GERSON', 'DO VALE JR.', 'M', '34059318', 'SSP/AL', '1993-11-01', '82988673226', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'gersondovale20@gmail.com', '$2y$10$hbGw1hqL/fmQVy23v6MvS.GvEmjR4fdoRT4j/Q4oGEkbRzTWYkwma', 1, 'as64P7z5qAMDB8Pf2DqVsGVGBShUsnudgvi1rx6bV1yAokgXe0W3a30uVp8l', '2018-06-10 11:44:27', '2019-02-10 10:45:00'),
(190, 'RITA DE CáSSIA', 'DE ALMEIDA', 'F', '98001083288', 'SSP', '1970-07-20', '8298001083288', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Benedito Bentes', 'ritadcassiadab@gmail.com', '$2y$10$cInkiBqV5rcBoVMYr7aLD.KxMinZkRPHEXaePO1MRN.p2luKrA7ii', 1, 'ALlZZND5PVKa1Q6CTaCV2l8GtLig6fndD5373CvhAAdcpSZLYANq4iEaXnvc', '2018-06-10 18:52:37', '2018-06-10 18:52:37'),
(191, 'WILLIAM ROBERT', 'FARIAS', 'M', '36783897', 'SDS', '1997-01-20', '987492146', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'robertsouza012@hotmail.com', '$2y$10$9WCGsxwZucTaKKF9adcRQ.XfCdVtNVIm0MOugN4X/wdgc90idqZEG', 1, NULL, '2018-06-10 19:37:44', '2018-06-10 19:37:44'),
(192, 'DANIELLE PRISCILLA DOS', 'SANTOS', 'F', '2000001209242', 'SSP AL', '1982-08-19', '82 99948-1862', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'danyptiosam@hotmail.com', '$2y$10$dpXKkgFGkvsh6O2ONq0Is./HlST49UjlF/al9FgmUbzu9ohepZT.y', 1, 'b08tvzX9iWmRpH1ddWb86vJzu2tnLJ9EnnZidp8cQEZq2irZfLEcdFZ8nLMq', '2018-06-10 21:36:49', '2018-06-10 21:36:49'),
(193, 'EDNA', 'APARECIDA ANDRE', 'F', '98001184106', 'ALAGOAS', '1971-05-24', '82 9 9655-9427', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'ednafriendsud@hotmail.com', '$2y$10$nMCCMJee8sIGqW.zuA7DU.V58..74rCUoZ2M4QoBMcJofvJ3ZCjWm', 1, 'F0LOJAxQFzPqeDRWg9uWk4Flwch87m0wVsW8nSib1EFYNdR32w2rbECpf7oa', '2018-06-10 21:53:54', '2018-06-10 21:53:54'),
(194, 'MARIA ROSILDA', 'ALVES RIBEIRO', 'F', '98001120728 SSP/AL', 'SSP/AL', '1969-03-28', '(82) 98893-2428', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'rejribeiro@hotmail.com', '$2y$10$PuArtyeNLHTEx7pOX5pq6.OxN6OZ.yT0VIH3Iy29MlhcR91CT8tUa', 1, NULL, '2018-06-10 21:55:39', '2018-06-10 21:55:39'),
(195, 'EDNEIDE', 'SOARES DE LIMA', 'F', '140.572', 'SSP/AL', '1952-02-20', '(82)98803.1266', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'edinha_soares@yahoo.com.br', '$2y$10$EaNZp28biOGuyoofks2IFudr8sOrkj.qXyGqaxc9eBZlUtXdRGJLW', 1, 'WKApIuxmFyc9t6ykuBlvqKP25AoaWFb9dPwYV1VFn4HPSLsV5uAFIIFiWe23', '2018-06-11 10:23:29', '2018-06-11 10:23:29'),
(196, 'CICERA', 'PEREIRA DOS SANTOS', 'F', '4716384', 'SSP AL', '1953-02-28', '82987087456', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'cicerapereira.sp@hotmail.com', '$2y$10$zArW2LtYyKA4ap37GYcjVeluZoeNuXt7gLChNS6pNhBwSlASg.h4u', 1, '7Itq5C5kNj8Ml6kBR1EdKK0trQ8MIGEw1utHBcJUG7Nm2N46VBm0Zp8mMYPn', '2018-06-11 22:06:52', '2018-06-11 22:06:52'),
(197, 'JOSINETE', 'RIBEIRO DA SILVA GOMES', 'F', '1144976', 'SAPATOS AL', '1972-01-10', '988766984', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'joseneteribeiro72@hotmail.com', '$2y$10$R8lhcl8wO0s83l83CIMy7O8bT.wLWqkJaQDtn9AeqITvdxzhYPBly', 1, NULL, '2018-06-13 10:43:19', '2018-06-13 10:43:19'),
(198, 'JOSENITA', 'RIBEIRO DA SILVA SANTOS', 'F', '2000001293030', 'SSP/AL', '1963-06-26', '82- 9 9141 1921', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'josyribeiro.2016@gmail.com', '$2y$10$.jCw.ENjxhYgfO5f9i5IJu4SBy43FdIAF8gBMELanEqMxg.guRG5W', 1, 'FsWxFj8uQZnBVnwOEQKba22cKBZL013WBsc6HFy4H3xThaT9mOMRoakBedwd', '2018-06-13 11:27:29', '2018-06-13 11:27:29'),
(199, 'ALISSON', 'ARAúJO', 'M', '34418717', 'SEDS/AL', '1992-08-25', '82981854039', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'alliseguros@gmail.com', '$2y$10$xQOIDVIioHNfp7CnxEqR7u0XiPigSOU6/xppvNDCakRRfpaMX33ZW', 1, 'DvP85vzwyS8itL6DWi90Ma2dIA68WpYVzQ14ehtpK4rF74IQqC6SrRa9URh5', '2018-06-13 21:24:16', '2018-06-13 21:24:16'),
(200, 'LEILANNE LIMA', 'DE AZEVEDO', 'F', '35000163', 'SSP/AL', '1989-06-05', '82 98805-6288', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Leilanne.azevedo.alice@Gmail.com', '$2y$10$PcVJ3uK.YYyJlv1roLoDeusXQwaoRjsMgxEyqGceiMLNeVT7jkuZq', 1, 'WQo8vBoG4f5xNfQ3o8DMSPoycVJCD9vlAzUkIuQJJ324lzdJ8L8NQPR192PA', '2018-06-15 09:17:42', '2018-06-15 09:17:42'),
(201, 'ROMARIO CESAR DA', 'VITALINO', 'M', '38044005', 'AL', '1999-05-06', '82987563013', 'AL', 'Major Isidoro', 'Maceió Tabuleiro', 'Tabuleiro', 'romariocesar0605@gmail.com', '$2y$10$jDEWKsycBtiRlPr7P840dOitb8YOAPC1rCzfb5xjd0yL9wDBFiG7K', 1, NULL, '2018-06-15 12:03:41', '2018-06-15 12:03:41'),
(202, 'VANIA', 'GOMEZ', 'F', '99001089438', 'SSP', '1979-06-20', '82988252942', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'raullima@sudmail.com.br', '$2y$10$1Iz6lnBggNiTU1hcfWJv8.rFiS4uGyt./UI5BIrWPWh5vKOzS5XZC', 1, NULL, '2018-06-15 16:30:19', '2018-06-15 16:30:19'),
(203, 'MICHELLE', 'PEREIRA DOS SANTOS', 'F', '1499977', 'SSPAL', '1978-03-02', '82988329174', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'michelepereira038@gmail.com', '$2y$10$Dw07u6N/kodA1TZdN7QJtulLFJaxjMDPpi5MhT15N1vsnphHTqLBO', 1, '6Xva9qubkbqr5oieTql50CutLqljreJhYzJ1OjfufDtcRZr7FWa6yRW0Qidm', '2018-06-17 20:47:42', '2018-06-17 20:47:42'),
(204, 'THALISSON SOARES', 'DE LIMA', 'M', '38110717', 'SSPAL', '1998-01-16', '8288797689', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'sancel@oi.com.br', '$2y$10$IzPoJgOQCCj465KBI9Br6.bejxgUvlVW.wwS6kEDMfaCGE4VvULlu', 1, NULL, '2018-06-18 14:50:51', '2018-06-18 14:50:51'),
(205, 'EMMILY', 'PEREIRA DOS SANTOS LIMA', 'F', '13256510442', 'SSPAL', '2001-01-25', '082988397639', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'limaemmily9@gmail.com', '$2y$10$J1VAElPg85I4I21EimH5euJdk2T73WFT88.hVppxQRgFJLFAkc24W', 1, 'AWKyCwJ1huT2kIvGLzCCotn1YzDKkO84LFFVmw4aueGrZRBoTpFP5AOHLOcm', '2018-06-18 22:09:19', '2018-06-18 22:09:19'),
(206, 'HAMILTON', 'GOMES DA SILVA', 'M', '167779', 'SSP-AL', '1951-12-10', '82991012238', 'AL', 'Arapiraca', 'Maceió Tabuleiro', 'Benedito Bentes', 'valeservicos@yahoo.com.br', '$2y$10$OVgcZ1Qh8nFVqhnHI.zI8eoGDRWtAaP5e2mMAkIOyVeF4iSzUdNdy', 1, '5ohtKmHOkenE7NPa1Ny72KPnWMaTG7PEg57AmeTjusM8g6ioWm5oCJBtQ4LD', '2018-06-20 08:08:09', '2018-06-20 08:08:09'),
(207, 'MARILEIDE', 'DA SILVA', 'F', '70866698', 'SSP-AL', '1965-01-06', '82991012238', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Benedito Bentes', 'gersonjge@yahoo.com.br', '$2y$10$Q4zhUEMCr7EzUMIlCqzEvO.lbK3UR8zKBINzt2ZW.AuJ9CJHsDglu', 1, 'Wmhvhxpqoo4sdVHNYwmiT3bzXg8fMpex5LrmFq9nzPcgNVuQvAP3C7r8FIgN', '2018-06-20 08:18:09', '2018-06-20 08:18:09'),
(208, 'UZIENE', 'SANTIAGO', 'F', '332-259', 'SSP', '1956-12-10', '996313474', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'lohankiko@outlook.com', '$2y$10$oFPEVbH0oJL4rkiKkLwByOxcqjiI6lgj7unHQU5mMl8e.8cMs966O', 1, 'OO99fWUjbfGdKqCpwq2OOikOunI0lCCVgs1BrUzMfI1fFlqjSKB5hJvSdk11', '2018-06-20 16:52:08', '2018-06-20 16:52:08'),
(209, 'JANE CLEIDE', 'BARBOSA DA SILVA', 'F', '1525447', 'SSP/AL', '1978-08-31', '999528066', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'janecstar2@gmail.com', '$2y$10$mG4ZKvDtVCTDCJeRMVqyo.vdAtwGnvTcNe1XitQmX2v9ASiHcdz8W', 1, 'ZP6qgZbmRnkaBIcb7QdIsMpQVZpD9EuTy6VjiDi6vyGaKD3jxLg0KqvC2pmm', '2018-06-21 14:20:37', '2018-06-21 14:20:37'),
(210, 'PEDRO', 'RAMOS', 'M', '3515408-0', 'PO/AL', '2002-09-15', '82987322607', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'pedrohenriquesud123@gmail.com', '$2y$10$boS0cqWW8EFe97ywvQXt3OS34V/P7euwGWHLopAbmf/FOEodlYujC', 1, 'UxbMzKOA4HapdWZ8cWhvLvVDjMHEPYPncUD4NNqjcYaUVFLh8E5mxuyvV6Pl', '2018-06-22 13:38:42', '2018-06-22 13:38:42'),
(211, 'MARINA', 'MOURA SANTOS', 'F', '98001335716', 'PO/AL', '2002-05-09', '82987322607', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'hortencia.lira24@gmail.com', '$2y$10$Z9wTttJrT4d7wefjjUfvoeYd3g9VoZYBfgU5VQqzrWqpWD.W0Lqlu', 1, 'TsHqX5u1njsDcSwQWtZ1wU7b9jteXYC8xNj0s9Rq6ZLz1ePjB6F1MONWXiQS', '2018-06-23 11:51:46', '2019-01-29 15:01:13'),
(212, 'ADRIANO RAMOS', 'ALVES', 'M', '20002001177510', 'SSPAL', '1987-04-24', '82 988545423', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Caetés', 'wilmaramosalves18@gmail.com', '$2y$10$uZYHBYW7BdJPk7wRtee0ZOmIZU2nwqCN8zVfA1oHg/RioH64vNVP.', 1, 's8y6Rgt0bZOR57ipQG8HdUDGH7qwDH9g0bS7dhWIP2536jkLbg0qNUs7Ff0P', '2018-06-24 19:56:26', '2018-06-24 19:56:26'),
(213, 'MARLENE', 'OLIVEIRA', 'F', '1717399', 'SSP AL', '1978-02-01', '82988370756', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'marleneoliveirasud@hotmail.com', '$2y$10$pAtPXcvJMold0w.MUYPO5u5fuPgxdGX9UsQ1pjj1Oy/FMtwBOPxRm', 1, NULL, '2018-06-26 09:09:25', '2018-06-26 09:09:25'),
(214, 'ANTONIO', 'ROGéRIO', 'M', '273020', 'AL', '1955-12-10', '8298743-2402', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'antoniorogerio55@hotmail.com', '$2y$10$NB917i99pRndJQ1s0r8g.ujfIh1nWFZuLBYfDEtbSMvNfiJhgZR3a', 1, NULL, '2018-07-01 09:35:12', '2018-07-01 09:35:12'),
(215, 'VERA LúCIA', 'CAVALCANTE DE BARROS', 'F', '537.157', 'MACEIó', '1956-10-22', '82988402903', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'veraluciacavalcantebarros@gmail.com', '$2y$10$qRTJuEx5Ztat3Hh5ktY57eyvB59bY4npKVXX6R8W04YmAqaWBx3BC', 1, 'FwYe0y5kpwFjY5ewUZCpilatW9cHDZoQMoezhOIkkFi4UiJebAtAEDkvNx8y', '2018-07-02 21:14:08', '2018-07-02 21:14:08'),
(216, 'CRISTINA', 'BARROS DA SILVA', 'F', '1350568880', 'SSPBA', '1988-01-19', '82998051466', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'cristina.barros2931@gmail.com', '$2y$10$Zqni63kPiC8TpyRkC9qQheefqk2MiC0XQffy1BYPK0yMrzQI/ShbW', 1, NULL, '2018-07-04 14:36:16', '2018-07-04 14:36:16'),
(217, 'MAURA', 'CRISTINA VITAL COSTA', 'F', '879597', 'SSP/AL', '1970-01-01', '8288860075', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'maura.cvc.70@hotmail.com', '$2y$10$HfuVEUTLOiO4ASlF9lj9TO08nC4COvIPd.zAPFA9UYDMd05ZjQGg6', 1, '9OpPKwOZgj94J8b5wvWLPtHdvTZ75JM4bh25x21pvBuHYOxWDvF72pgs9fTl', '2018-07-08 11:00:41', '2018-07-08 11:00:41'),
(218, 'WILLIAM ROBERT', 'FARIAS', 'M', '3678389-7', 'SDS', '1997-01-20', '87492146', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'willianfarias012@hotmail.com', '$2y$10$KL3BB6Hp8Cfogho5.pj8OeIpzOkWt4dAP3Gbchh56o6qscvcnoWZm', 1, '14FAocc26jLxzrqwkk4tMi4jddKeMW2sfmRWnyHORhwLxY4gYcarUFlpji26', '2018-07-08 13:51:37', '2018-07-08 13:51:37'),
(219, 'ROSICLEIDE', 'PEREIRA DA SILVA', 'F', '2002001018730', 'SSP/AL', '2018-09-19', '8288032322', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'cleidesud2014@gmail.com', '$2y$10$yW1NM9F34ttLsY3KUnIDoOn/0hpHofH4MizbGmPM.A3GxclIJd/Fy', 1, NULL, '2018-07-11 23:28:48', '2018-07-11 23:28:48'),
(220, 'PAULA', 'GOMES DA SILVA', 'F', '1792333', 'SSP/PB', '1975-08-23', '82 991113583', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'paulagomespsi@hotmail.com', '$2y$10$Cv3sSJV7rAnKLsxbPloxqO7Cq.YsAziGapnN956DflvwCxP1DC5HW', 1, '89GZQvcz19ZgVwUWVNALmPQIwrc9Ce6xXibnkYlu1g6kVoLjZtqdtmDV28nT', '2018-07-12 14:52:09', '2019-06-04 08:31:15'),
(221, 'EMILY RAQUEL', 'GOMES FERNANDES MOREIRA', 'F', '42335760', 'SSP/AL', '2001-07-27', '8296487019', 'BA', 'Salvador', 'Maceió Tabuleiro', 'Benedito Bentes', 'emilyrachel2009@hotmail.com', '$2y$10$QgRla2AUOswHPyJZFzRTzu6oZRUeeosQJBJa7FRdv4R1lgTRASPyS', 1, 'otJ69dpvQlRPPyojJvOeI2NywiO7g9TsTJ6E9I9hEfFQ6bgVs4dxNOFvUxB0', '2018-07-12 15:10:02', '2018-07-12 15:10:02'),
(223, 'JANAILDA', 'SANTOS', 'F', '4310783-4', 'SSP AL', '1966-01-11', '82991903300', 'BA', 'Santo Estêvão', 'Maceió Tabuleiro', 'Aeroclube', 'jannysud@mail.com', '$2y$10$DqFqyXGPzsbVyoLtsklX9ePUE93/DqClLqEqIwvr1L69tQfh6gCrG', 1, 'UfXtsnVmCMk2LhqOvMcTHaEy4Zi0mx33jWT8FvYs2machu6m8YudhFpUufBA', '2018-07-12 23:06:42', '2018-07-12 23:19:19'),
(224, 'FERNANDA', 'COSTA BERNARDINO', 'F', '35066989', 'FERNANDA', '1997-03-10', '988773123', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'fernandadino.sud@gmail.com', '$2y$10$/1B.RGA85MasQGFZRGqw6ORMOJV9cPy.EOsN3.8XXKU1gcEftj3mq', 1, 'hXNUqEq3G1aTZLIDCPBR5hkc9vKacSPov6dfDCQLsCCG3mH12Qw12ivSMfa0', '2018-07-14 19:17:16', '2018-07-14 19:17:16'),
(225, 'JULIANA MAYARA', 'MELO DA SILVA', 'F', '42324394.', 'JULIANA', '2001-08-03', '82987264240', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'jm5178130@gmail.com', '$2y$10$fq695jP8CxeSeRx.uX9fO.o3yZ9iP/6rF4g3xe7jZmc13uAExrVP2', 1, 'MSLpfKEi4tPe1t5Iv6jT9HLGTKrv5Niy2MvPLmtabk3IpR9vn7t9wJyHHTjF', '2018-07-14 22:00:33', '2018-07-14 22:00:33'),
(227, 'ADRIANO', 'RAMOS', 'M', '2001001177510', 'SSPAL', '1981-04-20', '98854-5423', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'adrianoramos123@hotmail.com', '$2y$10$3qzce6HJV2myz53EOJN9Nuwtm67qaN65Vm48pqm9/a3wJaf8RU2Se', 1, 'CIvA3hWI9YzSWCba314wB1eWGv0lSa8AjN6siJYIa3IYP2MehjGh6ZdcITCA', '2018-07-15 12:32:03', '2018-07-15 12:32:03'),
(228, 'DEISYANNE', 'RIBEIRO PEIXOTO SILVA', 'F', '99001240764', 'SSP/AL', '1983-07-31', '82988198838', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'deisyrps@outlook.com', '$2y$10$XUZhCjtB1cKNJo./7UO77.xSLiAhymGY8w5EbZ2tEdlps8Bb9/sEC', 1, 'JMa72qHC6sOs6WcSJ2jaKxgwkN9bGgxG7ZFw7szXgr9jAcKskAvG3wsQ1iO8', '2018-07-15 13:35:58', '2018-11-05 15:13:17'),
(229, 'IGOR ALFREDO', 'RAMOS DA SILVA', 'M', '34281657', 'SEDS/AL', '1993-09-21', '82988117391', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'deisyrps15@gmail.com', '$2y$10$37O4S6W9I6qQuJ9gCPT1X.zhM2TWUlE4QKcV1YbN9lGSls4Me5k2.', 1, 'dikb1SeenUllZKomP66K33BaPHuwzCN003rzpXC2kjWIRbsPHeGIsmgnabYz', '2018-07-15 13:52:51', '2018-07-21 02:08:47'),
(230, 'WEMERSON', 'BATISTA DA CRUZ', 'M', '5278132', 'SDSPE', '2018-01-08', '82996843374', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'wemersoncruz41@gmail.com', '$2y$10$mZwvwE6qhWOC2NEw3Qhe..sDiJnHsS9lBklfSBvqgG8DPaNWEgGqu', 1, 's8Gh08vdJeZW1450qUYHhzZWGGtWaLETfAcA54zp2Q4mIg1RlAk80FqBFw7a', '2018-07-15 15:35:10', '2018-07-15 15:35:10'),
(231, 'ARLENE', 'MARIA DA SILVA BATISTA', 'F', '987654', 'SSP AL', '2018-07-25', '829889274476', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'arlenemariasilva25@gmail.com', '$2y$10$3JTOaZgONZwOsjsNqG32SOwDASbhQqsVN.bTrrZDpWTRnG2qjQJAq', 1, 'mnJDFPrx0Lm6NPAbijwcr0S8w2BWVk1qk4UI8NKQJoDJRmYFxqRZshEySBQk', '2018-07-15 18:31:28', '2018-07-15 18:31:28'),
(232, 'VALGEON DE JESUS', 'SANTOS', 'M', '1724504', 'AL', '1956-01-19', '82988705897', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'valgeon2021sud@gmail.com', '$2y$10$I1ft7UJLdkT7Ly3dzjUtBOfdPLI.yMisHoQTAflKJHi6PNO/aZwDu', 1, 'qAJ40TOqspkpzjicHr14jQsnCNKvMYmajMvMWOf41W94Ok2Kc38oIl06zsHt', '2018-07-15 20:31:28', '2019-01-27 03:35:29'),
(233, 'MARIA APARECIDA DOS', 'SANTOS', 'F', '951265', 'AL', '2018-07-16', '82-988882486', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'cidathay3@gmail.com', '$2y$10$J.hM3zwxfsYSa5cJ92BdqeTQQid3QH9IjpgH8REe7dW7cTvmOHr7.', 1, NULL, '2018-07-16 18:51:58', '2018-07-16 18:51:58'),
(234, 'CAMILA NICOLLES', 'LIMA', 'F', '31456901', 'SSP/AL', '1989-05-01', '82991939804', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'camilanicolles_sud@hotmail.com', '$2y$10$Nhko3v7/JMKfSSOPE4tPhutCXwK8NI/RdiJWgyyOC9OKdMi1OpjBC', 1, 'L3kJCdB1wEkMfFor0UFaCimFxuEQJfJRH8kiFg2KUIRQi7zyLqSetDAUsYFS', '2018-07-16 19:30:20', '2018-07-16 19:30:20'),
(235, 'NATéRCIA', 'DOS SANTOS', 'F', '1040242', 'SSP-SE', '1972-02-05', '82987633753', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'natercia.sud@hotmail.com', '$2y$10$lRzTtjOXf2mDNDUkB460vOw3fj2eZYzActGWDWqDHQYxxbDdDecty', 1, 'LZhXku70DxYTiBA9Eo632erM1mwGJwBmZoSrW1u1xEixTb7WxlwIOofURS0e', '2018-07-18 18:01:26', '2018-07-18 18:01:26'),
(236, 'JúLIA VITóRIA', 'GOMES DE OLIVEIRA', 'F', '38466317', 'SSP-AL', '2002-04-06', '82987350791', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'julia.vitoria.g@hotmail.com', '$2y$10$Er3.GNHDJyQMtku9vFqKEetqUbrWWi8YEodc0Z2zVpgUAQZ4Epkkm', 1, NULL, '2018-07-18 18:01:42', '2018-07-18 18:01:42'),
(237, 'ADRIANO', 'GOMES DA SILVA', 'M', '1198037', 'SSP/AL', '1972-01-27', '8298711-5798', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'adrianogomesdasilva@gmail.com', '$2y$10$cBuTqPfS5TzdWjVA3KGyUOJ/4MVr2N/XGuYNkOFsRVu7Q4bS0tRIu', 1, 'E9FdYFY8bi8uUqwuouDNIQS0eMwyoQWy5NSxA3wbHSgREEivtX2tG0EIfGAI', '2018-07-18 20:28:11', '2018-07-18 20:28:11'),
(238, 'DIêGO', 'DA SILVA', 'M', '623288175', 'SSP.SP', '1995-12-10', '991380689', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'dasilvadiegosantoa106@gmail.com', '$2y$10$iJspK5gnVzjfurKw45gg0ef5uxWvngyvegNgRwsTuFkV/8QnTfBXy', 1, 'KUTRNuoa6fakYCxUDeKtEPB4dd8MBwof7mfChi1KXvUxVXXN33iw25GChfWJ', '2018-07-18 22:12:17', '2018-07-18 22:12:17'),
(239, 'GERLANE', 'SOUZA', 'F', '38772019', 'SSP/AL', '1997-10-17', '82996670907', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'anny1740@gmail.com', '$2y$10$T76CO.shNjYfQFC6O0DaUu6Z6zrPgANpMilPbP07BqVc9OkO6SjcS', 1, 'SE4MFq26otGWIQwxinP75it22bFcc5NErOxtyGaEVlWGDueVbMJUvhIFdk9f', '2018-07-19 12:02:15', '2018-07-19 12:02:15'),
(240, 'MARIA GORETE', 'DA SILVA BATISTA', 'F', '444.435', 'SSP/AL', '1958-09-22', '82996670907', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'gerlanne124@gmail.com', '$2y$10$Cm2GyEMi7/o8J0VMk.dLF.d4JpYx.GuLp2c11YPQ2azRjC.nr3tXS', 1, 'MtWhkotlcJDcNr0fhDVlUCmK5RDaghAEYUlKvNs5FZRfYEPpQNB2WcdGyRKU', '2018-07-19 15:26:46', '2018-07-20 01:50:58'),
(241, 'GABRIELA', 'RIBEIRO', 'F', '4109121-3', 'PO/AL', '2000-03-10', '99326-6085', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'gabriela_sud10@outlook.com', '$2y$10$wEcFXogPTB3Xv1d/jzni/./zLIl9KzemZc6GEjRZc1kcXj8fpFTPu', 1, 'fRx5cQl5W9r2JkP0xmGMvKAywiodqDuoMrz51SxOf9LGGdipGukchAT7IXUi', '2018-07-19 20:30:40', '2019-02-11 01:55:13'),
(242, 'SAMARA', 'LOUYSE', 'F', '34120432', 'SSPAL', '2018-06-04', '82988255143', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'samaralouyse@live.com', '$2y$10$VuQB7RSaV78zmz0Vc4FuQeYKTah3kb/XeswieNN9tp0XzwfrO7eEO', 1, 'Uv1dLrMadU1Q7xVsfvYhcw5qMVR173F7pJIM9SWIunbmE0Ru1DPV4d7Kzbx3', '2018-07-19 22:50:10', '2018-07-19 22:50:10'),
(243, 'THALYTUAN', 'TOLEDO', 'M', '35550333', 'SSP AL', '1996-12-27', '82 98898-2245', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'thalytuan2015@gmail.com', '$2y$10$UwDNn6qAOM1sPkytXNo5EeFYXWPUGF1o1KwIZutAlFavBhxDLB14y', 1, 'HhgWvoGfDiHuwkkJqDwiIoBdJ3C9dz0qTilTUSwGEGhmR6XgYr9EYPWY35Q9', '2018-07-20 08:57:11', '2018-07-20 08:57:11'),
(244, 'DEYJANE', 'FERREIRA', 'F', '1635898', 'SSP AL', '1979-09-23', '82 988982245', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'kelly.tec@hotmail.com', '$2y$10$Mo9VkmCdzuikAzh17bBmj.dHwSMU0JBLAUpy0OBOiexBZZxT9953G', 1, NULL, '2018-07-20 10:09:20', '2018-07-20 10:09:20'),
(245, 'DAVID WLISSON LIMA CARDOSO', 'LIMA CARDOSO', 'M', '4035315', '29/04/2015', '2001-04-26', '82988048587', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'cw345440@gmail.com', '$2y$10$VAT.WUIP.3tlLuNdbsjVlelXGJxO8uUL8XzSSSr0RBKtdU.w.IBCO', 1, 'MWABVoZmW8E6dq80iPX8yM8NFnubNP4467aEMiDMP838MGEw1wkmESAmsvCD', '2018-07-20 19:06:54', '2018-08-21 13:44:08'),
(246, 'RAMON', 'BARROS', 'M', '3857686', '02/10/2013', '2002-02-24', '993993707', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'zeusmeus0@hotmail.com', '$2y$10$60nAAPM0oKWVgVUzyk8C5utS3ryUJYmYxft.x41E11RQmavc4CX1q', 1, 'NvLAKsoVQsF5Odzz9w3o2vEEgby3feRui4cmXuLrwvyeamFpDpp7hj1TLvca', '2018-07-20 19:16:44', '2019-01-08 12:45:04'),
(247, 'WILMA DE LIMA CORREIA', 'ALVES', 'F', '00000000000000', 'AL', '2018-07-19', '8299999999', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Caetés', 'wilmaalves343@gmail.com', '$2y$10$4oTQJdiu..VumO76PXX0wOea8dmsz6g97R2VPDCzGCkNv01NTGJIa', 1, 'DZGuneXjGDwnjN3qvdIWLxwEjHHERf7hcFBFHIDNwR1pGMP8v3TBjpuW7nkA', '2018-07-20 23:38:45', '2018-11-29 19:40:46'),
(248, 'VICTOR', 'EDUARDO', 'M', '403666-0', 'PO/AL', '2004-01-11', '82987322607', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'eduardovictor020@gmail.com', '$2y$10$ehTL4S79CbeXbhHE31LAr.LfuxtWOyOKfL.gB.6or4QAybcVgMhnS', 1, NULL, '2018-07-22 12:34:32', '2018-07-22 12:34:32'),
(249, 'PAULA', 'SILVA', 'F', '4041025-0', 'SSP', '2002-07-19', '987514639', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'paula_cristina_1234@hotmail.com', '$2y$10$EWVq/PWe2ZF2/PdkfGvMy.mur0ky76IFBIbGvR6q8I5/iGat8Vu.q', 1, NULL, '2018-07-22 14:09:49', '2018-07-22 14:09:49'),
(250, 'PAULA CRISTINA', 'CRISTINA', 'F', '0441025-0', 'ALAGOAS', '2002-07-19', '82988048587', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'paula_cristina_123@hotmail.con', '$2y$10$WTrDTsjIXRoeNTlR1/UfE.PCza8fIKMviugWcvxA6/VV2G/iFubju', 1, 'AWii6ufKco5zQEVByZUHraDRHoGl8dGBVQKxrXBNrJXGtOYBhNIAOUv3wJMA', '2018-07-22 14:11:30', '2018-07-22 14:11:30'),
(251, 'THALISON', 'LIMA', 'M', '3811071-7', 'SPP', '1998-01-16', '82999190385', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'thalyson_soares@hotmail.com', '$2y$10$jiyGWAJ7pARjJtSn9CcVeOxvt0Mv2X3/PfGYcjBwrLYRKqF/zC3oa', 1, 'xLlhgRedALMsiIrJl9b9Up50KzM46EK68El8UBWzBuCCTTDt3QeZOfixW078', '2018-07-22 14:42:14', '2018-07-22 14:42:14'),
(252, 'MONICA', 'PEREREIRA DOS SANTOS', 'F', '1553251', 'SSP', '1976-08-03', '82993240020', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'monicapereira4276@gmail.com', '$2y$10$SY/FVuD2aoMxNrS2PkvNu.cxWY6wTjhRG8dE0VSwVSXj3R1HD0kRu', 1, '1uSQnjw85zCZdRQsjdbGYKdQcq8781GNuLQrYh6psCZVZBhyZCL9n5WvQ0XD', '2018-07-22 17:23:53', '2018-07-22 17:23:53'),
(253, 'MAYCON', 'PEREIRA', 'M', '37492969', 'SSP-AL', '1998-12-20', '82993114729', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'mayconericles@hotmail.com', '$2y$10$16lxnXkD.PeyCX3iiQWDHO.mndS4T/KfNuKlUTOdfhJu5y1bCwIVW', 1, NULL, '2018-07-22 17:37:30', '2018-07-22 17:37:30'),
(254, 'MARIANA', 'FLORENTINO', 'F', '39200787', 'AL', '2000-04-06', '82993673796', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'mariasflorentino15@gmail.com', '$2y$10$f18VfnPxCN5x.gb2WnnmX.xaUiSLqTDgX4SUftAHMA0Ehzxn6nI7K', 1, 'nBBXGpyCbytw1JV2QyQIuhHtsCPEssBx76zNB3819fYuuZAWExTYi2QhzZsC', '2018-07-22 22:28:10', '2018-07-22 22:28:10'),
(256, 'DRYELLY MYLLAR', 'GOMES DA SILVA', 'F', '32758731', 'SSP/AL', '1990-06-28', '82996452372', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'dryelly.myllar@gmail.com', '$2y$10$rq03Y.hlufhTJHU8mHSmyO07PmlJNNLcv.3wNnS2QFy2bExRf/EuS', 1, 'ZATPAb83HmAE8bKsXE65jzuJ6SZGf0XGx8HKHWhdXgonPOZbxXi0MoL13gVV', '2018-07-23 00:32:04', '2018-08-16 20:19:21'),
(257, 'VANESSA', 'LIMA', 'F', '38042169', '300', '2018-11-18', '82988107662', 'AL', 'Água Branca', 'Maceió Colina', 'Paraíso', 'vanessalimasud99@gmail.com', '$2y$10$8y139sOW39INtbdPGpRzL.2oT54PZcDlx/xjDga75uBqqBVEC1zCu', 1, NULL, '2018-07-23 10:56:03', '2018-07-23 10:56:03'),
(258, 'GABRIELA', 'NOGUEIRA', 'F', '40258858', 'ALAGOAS', '1999-06-19', '82987489460', 'AL', 'Maceió', 'Maceió Colina', 'Paraíso', 'gabryella.nogueira345@gmail.com', '$2y$10$XviMchXIsEL9JPLUYvn.1el7Sac9HrPe1IsvC8FUt06bUxzPo7v/i', 1, NULL, '2018-07-23 15:10:55', '2018-07-23 15:10:55'),
(259, 'MARIA DAS DORES', 'DA SILVA', 'F', '98001354133', 'MACEIó', '1965-05-26', '982017595', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'silvacarinhosa65@gmail.com', '$2y$10$8WzxXri1RtI7lGUT1EeK.uOwsgtszP01dPahHipMutg4QiSVFukkG', 1, '6aRhnzsAz9kej0y7txvky4aZHciPdeRgcGhrGHLZk2jCkG59CKhyv1GaNNxk', '2018-07-23 19:52:59', '2018-07-23 20:38:09'),
(260, 'MARIA LúCIA DA SILVA', 'SANTOS', 'F', '1043166', 'SSP-AL', '1971-02-12', '82987375088', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'lucia215040@gmail.com', '$2y$10$BESkToV3dLYdIY.FpOKLneR5deTSy2dZLkFOHQN2VFkTFAFG9NbP2', 1, NULL, '2018-07-27 10:19:41', '2018-07-27 10:19:41'),
(261, 'CAMILA BEATRIZ', 'RAMOS DA SILVA', 'F', '1235567890', 'SSP AL', '2003-11-27', '82988793544', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'camilabrs2018@gmail.com', '$2y$10$YftxMcg9QvbopJp9ctC2deRLzrVxKec8KdNucZcRyPQfS3p8/wRxS', 1, '7YS9EXRFTbOpGijzjb8QDgapPJYAq8s311XNrhL9i4k3V3CUV1UxrG2XGVTH', '2018-07-28 17:16:30', '2018-07-28 17:16:30'),
(262, 'JUNIOR CéSAR ANTONIO DA', 'SILVA', 'M', '489971775', 'AL', '1993-06-27', '987495760', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'junior-lda@hotmail.com', '$2y$10$QgCJczHsFeI2xFjFKUh81.9Doe6IH4bnK9BhTrnaJz3kN75iIEKZu', 1, '0mr87A6UXiEibEUU9iDDBgJ7oCbd1vxJdoUlCATLm2mQaQC0QPmvdjDnPnYY', '2018-08-05 08:41:08', '2018-08-05 08:41:08'),
(263, 'MARCELLO', 'BATISTA', 'M', '03888644273', 'SSP', '2018-08-13', '988627406', 'AL', 'Água Branca', 'Maceió Colina', 'Boa Vista', 'batistatti@gmail.com', '$2y$10$fAhdXQcm2s.idx13bJ/dVeMPoUoskosUanpZZMvxn9pCdyIIR/LoS', 1, NULL, '2018-08-13 09:40:40', '2018-08-13 09:40:40'),
(264, 'CíCERO ALVES DA SILVA', 'ALVES', 'M', '917048', 'SSP /AL', '1970-05-18', '82988302390', 'AL', 'Água Branca', 'Maceió Colina', 'Campos dos Palmares', 'cfvalves@hotmail.com', '$2y$10$WtyEtZBLXtmziDgyfZeLMuwv/T5xH6Pl2hagOIRxYprMqxhb1fx1i', 1, 'OwRSyoSVEK6EYQMCjGB9Y3UPSyvjnGKLsbQtubzlVYJQo0l5R8IdQCMoe3KO', '2018-08-13 23:33:59', '2018-08-13 23:33:59'),
(265, 'YALE', 'SOUZA', 'F', '2000004025073', 'SEDS/AL', '1984-11-24', '082987275878', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'yaledesouza@hotmail.com', '$2y$10$0LKR/Qnl039axKzNn1HDw.LeuOeWUjwYIIfM9pBObVnIKOh7T0YQi', 1, 'yNfiaOCDcYkXfAB3UjfAp0GEYQzNHl6N03UJaJ8ZEXkOKj81txlpVU65nDNM', '2018-08-14 14:16:32', '2018-08-14 14:16:32'),
(266, 'TANIA CRISTINA', 'RAMOS DA SILVA', 'F', '92021020622', 'SEDS/AL', '1967-07-24', '082987277858', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'taniac.rs@bool.com.br', '$2y$10$.4hgkozJdDZyQ89BIg7/AuQxNa5kSz39gQAOasep48HhJHPxV3qs2', 1, '8G6moURMCXaz2iOGkPsdu2s9WRppK2Q4cv38SDHclG89Z3jShSuAr1VFgkIs', '2018-08-14 14:24:50', '2018-08-14 14:34:43'),
(267, 'ÁLVARO VICTOR', 'GOUVEIA DOS SANTOS BRITO', 'M', '3892211-8', 'SDS/AL', '1998-04-29', '82987314273', 'AL', 'Maceió', 'Maceió Pajuçara', 'Jacintinho', 'gbritoalvaro@gmail.com', '$2y$10$jSh3jQ8.Avi5sLWYW1VYr.90Z0bdP2HOPvJ7O7ZodPDBH.PoORSlm', 1, 'oFn3bVhEyIbLZr41e3vk5Pw9ciS5T87YhnjxGDzczilAgz7SJywe38LfgxTN', '2018-08-15 11:35:32', '2018-12-10 10:19:38'),
(268, 'ROSIVAL BARBOSA', 'SANTOS', 'M', '366561789', 'SP SSP', '2018-08-15', '82988883248', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'santsud@hotmail.com', '$2y$10$csUwt8iiG1ik82sIjHr0BO2D5CHTg/6u6.svz.7yCW83/3tKziR.C', 1, 'smm05EfQjR9hYwweHpvYNskhypLUgZ0HVBZjUVnFYEfU3lyTdGJk8VWX1quB', '2018-08-15 20:45:48', '2019-03-10 13:24:28'),
(269, 'CARLOS', 'ALBERTO DE ALBUQUERQUE SILVA', 'M', '30919894', 'SSP AL', '1989-10-17', '82 988981851', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'carlosalberto_as@hotmail.com', '$2y$10$w4ZjgI6rbjYq0VvUBkJkN.mMv7UsQpA/FffdHGzf3cF07jEExKcca', 1, 'FeZXzl6SYPsXA08Dt4jkUCMIbZNvqwzzyrrOInWrIdRb34vTzshyYKSjej1U', '2018-08-16 20:28:43', '2018-08-16 20:28:43'),
(270, 'CLAUDELICIO ALMEIDA DA SILVA', 'SILVA', 'M', '589.030', 'SSP/AL', '1963-10-17', '988356696', 'AL', 'Maceió', 'Maceió Colina', 'Campos dos Palmares', 'claudeliciosud@gmail.com', '$2y$10$4JUxygreGdhyvLXe7OIgfe2dYCell6fFZVxRXt5W43SjNCsAcV6Z6', 1, NULL, '2018-08-17 19:28:52', '2018-08-17 19:28:52'),
(271, 'DEBORA', 'FERREIRA', 'F', '2002001327350', 'SSP AL', '2018-12-22', '82987236990', 'AL', 'Maceió', 'Maceió Colina', 'Campos dos Palmares', 'dksferreira24@gmail.com', '$2y$10$PR8G6JF4ZglJy0Z0ZaRjieVzYEoIEcf5GdQBBoHjE4FkCLZ7bQwnK', 1, '1VRqfbJPReVb6sbyBFWPhbMPgTJ0rLWK36dRtvaWkUvS71S9BRjFcuiSmWPf', '2018-08-17 21:35:13', '2018-08-17 21:35:13'),
(272, 'VALTENES', 'SANTOS', 'M', '832259', 'SSP/SE', '1970-08-14', '82998051466', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'valteness@hotmail.com', '$2y$10$JXuV6S5yXlgIE7H88enUxuHJURFbHBWvclJRYx881RQQnC9Cqy8c2', 1, 'b30ncjETtZqhgk4fPnXSPisZgF60bu25RvL5AOEodIk6VlvcBzF0l7VZ4jrv', '2018-08-19 12:15:56', '2018-08-19 12:15:56'),
(273, 'FABRICIA', 'DA SILVA OLIVEIRA', 'F', '34633227', '30062009', '1994-05-23', '999321496', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Fabricialira9467@gmail.com', '$2y$10$NvnyB7QFdzdjfdKUvHW37eVZBnO8I4j67SoReE0xjQQgzCqfm1Gte', 1, NULL, '2018-08-19 23:29:31', '2018-08-19 23:29:31'),
(274, 'SEVERIANO', 'TAVARES DA SILVA', 'M', '1857466', 'SSP', '1960-06-29', '55 82 8829-7698', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Pratagy', 'tavaresdutra2017@gmail.com', '$2y$10$GP9Nc5KqXh6u3kDx2e.7h.2c2VXqAzPIme6S3C8eIlaR23qFyFc1e', 1, '993kerho0CWuIELluJFYoRy1eBqVGuaFtnSQem8WiERMZ2JDi7GlVcR4UgvO', '2018-08-21 09:13:19', '2018-08-21 09:17:16'),
(275, 'DILMA', 'PIMENTEL DA SILVA', 'F', '886735', 'SSP/AL', '1946-08-14', '82988206100', 'AL', 'Branquinha', 'Maceió Tabuleiro', 'Tabuleiro', 'dilma.pimentelsilva@gmail.com', '$2y$10$YPLxPqmqpBw/Vmw4VqKYLOIlOuHWLMSFZ3jd7A0mgozQiYnRQENpy', 1, 'rC17vO5pIusEwWxMOEUiDLQTuJDnttpj5qLZsQeVDpdVz1Y9l9mGF7mFHIjc', '2018-08-22 20:19:00', '2018-08-22 20:19:00'),
(276, 'TONYONE', 'ALVES', 'M', '2003006010010', 'SSP', '1986-04-04', '82996213281', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'tony_fotebolista@hotmail.com', '$2y$10$.gbpImDY3hqjR4QOEfWThOv5W0wuSx6yz6EzsCd7nLrVJmUwjUCCe', 1, 'lr4NFLtxLvkTtVrBGVkAtMYY3KBLcxGgPyrw5iW9XZXBg6OzUGnFc31oq3sx', '2018-08-25 07:28:04', '2018-08-25 07:28:04'),
(277, 'TARCíSIO', 'JESUS SANTOS', 'M', '22060375', 'SSP/SE', '1990-11-14', '79996761411', 'SE', 'Amparo de São Francisco', 'Distrito Lagarto', 'Ramo Estância', 'tarcisiojsud@hotmail.com', '$2y$10$663LtTNgyZNY29KGIj7xRuH8ChakI2VpKvqP79s4vjzGAqtAtHy9u', 1, NULL, '2018-08-27 06:37:28', '2018-08-27 06:37:28'),
(278, 'ADAM RAFAEL', 'SOUZA DOS ANJOS', 'M', '31321631', 'SSP', '1987-05-29', '9 8825-7018', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'heman_rafaell@outlook.com', '$2y$10$1NCsabO385bm75noQWcX1.fyRL5eMLm7kwzBYL.v6H2WZcZQwLaLO', 1, 'jmUYqCDd1lq058RiTqtJRe3xGyibZl6pmJSwV5C1tFW03nd4puTbczRN8Q0n', '2018-09-02 10:10:00', '2018-09-02 10:10:00'),
(279, 'WANDERSON DANIEL MOURA', 'SANTOS', 'M', '32539460', 'SSPAL', '1994-08-22', '82987110456', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'wandersonsudboy@gmail.com', '$2y$10$VarqGyXHP3Q4yq4IhL0J5OYbr8UA.Pqf93aDi0rT3EF0xggwKO5G.', 1, NULL, '2018-09-03 13:01:56', '2018-09-03 13:02:49'),
(280, 'CINTIA SANTOS', 'DA SILVA', 'F', '2000001149606', 'SSSPAL', '1982-02-18', '82988448400', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Clcintia@outlook.com', '$2y$10$6YbmAErOfh9gaZ49bIjHpuxXAj979wmnlpKar6dyp/Ua7kLHdKUB6', 1, 'OAvbmtfHXf1DzVMYrnNJBuRgCwe1WJfMc9LIEeAUrOFCeBQwOtwUvi5FYXs1', '2018-09-10 02:49:46', '2018-09-10 02:49:46'),
(281, 'DIOGO BANDEIRA', 'RAMALHO', 'M', '3469761', 'SSP', '1995-01-30', '82996428071', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'dioguinho_band@hotmail.com', '$2y$10$YooHdrag19gRy.OMn2RAW.xNs5Rd6wxvYKNx5g8Bf6oARMN9ijE0e', 1, 'wJ8RfMbIYnryFwMzna8pznXpwkYqCEO4fOh9Vk1xSEubDKRk1Pkx4fY7nMiV', '2018-09-10 21:25:19', '2018-09-10 21:25:19'),
(282, 'JOSE ROBERVAL', 'DA SILVA BATISTA', 'M', '30167973', 'SSP AL', '1989-05-02', '82996629175', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'roberval1000@gmail.com', '$2y$10$6iu9fKMk0OOVoQQ6vJvlCOcB7NJRHULnJas77a1F8vbmptKsAaY9O', 1, 'Ppkhk1wi0onCJUTDNfcGSdj1MeY8AXb1RhywVOOxs6Oxf1KnMjJqJle1W7VX', '2018-09-22 16:56:07', '2018-09-22 16:56:07'),
(284, 'KARYNY', 'COUTO BELO RAMALHO', 'F', '30106087', 'SSPAL', '1989-06-12', '82998386418', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'karynybelo_@hotmail.com', '$2y$10$BsWydTDNLkaFv/7acJ2CN.RTLsNQUo8d5ek./oLEYhCFS6WdoSHEe', 1, 'IHdCivji0UBO3VmL1eL9s3hByCJZhfNUvjDWOyTzr7aia46w1It2II2IJZMd', '2018-10-22 15:51:16', '2018-10-22 15:51:16'),
(285, 'THAYNA CLAUDIA DOS', 'SANTOS', 'F', '334455', 'SSP-AL', '1994-06-20', '98744-6599', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'darlleyrodrigo@gmail.com', '$2y$10$SnQJQCEa9zQ7B/Nbi4iBRu5HcrDTJV7Fnn1aSfp9911AdAKL7og1.', 1, '8ZtQdMzI69SPZMuf760dhTjIG4reZc7R538YQIFLREY3W5UT9yo2nbmTlgRB', '2018-10-29 07:46:03', '2018-10-29 07:46:03'),
(286, 'EMILY', 'THAYSE DOS SANTOS LEODINO', 'F', '32568665', 'SESP', '1993-01-23', '82996067728', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'emily.thayse@outlook.com', '$2y$10$JMza.y7LRE/XbmTefx8/EONHhjerOpd3WskyrIa4V2M5.MAS2xOda', 1, NULL, '2018-10-29 12:36:20', '2018-10-29 12:36:20'),
(287, 'ROMARIO HENRIQUE', 'DA SILVA', 'M', '33764964', 'SSP', '1991-12-11', '82999996372', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'hennrique.silva92@gmail.com', '$2y$10$oOgl1n16kN4j08cjnMD6Su.oyNF3AgtADirOuAp61h7juCmV7b5t.', 1, 'IOGCGBu4OIjH0SdKvhGD1Z2WXEM5pv7ceEzjjzKROZzD13xBirx3fWxuPHYl', '2018-10-29 16:00:07', '2018-10-29 16:00:07'),
(288, 'LUIZ EDUARDO', 'FELIX', 'M', '366513033', 'AL', '1994-09-29', '82987378146', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'luiz-eduardo2017@outlook.com', '$2y$10$jXYwtJxIthuGfQhl0ckc7.oKJab1eAqkUmjW6JKfc/f4drsBBqRiK', 1, '6CuwhU6MOqydSyU8dEAxH2gueO2e0n5dXvbMDh5VT9MdBlSL0XZHdfVJfi2e', '2018-10-29 17:47:14', '2018-10-29 17:47:14'),
(289, 'EDNILSON', 'SILVA', 'M', '4150175-6', 'SSP', '1998-08-24', '981278123', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'Indrauchihacoc@gmail.com', '$2y$10$8LRCbQ8rzaWG6fvHSoXOd.psaO/Mmft9jkZJSlFYFbN9nIGTXNDae', 1, 'j4ObrmV4neEOIRL5B7RHV5puB1M41rysKoWkBswLOqkaZ2rCHmcfmTDVWYOX', '2018-10-29 23:46:27', '2018-10-29 23:46:27'),
(290, 'LUCIANO DE BARROS COSTA', 'JUNIOR', 'M', '3320369-5', 'SSP AL', '1992-04-25', '82988672288', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'juniorbarros.costa@hotmail.com', '$2y$10$niEPFawaQIVBXj3XjOrDEutJt4iCQ8RXnhSzo38hOBBMS.G4NlyRe', 1, NULL, '2018-10-30 09:32:42', '2018-10-30 09:32:42'),
(291, 'MIRELLE', 'MEDINO DA SILVA', 'F', '37035878', 'SSP', '1998-04-27', '8288733822', 'AL', 'Água Branca', 'Maceió Colina', 'Campos dos Palmares', 'mirelle.medino@hotmail.com', '$2y$10$RJkgfQ00irh8s40JHMWAhOoDGlzOhsiuMxhIpGp/Yk9mpBQVMV2F.', 1, NULL, '2018-10-30 13:01:09', '2018-10-30 13:01:09'),
(292, 'NAYARA', 'FIRMINO', 'F', '4198958-9', 'SSP', '2003-05-26', '82988480035', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'nathalia.icmaceio@gmail.com', '$2y$10$s9pz/d5.yYIsOWTPc2355uC/8TB5GrVRoFBCAwZjUkMwQOJ8x4aWq', 1, 'r2JfbHaP3YCnBX8VEaOHTWhFQJ4a28GdcMvuSfuiA2ytxK4yqnVUHdCp8k0Y', '2018-10-30 15:25:27', '2018-10-30 15:25:27'),
(293, 'LUIZ DANIEL DE MOURA', 'MOURA', 'M', '98001129580', 'SSPAL', '1971-05-13', '98709-0765', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'luizdaniel.mora17@gmail.com', '$2y$10$B8YwUo3ZtOmlzn5ac9LtVOURgaK89J0pewptWx5PG.ETXSxJXLpYy', 1, 'bSz4rNzJOX752tZBDPY9Fqgp1FF48GlA0TLyoVgRqL61cqMLTcPwN4Audp1U', '2018-10-30 18:48:57', '2018-10-30 18:48:57'),
(294, 'RILVâNIA DOS SANTOS', 'MOURA', 'F', '98001320417', 'SSP/AL', '1978-02-25', '8298809-3788', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'rilvaniamoura60@gmail.com', '$2y$10$8CkDYgeggo5wzRLVUqe0TOC0cN7qs3FADqGke.E9zl2pNCQVIy0Ri', 1, 'DRMENwcBk4lb188nfwdpSHxwAmAZbXHrHVkaxnuPamM7uWWkcJ7YP6vhJZxw', '2018-10-30 18:53:49', '2018-10-30 18:53:49'),
(295, 'RUAN HENRIQUE', 'FELIX', 'M', '40732800', 'SSP-AL', '2002-05-09', '8299168-6912', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'henriqueruanruan@outlook.com', '$2y$10$AHrQxEfvr85z9OoLdmxwAOgkzz9DoDeCN9NlmnvbipXn3bLeOqX7S', 1, 'o0jBaH73B4lWGS2XL0ndn9iPQyoWVnyR9H6zaR2tKFRNVH3Re6fNgOWk4MHt', '2018-10-31 20:19:06', '2018-10-31 20:19:06'),
(296, 'LIDIANE', 'M BARROS', 'F', '2002001199549', 'SSP', '1986-08-09', '82988654007', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'lidianecool11@hotmail.com', '$2y$10$nPO0mdl/.KMgCaTtJtVuwerbvJyUl7pvM90v63BPs4fSbSwLaqbGi', 1, NULL, '2018-10-31 21:40:50', '2018-10-31 21:43:03'),
(297, 'SARAHMARIASILVADOSSANTOS', 'SARAHMARIA', 'F', '4325419. 5', '04/01/2018', '2018-05-06', '82988391486', 'AL', 'Água Branca', 'Maceió', 'Farol', 'moises99053@gmail.com', '$2y$10$JNqlWSMfxJ0ebw1SLFm/8.k2M.wGpfe0PR71fEs7GMBVEhCnwPilW', 1, NULL, '2018-11-04 13:56:02', '2018-11-04 13:56:02'),
(298, 'VICTOR WALLACY', 'DA SILVA COSTA', 'M', '37393678', 'SSP AL', '2000-07-11', '82987288764', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'victor_wallacy@hotmail.com', '$2y$10$AV6UvwyyZvioX6Cu7z0a3uyQDBni.KhYd.x73haeTTCeR9NzIgOWC', 1, 'E4T4WOw0tz0NRrXj1BcKb6NE5aKdJuTDCxsOqOqsaSmF6aEP2SbzWnkNH0wu', '2018-11-05 14:14:58', '2018-11-05 14:14:58'),
(299, 'IGORCECI', 'SILVA', 'M', '34281657000', 'SSPAL', '2018-09-21', '988117391', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'igoralfredo@bol.com.br', '$2y$10$ujul5HtZh51fNEuhtXfzWe39cqq2R1hOaokKnHxgWLHdO7o6QDrr6', 1, 'bFvjt8D12YzPIhgmjXCMLeP6dA1lvKtcelDoQipJwXnJGW3MOyyKWs99bFLT', '2018-11-05 14:46:42', '2018-11-05 14:46:42'),
(300, 'NATHáLIA MARIA', 'BRANDINO AUGUSTO', 'F', '42343097', 'PO/AL', '2001-05-04', '82987168573', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'nathybrandino@outlook.com.br', '$2y$10$e/qTwa2aTAuwLdqDPrGIjO0myuiD83vrBDcTHa9ilFaSo7i9GkE8G', 1, 'B0D7LVeBjCNwcA74BK1sA9W4Hlpc0eKCDkDs1mny0kjL7hB42lGHFCSOCcgS', '2018-11-06 16:06:52', '2018-11-06 16:06:52'),
(301, 'ALEXANDRE HONóRIO DOS', 'SANTOS', 'M', '1099417', 'SSP/AL', '1977-03-12', '82988271800', 'AL', 'Maceió', 'Maceió Litoral', 'Prado', 'ahonorios@gmail.com', '$2y$10$dOUQc1SH7kLNPZBUViFUk.rf89ESFqxhkp/BdoLoWcFv8FvBZ5LlG', 1, NULL, '2018-11-18 12:43:34', '2018-11-18 12:43:34'),
(302, 'ROGéRIO ALVES', 'SILVA', 'M', '3134404-6', 'SSP', '1982-12-04', '82987149645', 'AL', 'Satuba', 'Maceió Colina', 'Campos dos Palmares', 'rs7960056@gmail.com', '$2y$10$Gtd5S9VQJbUamtqkfq2zj.q2Yy3yCMxUlfP9XF5zBXQAF8alhk2PC', 1, NULL, '2018-11-18 15:49:36', '2018-11-18 15:49:36'),
(303, 'JOãO', 'CORREIA PIMENTEL', 'M', '37514598', 'AL', '1995-10-04', '82988426457', 'AL', 'Maceió', 'Maceió Colina', 'Campos dos Palmares', 'Jcprreia@gmail.com', '$2y$10$mbhApqpWz5v8Hq5tN4A7XeUuf53G6F2EGsbnqc1Z..1olfEc9Xjni', 1, NULL, '2018-11-18 16:26:46', '2018-11-18 16:26:46'),
(304, 'MELISSA SâMIA', 'DA SILVA SANTOS', 'F', '999999', 'SSP/AL', '2004-04-11', '98864-7792', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'melissasamiasantos@gmail.com', '$2y$10$c.hlSRpvfvqCI.STLOhVT.BMyjRTc4AosFE31tCMELYAaCVKXKLmO', 1, 'blhE4sWSe4hujhJ9GH3hUxFmCUCGfKq1IDJmWuqsfQdfIddXdZEG3yFx2jQ0', '2018-11-18 19:02:21', '2018-11-18 19:02:21'),
(305, 'MILENA SIRLIAN', 'DA SILVA SANTOS', 'F', '123455', 'SSP/AL', '2003-01-17', '98874-6574', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'milenasss@hotmail.com', '$2y$10$bgUx7OS8IaY/Njx628p3kufsnq6l0yeEz2TO3uqN.MZKlEfxJ82X.', 1, '0Gok7k9ZnZnYhj35vzT8CzDC27sf4NUBTSyRaD2coLM9wCOYcvS0Dfd9HrF7', '2018-11-18 19:09:34', '2018-11-18 19:09:34'),
(306, 'RITA', 'DE CáSSIA DE ALMEIDA', 'F', '9801083288', 'SSP AL', '1970-07-20', '987177175', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'ritadcasssiadab@gmail.com', '$2y$10$3aWfAPffH3TZJJvHKl2cq.TlJMye.CXa6ttvvKVIIbHWFcxkYjSKm', 1, 'jTi22i8DTZFjmOT1HueQazptZzbwdqUIzbydwnfzeLUovBJPwAkYTLzP9nox', '2018-11-18 21:01:23', '2018-11-18 21:01:23'),
(307, 'JOSé GILBERTO DOS', 'SANTOS', 'M', '2002001315115', 'SSPAL', '1978-01-23', '82988994471', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'gilbertoctr@hotmail.com', '$2y$10$fhlcWRNmeR/amfh190CbouFp1wi5W1mmAf7eYz1s2McHTSd18kr2O', 1, 'RLQDWfWXXlZtPJBTwr7TZOvgeoI7IlDkWELEFLuLcUh0WMSSXndPOu7ptAZT', '2018-11-19 11:25:47', '2018-11-19 11:25:47'),
(308, 'PAULA', 'CRISTINA', 'F', '40410250', 'SSP', '2002-07-19', '82987514639', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'paulacristina19082018@gmail.com', '$2y$10$XIhpagQuXEmWOvF/meKce.gWzY2f2YAexxkhkqLT6vSelDkPS2NQm', 1, 'KRZkiegzgjOuFPa2QLgAs9KZWdlYnWGacKSuXEDCCoZVZ5hRxZoDdHiePYIR', '2018-11-19 20:58:29', '2018-11-19 20:58:29'),
(309, 'MARIA', 'NASCIMENTO', 'F', '35060034', 'AL', '1997-05-31', '82988733565', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'marialuziacassia@gmail.com', '$2y$10$rCTzWD5tbTz/NjGUjr82TOgMWSSsuIwiPN2iFOOqyv4rB54zZvNwm', 1, 'dgtbnQ6m9wXfWfD57D60qRe0toIXY2KE0pxDFyfT8PDloQUtO4nviw4DHXBS', '2018-11-21 02:51:15', '2018-11-21 02:51:15'),
(310, 'ROSA', 'MARIA', 'F', '888834556', 'SSPAL', '2016-04-15', '82999998852', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'rosaaa_maria@hotmail.com', '$2y$10$LiJoGPak5efkVI.SeoWW9u9DkKm69wJv/qX8.VAy8pzoXZhBhPsC6', 1, 'FusbFPevPgq8t5lUq3n1MWHxPKlKoa4rs1ujzZsz7eJF1DTsM0sce0wrQ12c', '2018-11-21 10:26:23', '2018-11-21 10:26:23'),
(311, 'JEAN', 'PIERRE TORRES DE SOUZA', 'M', '1715707', 'SSP/AL', '1978-09-09', '82988616501', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'eldertorres1@hotmail.com', '$2y$10$fw6GKVaA.ITdR5N4QuIdm.JfgObs0FUkwPT0O8q0zFH/M60Zbb89G', 1, 'oRSgzaMdJWmZhMcek3K9eqNEOZ7w4esyapb3VnFpYSozsBt5MW5jLBWBZFUN', '2018-11-21 16:23:46', '2018-11-21 16:23:46'),
(312, 'MICHELLE', 'PEREIRA', 'F', '000000009999', 'SSPAL', '2018-11-28', '8299999999', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'Michellepereira038@gmail.com', '$2y$10$Ok1fJU1lDDgdETHAm2WYrOa/Pdoq4fRhZiTB0QAElAG98YRE7IdNm', 1, 'v9dQVLe9BajoEMtRSUUdl0z5cPqPKCTHQVDQktzUBJtiAKBv9yg2kPPu7rCg', '2018-11-28 11:34:24', '2018-11-28 11:34:24'),
(313, 'GRAZIELLY', 'ALVES', 'F', '42267226', 'SSPAL', '2005-08-24', '82988545423', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'alvesgrazi187@gmail.com', '$2y$10$H1bYxNUfvc56hKpKcbaznuXFoVTmwM9FcrvukwybXj1AjO9y7ucPW', 1, 'qEwTm4ZAQNYWMkgqSx4RxbkpdFN7tuRHu79TGvW0i7d2lBfel6hLz08mX7Ju', '2018-11-29 18:33:57', '2018-11-29 18:33:57'),
(314, 'CLAUDILENE', 'SILVA', 'F', '3897623-4', 'PO/AL', '1999-06-04', '82991239890', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'claudilenesilva@gmail.com', '$2y$10$v3vApJig9H.Pj0zywZgjq.rYU1TeEQozuYOgzBMMfCx0oaMG/3fuK', 1, NULL, '2018-12-06 11:03:00', '2018-12-06 11:03:00'),
(315, 'MARCELA', 'MOURA SANTOS MATOS', 'F', '33271763', 'SSPAL', '1991-07-30', '8298873-2789', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'marcelamourasantos.1@gmail.com', '$2y$10$Bj9FvsCsBbh2TFUzm4.pFOXqo7cm/dJ1fgiuQ/2EKGh0mB.3A89uG', 1, 'LslDvWuKdjHme2T2QF71etVH2AFOTwT0rjmUAtndes5yEsRYruoHumx1uSh4', '2018-12-10 01:01:53', '2018-12-10 01:01:53'),
(316, 'THAYNá', 'SANTOS', 'M', '8888888888', 'SSPAL', '2018-12-10', '999999999', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'darlleyrbsilva@gmail.com', '$2y$10$DoaZZbhNYjnc1L9hYRtFXu3zISpmG0gbAZKpYKq9Z7RgNmjm5Qo7C', 1, 'h99gl4zMx6qyB4iC4AzpaBSYbm5wTvaabpnEp9vDUbR2vh7GOmtywydJ5Csh', '2018-12-14 22:52:20', '2018-12-14 23:00:07'),
(317, 'BEROALDO DA', 'SILVA', 'M', '39033562', 'SSPAL', '1998-06-28', '82988951284', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'beroaldo.silva@outlook.com', '$2y$10$HxZ/t4iFsJRdzdAohZBWJeYDGGH1X3RbTDTnmPA4rv0z9zpkypTrK', 1, NULL, '2018-12-16 20:10:02', '2018-12-16 20:10:02'),
(318, 'MARIA', 'SANTOS', 'F', '000000000', 'SSP-AL', '1970-02-07', '988882486', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'cidathayrana@gmail.com', '$2y$10$U8suAXuehkqNrR7/ypxKmO0EMKcBwCKtKhz2jwnXieWO/wFgM7N1O', 1, 'uMFSIoCQI5v2B9UCJJWVGTdw2eCB3cuRyapqd6xiDIxCycFbJAziBP2kgLiP', '2018-12-17 00:41:22', '2018-12-17 00:41:22'),
(319, 'JOSé RONALDO', 'DE OLIVERIA', 'M', '689_427', 'SSP AL', '1966-04-08', '988778036', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'ronaldo2137@gmail.com', '$2y$10$TkouWBjotGzFziNsPULi7e8P4OAXfsDV.Cysm20g.ENzDb.uv/zEm', 1, NULL, '2018-12-17 01:28:31', '2018-12-17 01:28:31'),
(320, 'EDILEUZA', 'ANACLETO', 'F', '109479-1', 'AL', '1971-05-13', '988292174', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'edileuzaanacleto71@gmail.com', '$2y$10$GtT41mZXDZ1J7chqRGxGj.8cakhCWlo9QFk1gM4e7YeWQkQYSuXSa', 1, 'EOvjFPl28hquIIvud5ggK6DolQmOBvpPu3AiaUjyKd7BTk5Hnjs0JqQbUxMY', '2018-12-22 01:40:05', '2018-12-22 01:40:05'),
(321, 'GERSON', 'DO VALE JúNIOR', 'M', '3405931-8', 'SSP/AL', '1993-11-01', '82988673226', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'gerson_vale16@hotmail.com', '$2y$10$C8VQzZ53F6NIK93RC0xIxe/KNJB8T3LVDBPWO4X1EQp86Bg5tlPsG', 1, 'vRSbpMRdyUzPW96CvmH45WigOdQe40UkFTAFRpPZDuvybwr04eyUWJzI5ygB', '2018-12-22 19:55:53', '2019-02-10 13:52:57');
INSERT INTO `users` (`id`, `name`, `lastname`, `genre`, `rg`, `orgao_exp`, `dt_nasc`, `phone`, `uf`, `city`, `stake`, `ward`, `email`, `password`, `ativo`, `remember_token`, `created_at`, `updated_at`) VALUES
(322, 'PAOLO MORONI', 'PARI ATAULLUCO', 'M', '70098726', 'SSP', '1996-07-03', '82 987411182', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'marialuziacassia@hotmail.com', '$2y$10$JMeN.phLVTaFOMyV32msE.cQ1WZTnnSPFXAsdEaNTYmum9nb1Z6YC', 1, NULL, '2019-01-04 11:20:50', '2019-01-04 11:20:50'),
(323, 'MICHEL', 'SOUZA SANTANA', 'M', '7725609-35', 'SSP', '1982-03-05', '82987585860', 'AL', 'Maceió', 'Maceió Colina', 'Clima Bom', 'michellss@gmail.com', '$2y$10$b7cXuzishmOSx6JWkYLjF.LziA0TFkoN0/7MV8rc3QYoEpye0M4Ty', 1, NULL, '2019-01-06 22:22:00', '2019-01-06 22:22:00'),
(324, 'MICHEL', 'SOUZA SANTANA', 'M', '772560935', 'SSP', '1982-03-05', '82987585860', 'AL', 'Maceió', 'Maceió Colina', 'Clima Bom', 'michellss2018@gmail.com', '$2y$10$xT8s/M.BIogS5BWCLDOfFewJ1sZx5TlYulMpU9OLq9kpple18iKN2', 1, 'WNzGl1GkOvQeCsMHW0SXHyuDu2sF9zwSZJxFmdnUjItoZueKSP64xcfF0XUs', '2019-01-07 00:06:45', '2019-01-07 00:06:45'),
(325, 'FABIANA', 'BARBOSA DA SILVA', 'F', '20000001148561', 'SSP/AL', '1985-08-07', '82999937585', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'viviane_kklima@hotmail.com', '$2y$10$2Lc5GvQ9zb8Q5YawDLAbiezm/NPbvN2gOTA0auCurQWxNW1N43D9W', 1, 'RLSwpfJ3XHOoccOdnzxYJ5tXbwmwJSfCeEkrniIlQhlabOot8Hv7Ya59Icen', '2019-01-07 16:57:17', '2019-01-07 16:57:17'),
(326, 'RAFAELA FERNANDA', 'BARBOSA DOS SANTOS', 'F', '9445139', 'SDS', '1996-09-20', '8288689753', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Pratagy', 'rafaelabarbosasud@gmail.com', '$2y$10$Sd6ORj6w8m5wtZbkhfQAh.jO5ududSmYqOzpy1kTRWg2x1X/FtgGu', 1, NULL, '2019-01-10 14:32:19', '2019-01-10 14:32:19'),
(327, 'VANDERSON', 'SOUZA SANTOS', 'M', '3375607-4', 'AL', '1992-08-03', '82987360614', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'vando250santos.2017@gmail.com', '$2y$10$FeD3raKebHXt2PexKwj89eRm1tl75l8aZzjc5KFxYeTUDKgr1dh/.', 1, 'g5NXAjL7IGPKvs6PMjECqwPW6hQV7vljFbGOiEDiZXgXYWoi42N1MlaYZQwb', '2019-01-10 14:40:32', '2019-01-10 14:40:32'),
(328, 'MIILLENA KIVIAN', 'SANTOS TEIXEIRA', 'F', '35102640', 'SSP/AL', '1998-06-20', '82994367261', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'milenakivian@hotmail.com', '$2y$10$V9NYKYDhENwX9CemS.YDB.0DxsL43UpzvvFA6QN1QSf/BPuZNctGO', 1, 'rKkPkIkbgPU7gN9T2jODB6nRr2uJ6g47lJnS33t5Jav8k4I3B8182sdELILK', '2019-01-10 17:12:20', '2019-01-10 17:12:20'),
(329, 'DIEGO', 'SANTOS DA SILVA', 'M', '823280175', 'SP', '1995-12-10', '82 91380689', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'dasilvadiegosantos106@gmail.com', '$2y$10$4U0FkwwEBObuxWHOeKvqjePfvs4C.XDo7gjTK24a28hQGqGMKiqs2', 1, NULL, '2019-01-10 18:43:28', '2019-01-10 18:43:28'),
(330, 'CLARICE MARIA PENALVA FRAGA', 'FRAGA', 'F', '1771850', 'SSPAL', '1986-04-16', '82999800076', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'clarice_fraga.123@outlook.com', '$2y$10$X8DJugZKlemBqj6nJMkZB.fSOl7yUETvOf.c4/qXOT67Rtzvx7fji', 1, '5c07lI1mz3Z1eIG8d3jyvQxumREV5FieSrWd0kbDJojt4qGBHLjoBXTB2r25', '2019-01-10 19:24:21', '2019-01-10 19:53:51'),
(331, 'JOSE MANOEL', 'DOS SANTOS JUNIOR', 'M', '99001058648', 'SSP AL', '1983-10-22', '82987026979', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'juniorsud10@yahoo.com.br', '$2y$10$CnE99O563SkCkhHo7yyxr.qsLREVQECnfN4R7XxPIF9CxMRNcDYcS', 1, 'TC9yI4nndhFXiFxQGqBI9N5nUSJVdvpOoAKrWpVz23O3WTjL916AXV974Mvc', '2019-01-11 00:32:46', '2019-01-11 00:34:58'),
(332, 'JANINE MEIRE', 'LIMA DA SILVA SANTOS', 'F', '678614', 'SSP AL', '1987-08-28', '82988174262', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'juniorsud100@gmail.com', '$2y$10$SWZzja8n8nJ0Jdg5S.R0Ru0Yu/cIoyE5y.5ZV7sTyhdwugKHZwCtW', 1, 'VfGiigX6zO7tweblI0OZ4HCT9aWVc05JR3R46EnDg9vOdjs2RvCgVjEWBguH', '2019-01-12 00:24:47', '2019-01-12 00:24:47'),
(333, 'MAGNA ROSICLER', 'SILVA SANTOS', 'F', '3264248-2', 'SSP AL', '1990-05-21', '82988397820', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'magnarosicler@gmail.com', '$2y$10$483imk9e0.QWm1YX.oGTxuZQhFzTLAF4mTP5/hRUQ5chH0cz6zEW.', 1, NULL, '2019-01-12 06:52:39', '2019-01-12 06:57:18'),
(334, 'WESLEY', 'SANTOS', 'M', '33635986', 'SSP/SE', '1996-05-01', '82988247474', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'breno.c.v@hotmail.com', '$2y$10$9RTSpoggA94izqnBd/fztehbSXiYHzeq9wFaxzaDnnrXSvkRy1fua', 1, '9vwwAp9XeTB47MC5zjWMQEYrv4PSdjdvjJTcWKSQwb63Q5QUdzCfYrNG4Ap6', '2019-01-12 19:32:46', '2019-01-12 19:32:46'),
(335, 'MICHAEL JHON', 'FYSH', 'M', '0000000', 'PASSAPORTE', '1971-09-21', '82988480035', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'pollyanacardososud@hotmail.com', '$2y$10$WTcYajhGDyIOAh/2WRj1neXSPg2mgOXcWLtHL/9K8E848F2hW77H.', 1, 'qm0krHsEktl7lzwcFcv30Fd7ySjEyHCxMsWdFzZNnp3a5C5rOXQnZpwGtj0G', '2019-01-15 14:33:31', '2019-01-15 14:33:31'),
(337, 'NEPHI', 'GAMA BISPO', 'M', '4440676-2', 'SSP/AL', '2013-06-11', '82 999693407', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'nephibispo@gmail.com', '$2y$10$5GlJN/3auvxacgmg.PJT6uXf6BuXGTfvczy4J/ck4W236tnT2/Iw.', 1, 'HccTMShicfrzBjAM7tZmng52whxXGIGGXNBFi1dL8EDAgyQAVcfLt3QndHO7', '2019-01-16 09:59:20', '2019-01-16 09:59:20'),
(338, 'LAURA', 'AGUIAR DOS SANTOS CARVALHO', 'F', '4010001503', 'CARTORIO 5', '2013-02-21', '82988177458', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'familiacarvalho.laura@gmail.com', '$2y$10$kl7aNLhO5BHaKZhtTxWkQuTeDSasHUX/K5EmZbOb0vwXOQS0rn.M6', 1, 'QQHcPDxHX9YAe818lP8qz1pc2sjoFaQtI5oVow8B0lN9GrptIJXzz6CGz7Z2', '2019-01-16 12:53:26', '2019-01-16 12:53:26'),
(339, 'SALETE', 'AGUIAR DOS SANTOS CARVALHO', 'F', '1108216.', 'SSP AL', '1971-04-27', '82988177458', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'familiacarvalho.salete@gmail.com', '$2y$10$cAETgFbLtcLXqlVww7dWkeRba/RbSoSV4Tc1HMnrvvlVe5D/S9FDe', 1, 'LTJXo0aD8lnOEBZgEkYdk8sc6EsHYJ650p6khgXWmws2lmzOCyEV8IQTtezu', '2019-01-16 13:26:31', '2019-01-16 13:26:31'),
(340, 'ERICK WESLEY MELO', 'DE FRANçA', 'M', '34173340', 'SSP-AL', '1989-04-23', '82996296137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'erick_pts@hotmail.com', '$2y$10$2CV5gzZSorXwgG.Dae5nyeXO0hXkVHoCig2d8kIRBLky1M8a2PKc2', 1, 'WBay9X5Ztkd3zR4NiinoXIt7VwxxBlPPKRaLDYZgdjpWawMlFlnUixFFpR23', '2019-01-17 00:41:11', '2019-01-17 00:41:11'),
(341, 'ERICK MATHEWS ARAUJO', 'DE FRANçA', 'M', '6010045797', 'SSP-AL', '2013-02-25', '82996296137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'geanny.lindinha@hotmail.com', '$2y$10$74wyzQU5xcD36Wwkgg.DAeYtLSJL7WltYYBt5oYHlbkXbJCEny6Oi', 1, 'LnteQB4O61wpiCvZ0n30vXxfhHST4dmxZKTWWmcL6Lt4kF9p9Afge8wwHpXo', '2019-01-17 00:58:50', '2019-01-17 01:53:28'),
(342, 'KAUÃ MORONY ARAUJO', 'DE FRANÇA', 'M', '7009247811', 'SSP-AL', '2010-05-12', '82996296137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'ericlp222@gmail.com', '$2y$10$BZ0qKIW0LbW7Nqi32tatMualYuBka0oKqzK9udotNvriS2T4EhMv.', 1, 'o1h0nuJ7Uk6y4Q0NfdJJYJHrKK8mrYFvtwIwRxmrWgfKDkEy0Dz87ynECN4d', '2019-01-17 01:36:09', '2019-01-17 01:36:09'),
(343, 'LUKAS GABRIEL ARAUJO', 'DE FRANÇA', 'M', '6009766728', 'SSP-AL', '2011-06-15', '82996296137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'erick_franca2@hotmail.com', '$2y$10$xBE0alMotP8kBziaBxPcO.Xhpd9aFhpkzlT9706MEcoZBqqMpQr.i', 1, 'f8tLvnRGk9e8723yLumMJYWbs09jvuRwzkqrndnIe4WGjEHaUOQWLYuq0nez', '2019-01-17 01:40:25', '2019-01-17 01:40:25'),
(344, 'EDJANE MARIA DOS SANTOS', 'DE FRANÇA', 'F', '35604875', 'SSP-AL', '1993-05-18', '82996296137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'ericlp222@hotmail.com', '$2y$10$dGvcQGaeQ.cxW7xRGV/b5uDSzOHfZ0TIrCskvnYxdhB428axBaGqK', 1, 'k35qopTxjfCdhlmmNUt3SfdZ0OWLEfIKvnQzjrxGJnArW4dTI9UffI899oWV', '2019-01-17 01:56:20', '2019-01-17 01:56:20'),
(345, 'MARINEUZA', 'ROMãO', 'F', '5567600000', 'SSP-AL', '1953-12-03', '988882486', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'marineuzaromao@outlook.com', '$2y$10$SPhuSqAGyFdVmVYMvSv2qu0FKoOacEpm2NLsWqg8eI.9qqjU8Kqhu', 1, 'd5AKZuKx4KbjU95ty3xMm8xtcSO8pwax9jSC8rwBeQxIJpdVPC5ob0yhUREa', '2019-01-20 22:24:46', '2019-01-20 22:24:46'),
(346, 'JAEDSON', 'SOUSA', 'M', '4328964-5', 'SSP-AL', '2004-01-17', '988262140', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'jaedsonromao@outlook.com', '$2y$10$2du5pKQMmt3qrGLMSUX48OGDpR8KTcKsn/gUC51tfEcD9KjsdwV/G', 1, '78oDOanToEllEuruPpn9KoPs9K5lqkWAFtm5nXOFaUwaiNOhiGqcGxJXbmAZ', '2019-01-20 23:15:54', '2019-01-20 23:15:54'),
(347, 'AURELITA', 'PEREIRA DA SILVA', 'F', '000000', 'SEDES', '1945-04-23', '(82)98831-4196', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'aurelitapereiradasilva@gmail.com', '$2y$10$y5kRD1i8vcKY0pz7s7EB0.DHqGTxzvu1Ua5Wwhp5DWRtPfoHp8/n6', 1, '5Qp1iEqR9VsKMh34X2dXycPVmpZ33PMM4qBqvGUSejYuFHoCIKHeVtcRP7z3', '2019-01-20 23:18:46', '2019-01-20 23:18:46'),
(348, 'LUIS CARLOS', 'LAURINDO', 'M', '0000000000', 'SSP-AL', '2004-12-16', '996710137', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'fabiofernando@gmail.com', '$2y$10$X5YLGdnG8/.5poraDR8KbuqEyMPj0lQmDH4Oq5lUXGNGbdp8DqE5e', 1, 'A6ehnYiQqdTUOm7uAsMRzUAopmWRl6n8m7wOmaugmCDXhLNPEfGvtlGxgG5l', '2019-01-20 23:20:03', '2019-01-20 23:20:03'),
(349, 'MARILENE MARIA', 'DE JESUS SANTOS', 'F', '3902322-2', 'SEDES', '1955-08-25', '(82)98845-5735', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'marilenemariadejesussantos@gmail.com', '$2y$10$kBpIB6vOXkEvsKTco0Wtg.SmmyqWU/cWoSDH3DninoEF0FBJq1fNq', 1, 't31OXX08pLai7PHqwIYSmbI7Gh4Rp3SSPLFM11fqH6MsE5V6KU54X0an6WZB', '2019-01-20 23:33:30', '2019-01-20 23:33:30'),
(350, 'PâMELA', 'KARLA', 'F', '33091641', 'SSP/AL', '1990-01-07', '82987389098', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'pamelakarlasud@hotmail.com', '$2y$10$hkOYuMA5iuTq2oxlMgFdC.XWB7MfPLc/i.XwF/3EVmWFW9clPe2YG', 1, 'HPdxl3cSXGCkhkfTh6kwiPZGWDj32IpOWX5lUEqvYV6h2cpwJlQzvz1smqqo', '2019-01-21 01:40:31', '2019-01-21 01:40:31'),
(351, 'CAIO VICTOR', 'CIRIACO DA SILVA', 'M', '8408625', 'SDS/AL', '1993-08-13', '(82) 99837-0573', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'caiociriaco@outlook.com', '$2y$10$AydnCjnC7YKItaph6vN0QeBANN.8g6o4tYMhUboRWXVX13qVLrcF2', 1, 'gWKPlWNEM5xvy6T3V74M2bpv1MJynKAn9AVyG7Wqqifw1BMgBhjYwUEe4eO2', '2019-01-21 22:51:51', '2019-01-21 22:51:51'),
(352, 'VERA LúCIA', 'DE SOUZA', 'F', '1149289', 'SSPAL', '2019-07-27', '82996193978', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Pratagy', 'vlssud@hotmail.com', '$2y$10$0chyFUdA17Dp3PXatz9NdOrXQK.wKrNi.mTtKeOxjjAU0u69dKI7a', 1, NULL, '2019-01-22 13:59:14', '2019-01-22 13:59:14'),
(353, 'JOFRE PEIXOTO DOS', 'SANTOS', 'M', '79991', 'SSP AL', '1937-11-16', '82988701451', 'AL', 'Maceió', 'Maceió', 'Farol', 'jofre.psantos@gmail.com', '$2y$10$nekuqZK4AiUM1Y.sjzS0HeY3WQ3AGzKCdPU.Og1zboT0qR.shLvYe', 1, 'QvIshaU4tV8BFjmSN1AyF8QCwfbjS0bhpwDJsX4CfJrLYt2l5qctQp4sbVBg', '2019-01-22 14:55:06', '2019-01-22 14:55:06'),
(354, 'ANGELA', 'VIEIRA DUTRA', 'F', '1054250', 'SSP AL', '1970-07-13', '82 98845-3952', 'SP', 'Santos', 'Maceió Tabuleiro', 'Pratagy', 'angela.dutra@outlook.com', '$2y$10$aKPQiK3sYy5Mm1RqOlS2LuzWU/BY.1Sl8WyMlG1Gy3v2r1OCNdK1.', 1, 'nEedWFM7GjtgwyNj2rexP6BkUs8R1F7NVLOITLjl9XdtLDIsoZg95BURuN8u', '2019-01-22 15:57:42', '2019-01-22 15:57:42'),
(355, 'MARCELLO', 'BATISTA', 'M', '03888644437', 'SSP', '1985-06-07', '82996159065', 'AL', 'Água Branca', 'Maceió Colina', 'Boa Vista', 'batistatt@gmail.com', '$2y$10$zZvM23wP4L9VGH2fgZu95OXDAYNwiMSiNkzTENi9.Of6FJCywjA9m', 1, '2CNNVHtCrbmEcGaMUXjcmhnyUUqKN5hKQJCPTjtZHhbv8eOEMrggkLCccEFX', '2019-01-22 23:21:53', '2019-01-22 23:24:12'),
(356, 'IANARA DOS SANTOS CORDEIRO', 'SILVA', 'F', '34243431', 'BRASIL', '1998-01-11', '82994071954', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'ianaracordeirosud@gmail.com', '$2y$10$CE.pTZypirkUwXPtVhX8bO10kqaLSEfQ0a/84QZ37kMOzLu3I3ibS', 1, 'vxrD1opGcHFHi9sJCL4kXjqaBb7pRAGsR16S5qCqxAPweaQ6kFQqbh0jYfPC', '2019-01-27 18:42:00', '2019-07-06 11:19:51'),
(357, 'MARIA CRISLAYNE', 'DOS SANTOS', 'F', '3765979-0', 'SSP - AL', '1995-10-18', '82996485368', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'crislayne965@gmail.com', '$2y$10$RldHxSjJgQlJllFq1zA73uApUyVLR6uN0OSxJkGphFTbRcC7/LeiS', 1, NULL, '2019-01-27 23:41:24', '2019-01-27 23:41:24'),
(358, 'WESLEY', 'CAVALCANTE', 'M', '2124452', 'SSP/AL', '1988-11-09', '82996276848', 'AL', 'Maceió', 'Maceió Pajuçara', 'Antares', 'wesleycavalcante@msn.com', '$2y$10$abwGuujXa9d6lPm9DKO.o.DYebeTZ1XnA960KK/EnjOZfcPZw6YUm', 1, 'yBcLXaFRqs8ddcNHeHx0rZSe0UCJc1QDYADvDoNe0Je5sOTy1GhV0bzUIPv0', '2019-01-28 13:50:36', '2019-01-28 13:50:36'),
(359, 'ANDRÉ DAVID FRANCA', 'COSTA', 'M', '32718039', 'SSP/SE', '1987-07-18', '9998340000', 'SE', 'Estância', 'Distrito Lagarto', 'Ramo Estância', 'andre.dvid@gmail.com', '$2y$10$G3LOsPvPLJqjW.gkzQFRwu2oPvya35UZdZgYWVLw4jZ7vbnLFlIKy', 1, NULL, '2019-01-28 13:55:26', '2019-01-28 13:55:26'),
(360, 'FLáVIA', 'YEZZI GOMES DE MELO CIRíACO', 'F', '32835370', 'SCJDS-AL', '1992-11-10', '82996914286', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'flaviayezzi2@hotmail.com', '$2y$10$rt9pPrfIbIg2V9JvkmNhYelopSkc8lb357yhFhErUkSuX8AL9U0T6', 1, 'cfbHUGFTUoQWUDw7nuHeVdJyEAYE5cPcJZ69gK8Pz2C9Vgk41HcQvCviAnQJ', '2019-02-03 10:45:48', '2019-02-03 10:45:48'),
(361, 'CRISTINA BARROS DA', 'SILVA', 'F', '13.505.688-80', 'SSPBA', '1988-01-19', '82996147020', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'cristina.barros2931@gmail.com.br', '$2y$10$c/V.HmmlgbSX4dWORGiJveKxieMtB9b7yilpYCtg7PbbPeIQWQ4by', 1, 'SmCBvPDMnzZU994lxPm81lmFuiwuh8mR34G10CNZKQk01sHy1TcAsGlvdcQb', '2019-02-04 18:03:56', '2019-02-04 18:03:56'),
(362, 'SILVANIA', 'SANTOS', 'F', '35159405', 'SSPAL', '1991-06-01', '82988676559', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'silvania-baby@hotmail.com', '$2y$10$3BSHyL1jKRxS.Ym1DiGejeVToPtRIhBIU4QgW7Hlx6KWIsAfQQFGK', 1, 'KYafCODvhkX3FrHiBGVJfbo20O5rIBLT1ly2Qix0gOIMsddhphoskgdYEizA', '2019-02-05 14:52:13', '2019-02-05 14:52:13'),
(363, 'EDNEIDE', 'DE  LIMA DA SILVA', 'F', '1523569', 'SSP', '1979-01-19', '829-88414402', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'edneidelima1979@outlook.com', '$2y$10$MGnRikd3S5BswJp6lDdiBuQl8I6O9s4bf1nZDlZP.nSG8vLWBoGsu', 1, 'hnotUG0JXhErQH8MvmQ6P0pCKZixvo8MecsNoN3K8RIodxSzIjs6Oh033fco', '2019-02-06 01:43:38', '2019-02-06 01:43:38'),
(364, 'CLAUDIA', 'SILVA', 'F', '14-576469', 'CâNCER', '2003-07-06', '82999226289', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'claudiacrislene@gmail.com', '$2y$10$Mv680dWMMvfpzaqxX8RJTeVMSCVW539dLLEDjYd499jNIjhPoI.nK', 1, NULL, '2019-02-10 17:10:42', '2019-02-10 17:10:42'),
(365, 'VALDENICE', 'JOAQUIM DOS SANTOS VIEIRA', 'F', '1453924', 'SSP-AL', '1971-11-26', '82996416166', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'valjsvieira@outlook.com', '$2y$10$8ANDifE4dowmAYQS4JbC7uu6WhgozttP7lU3cECljll1EzLob5Hk6', 1, '8OpLEVsqKWjZ63XhBA9V8zbCMoBx5KwI6jsVFBCDl7lgJagC4N6woJuAJM3Y', '2019-02-10 19:15:41', '2019-02-10 19:15:41'),
(366, 'FABRICIA', 'OLIVEIRA', 'F', '3463322-7', '25588', '1994-05-23', '082999321496', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'fabricia.mas@hotmail.com', '$2y$10$eku/siCKAC2kDXouSYGceOOPwjD1Z.B291aEGjsW2V6HwYI/DFDK2', 1, NULL, '2019-02-12 11:00:31', '2019-02-12 11:00:31'),
(367, 'TúLIO', 'SANTOS', 'M', '36518581', 'AL', '1996-07-14', '987094184', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'tuliodsantoss@gmail.com', '$2y$10$gHBBH2GLFrt9yDCwCVGS8.BTmBbV8APBH5q/S/ztqgaa16VoDWR2e', 1, 'YV2dgAUyoOO7Xox4cyBHlEuCFZltDYRk0Gjl1uZpcPEIpNATG02sQ736FOu8', '2019-02-12 15:32:40', '2019-02-12 15:32:40'),
(368, 'AMANDA PATRíCIA', 'DE OLIVEIRA SILVA', 'F', '30124662', 'AL', '1984-11-17', '82988548055', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'amandavida123@hotmail.com', '$2y$10$TJ8BHWl7Kp5FwOIqg4W0Wu.EBk8s/SzvYWega4zrk1RJ.eP/a02Vm', 1, NULL, '2019-02-12 18:12:40', '2019-02-12 18:12:40'),
(369, 'GIRLEIDE MARIA', 'ALVES CARLOS', 'F', '1171921', 'SSPB', '1966-05-17', '82993042746', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Girleide-alves-@hotmail.com', '$2y$10$hm/OoKHg4QMnHNWkP/TGDuaXA77arM2pTI6AQroR2IdqoFWtTnhSW', 1, 'bwoSPNNYYxCxrjAp7eahlZeWXyRPQ0jmHVxopLJGGY7jBzIh3utyTXNC0GhS', '2019-02-17 14:27:03', '2019-02-17 14:27:03'),
(370, 'ANTONIO JOSé ROGéRIO', 'CARLOS', 'M', '20820104467', 'SSPAL', '1955-12-10', '82988623483', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Antoniorogerio55@hotmal.com', '$2y$10$CRzI3Kt5IIqKZGd5.MN1fePGBysQ8OAl9Bsw8gfG/5/HnxNjwyzJm', 1, NULL, '2019-02-17 14:32:38', '2019-02-17 14:32:38'),
(371, 'ALINE', 'GUEDES', 'F', '534022649', 'SSP/SP', '1994-09-03', '82987393909', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'aline.chagasguedes@gmail.com', '$2y$10$/Jm.cPZhgmYU3g13Zl4OBepOr2KmJw5H6vM2ACU9AvHQKEwq1UJEe', 1, 'IYzqmk87HoetJh6U9WE5SDufvBCYUPodt8acxdC3hWmcjHOKeBpS2RAXahyc', '2019-02-17 22:11:36', '2019-02-17 22:11:36'),
(372, 'LIEDJA', 'DEMETRIO', 'F', '3894898-2', 'PO/AL', '1996-01-06', '82999269023', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'liedjademetrio4@gmail.com', '$2y$10$2o0Y4hj2.1UhXU4HSYr8F.3Bz8FNbbsgcHAEyfqjmJWCa.jIIR1wW', 1, 'XGdqZrQjjtseDsKMPhjPqkhcR4mrKBesTPca4V1m0DaQecvsqGWl92aMuHC3', '2019-02-17 23:38:05', '2019-07-29 00:19:13'),
(373, 'ERIKA', 'TEIXEIRA', 'F', '3413658-4', 'ALAGOAS', '1993-08-20', '82981862382', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'erikateixeira25@hotmail.com', '$2y$10$LTJdjd/m37gT/AP/LeFBOe435CMlEq6HqfGKKWNWQQ6bf1vC1WuKe', 1, NULL, '2019-02-21 14:45:23', '2019-02-21 14:45:23'),
(374, 'CICERA LUZIA DE', 'ANDRADE SILVA', 'F', '516437', 'MACEIó', '1957-02-27', '998136911', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'CiceraLuzia27@gmail.com', '$2y$10$AvlbuPGjn2Ld9wQyvkCX8.zfvJMg2TFfr828jqEWFXMzGz6eQZkui', 1, 'Gt7Z48CIW0qk5DvUomWe9pLbFQPmBiWd5DpwbQWUgkQRbDU780AU51SE0EAf', '2019-02-22 02:25:26', '2019-02-22 02:25:26'),
(375, 'RICARDO RAIMUNDO DE', 'ANDRADE SILVA', 'M', '1641317', 'ALAGOAS', '1977-02-27', '998136911', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'RicardoRaimundo08@gmail.com', '$2y$10$Yra4bByLBUdvFoNwMtbs.eQd/Bg0FE9ID9yrugEUALEBSarNCwM7O', 1, 'usLK7wBB0u3sBTDB79sLNtSgOx7pYtmOtUABl1EdeGWc881AHoPILeYa8cq7', '2019-02-22 02:39:30', '2019-02-22 02:39:30'),
(376, 'ANA JúLIA', 'DA SILVA COSTA', 'F', '9959477', 'SDS', '1997-07-26', '87998229852', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'anajulia_scosta@outlook.com', '$2y$10$t.c3fi4l4PT1.HV4nXGm1OWLs62Hpe69Nscmu/IU4rWM1hP2yjtKW', 1, 'zBvOUXkPjFgTovtIz5GpEQ0O3wULi0TDghipIuVTgk7jyrmzy0dHz66UNrfA', '2019-02-25 17:51:04', '2019-02-25 17:54:06'),
(377, 'SHIRLEY', 'MARIA DOS SANTOS VASCONCELOS', 'F', '1179979', 'SSP ALA', '1973-07-04', '82988751983', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'shirleyvasconcelosac@gmail.com', '$2y$10$PmpeRxt/B8BdfR0cFTLe1.dDc9Vfo.lIu79rng6KIKAaoWMBOC/8y', 1, NULL, '2019-02-25 18:47:54', '2019-02-25 18:47:54'),
(378, 'ANA MARIA', 'PERREIRA DOS SANTOS', 'F', '801734', 'SSP AL', '1967-11-28', '82988041643', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'anamariamaria_sud@hotmail.com', '$2y$10$GcfoREouqmKBwotyHTAVoulK7XvfA6HgG1p.3V.MkGefBmRAWJCTG', 1, 'CEEaxsokxZl2XlTDb04COGA8D3uyJVAN1R8LHYKKDqCQsdQZhitMvBYkOu6p', '2019-02-26 00:43:42', '2019-02-26 00:43:42'),
(379, 'LUIZ', 'FELIPE KASNOCHA', 'M', '129729546', 'SESP/PR', '1995-02-02', '42999450682', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'felkasnocha@gmail.com', '$2y$10$c43PqUonkHuzXv9l5NH6f.TDsfJ/5wFHq0u7jufQKwsY1a/W1YeLO', 1, 'rDNxQaLjFRUOc9eBGeTDQA1cYtIMPeag0J0sAMvTB7cKbdhEj5bLW7d1PBLE', '2019-03-03 12:49:57', '2019-03-03 12:52:08'),
(380, 'BRENDA MARIA', 'CALISTA DE OLIVEIRA LINS', 'F', '42871743', 'SSP', '2003-09-13', '82988694386', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'brenlins10@gmail.com', '$2y$10$51w2OT8d4PKJAT3gcabVx.LV16cDBn7EqkqRbP4aPpp8E0pNnth3u', 1, 'WDmsoc4nEW10X7lTxXOBL5W2DwOBLxxjz1gTEoLGaq5T8wS09F5qITQEyF3q', '2019-03-09 12:20:05', '2019-03-09 12:20:05'),
(381, 'MANUELLE', 'DE ALMEIDA OLIVEIRA', 'F', '34447873', 'SSP/AL', '1997-12-26', '82999384765', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'manuelle.igdema@gmail.com', '$2y$10$Zal1seFyD12ZNeOXUKrV.ucyxUf6IX6yWeh42LIEatpvaf5QtLeou', 1, '3immAa5yHUI1IY8X3JU42Ov6VhLnZsxML522VNkRcjcyL0RnsbOeyKQ8U0Xi', '2019-03-15 22:10:47', '2019-03-15 22:10:47'),
(382, 'JAMERSON', 'RODRIGUES', 'M', '05632613402', 'SSPAL', '1997-12-30', '82996261180', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Tabuleiro', 'lord_jamerson@hotmail.com', '$2y$10$y/uZHTUWuwdPIXMS/5R18OyeKIIvkYhqWvZoRycUO8bR78ib9KSRm', 1, NULL, '2019-03-17 14:53:54', '2019-03-17 14:53:54'),
(383, 'RADMELLYS', 'CARLOS LôBO', 'M', '1383493', 'AL', '1974-05-15', '82981653351', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'radmellys1@hotmail.com', '$2y$10$70VK7x31rYmYQITbtgNAsOI4bjF.bvJ.UxeBynG3IqxnCn6KGv1Sa', 1, 'jf873wvgIPLSBK4yjuW20soGCzejjyDZr07E8WUsAH28r6f4HBBJQIkvGpuf', '2019-03-21 10:49:05', '2019-11-11 15:50:23'),
(384, 'JUAN', 'RODRIGO DE OLIVEIRA PINHEIRO', 'M', '36657301', 'SSP-AL', '1997-05-15', '82996477089', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'jroliveirapinheiro@gmail.com', '$2y$10$rAXBh3vEkY8YLLKS4yN/NOqtXzGm06dZbifFeG5xvs246vVqqY.km', 1, NULL, '2019-03-22 21:51:30', '2019-03-22 21:51:30'),
(386, 'GUILHERME', 'COUTO', 'M', '8033397', 'PE', '1997-08-10', '(82) 98722-0898', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'gui---i@hotmail.com', '$2y$10$1Kbsxe2fWbi4m13zwaPzAuin8gxtI0e0ZZy06GEwcBrANNyCoArUS', 1, '5L6pSKANVUlSIP7TZqe6m4oMUpAGXQHkMGTVnTArUzpNYGRdr0c8mIYhX3rc', '2019-03-25 15:13:47', '2019-11-10 22:52:00'),
(387, 'PEDRO', 'BERTONHA SODRé', 'M', '3414745-4', 'SSP', '1998-06-07', '82 9 8136-1998', 'AL', 'Maceió', 'Maceió Pajuçara', 'Antares', 'pedrobsodre@gmail.com', '$2y$10$KILH0dUuY06pvLsJsgfjCeU2raGFCyKXjMdlotP9EkmtmUw3/iEBi', 1, 'Zm9YkmX86QUFo8kT84cTFiX1PE2tDxLes0GfYos2uQIAtqgT79zibKVVgskJ', '2019-03-28 23:53:47', '2019-03-28 23:53:47'),
(389, 'HIZAQUIAS', 'NASCIMENTO', 'M', '3968868-2', 'SSP AL', '1999-06-06', '82988932428', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'hisaquesud@outlook.com', '$2y$10$WHEaPemiVbNeCkCej9eTGumV1QrsMv4JDasdb/YrUs9KL9H/cJHXG', 1, 'UsierLNiiqs6GWqmC1ZSce6fkmk0XHEvHqPfeVxdlJtUxNO4AkiU0DTlJL33', '2019-04-13 16:20:25', '2019-04-13 16:20:25'),
(390, 'CAROLINNE', 'RIBEIRO', 'F', '36662283', 'SSP/AL', '1996-12-11', '82993895568', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'carolinnearibeiro@gmail.com', '$2y$10$3a6peiRlVwvXZt5do7SrM.xlK46trWLxn.FCxDY9rDRbyoDj3jp7a', 1, NULL, '2019-04-17 22:49:04', '2019-04-17 22:49:04'),
(392, 'MARCIAL', 'FERREIRA DE LIMA', 'M', '2001001172179', 'SSP/AL', '1966-09-17', '82996783019', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'limamarcial7@gmail.com', '$2y$10$ZAZD6cb8l8PpkBBBon4JMOYYP3oTiGLJWePPioyTn.EOHAn7fnM7G', 1, 'RCDxW8g3oFoph4LsqOH0ceLbj12QLOvlfgI98cjS5OcLmbFP7wDfy9sxnaQU', '2019-04-28 16:16:29', '2019-04-28 16:16:29'),
(393, 'CRISSIA', 'SANTOS', 'F', '4052536-8', 'SSPAL', '2019-10-23', '082988984188', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'mcris.sud@gmail.com', '$2y$10$bHtERDB8d4AvMSMwvj9rWOhQ/cXFRR1erI7O9aDRAoXbAEY/QhprG', 1, NULL, '2019-05-04 00:43:06', '2019-05-04 00:43:06'),
(394, 'GURGURI', 'ESTACA TABULEIRO', 'M', '0123465789', 'SSP/AL', '1994-12-14', '(82) 9 8839-3562', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'sac01.nverse@gmail.com', '$2y$10$glP40OdEV2kamiLirI5.2OYAopq3q8Q5LRs.HAxvoWLgH5TPIu6iu', 1, 'kMA6SwBZe0wwe4UtnaG23CyRpdJhSuUpm5pE2J2lFhNkF012oSIPz7Z0VmUE', '2019-05-05 08:58:40', '2019-12-23 00:22:15'),
(395, 'PEDRO', 'SILVA ALVES DE ALMEIDA', 'M', '34367373', 'SSPAL', '1993-01-15', '82996191180', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'psaalmeida93@gmail.com', '$2y$10$KIpaAPbXwdYy58IYPV1wCebQjtPqK3GBUTRh7sSwZaqeKHeisz.Tq', 1, 'unDEeEFTvTuvmrUyV5wOIQmwSnw2xHBmRAsriss0UoEutTjfLiSqx2qoXJ9A', '2019-05-05 12:33:01', '2019-05-05 12:38:53'),
(396, 'LAISE', 'CAVALCANTE', 'F', '33141371', 'SSP/AL', '1993-06-13', '82998225150', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'laisemvc@icloud.com', '$2y$10$gbsX7ULF7bB8LdERSt/TiOXX335BdU1I9Op/WAEfqg1EGkMKzs4T2', 1, NULL, '2019-05-09 02:41:04', '2019-05-09 02:41:04'),
(397, 'GHABRYELLA', 'KARLA CHAGAS LôBO', 'F', '38036053', 'SSPAL', '1998-09-06', '92988726477', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'ghabyk8@gmail.com', '$2y$10$8mn7vco57MlSp6qKaNvLyOUhBafyXl5wFs8zuCapB1/7wq00M4a3i', 1, NULL, '2019-05-12 00:19:11', '2019-05-12 00:19:11'),
(398, 'CARLOS HENRIQUE', 'DELMIRO DA SILVA', 'M', '1571031 ssp', 'SSP AL', '1975-11-17', '82999778823', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'delmirobag@hotmail.com', '$2y$10$X/kzXXxGydu0lWy3Z9s/f.o3uxE1tRERBi/IcvLoKidEVW.31B6Iq', 1, NULL, '2019-05-12 17:59:03', '2019-05-12 17:59:03'),
(399, 'MARIA GORETE', 'VALDEVINO DOS SANTOS', 'F', '1177473 ssp', 'SSP AL', '1970-01-15', '82988984603', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'garetedelmirobag@gmail.com', '$2y$10$lCrkfJ0xdMtYMWFhZRyCCuFv8BzRl1GZUqzG8xBn3a//anNZ/oUbK', 1, NULL, '2019-05-12 18:11:44', '2019-05-12 18:11:44'),
(401, 'DAVID WALISSON', 'CARDOSO', 'M', '4035315-0', 'SEDS', '2001-04-26', '82996368789', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'davidwalissonphd@gmail.com', '$2y$10$5qP0vHNeCGnYDpLvyiqjpemKqGpZ/njul90uTPLLhZcyOnJco.o.i', 1, '3nr22qQHPX0SRaqCBQDOohrcR63gcHqWxfMYqaCOFq8U8fdQ2vRsWPIM4FSb', '2019-05-19 11:35:34', '2019-05-19 11:35:34'),
(402, 'LUCAS SILVA DE', 'ALMEIDA', 'M', '36233994', 'SSPAL', '1993-02-26', '82996243690', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'lucasalmeidactb@gmail.com', '$2y$10$inswHHCxiA3Oks2NHQyW.um1c0Fd611lUv32JvgjorXNZPk/s5PVS', 1, 'MYYslx49zZlFIMRmKdBGWvf7GqK1r1xswKMSFqIgu54OmbeUDo2r4ghx8sia', '2019-05-19 22:18:20', '2019-05-19 22:18:20'),
(403, 'IVONETE SILVA DE', 'ALMEIDA', 'F', '504108', 'SSPAL', '1961-01-04', '82988367035', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'lucasalmeidactb1@gmail.com', '$2y$10$C3gBZUlWAnsF/0VrUENUs.Rsqre9/LminLRB9muLdC01M5YumkRAW', 1, NULL, '2019-05-19 22:42:22', '2019-05-19 22:42:22'),
(404, 'MARIA JOSé PEREIRA', 'ALVES', 'F', '699488', 'SSPAL', '1964-05-10', '82996027703', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'maria-palves@hotmail.com', '$2y$10$4iZHdX33uEAM4Wjn1Z89Dueq4qDRYMpbqTd/01KEKcJQq9pD1ezfO', 1, NULL, '2019-05-26 18:28:36', '2019-05-26 18:28:36'),
(405, 'PATRICIA CRISTINE', 'TENóRIO CORREIA', 'F', '99001228705', 'SSP/AL', '1983-06-08', '82996238944', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'patty-tenorio@hotmail.com', '$2y$10$MMuB5r6lPVdw65ssBjASaex1X6BhBdHmQ3MINZxt1qc50/pJu3rOG', 1, 'hHYoNhBMg56SHpT0eiD5ha3ELmgVc3AaDucvqtrXV1ktZpGOmxeKS3WQEVH6', '2019-05-27 19:44:44', '2019-05-27 19:44:44'),
(406, 'MARIA', 'DASDORES DA SILVA', 'F', '980013554133', 'SSP/AL', '1965-05-26', '82988498224', 'AL', 'Maceió', 'Maceió', 'Farol', 'dorinhatop2019@gmail.com', '$2y$10$CytvOIzCVYl8//awYakf8OzfDO.Y6aN/APiYq9laUeBbUfS3NxOsO', 1, NULL, '2019-05-28 20:23:30', '2019-05-28 20:23:30'),
(407, 'ALANY', 'ALVES VASCONCELOS', 'F', '39056139', 'SSP/AL', '1996-10-23', '082994032173', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'vasconcelosalany@gmail.com', '$2y$10$QotDDL6mSVA3AAc2e1r2mOrIw8Gucdlhf/63DJNlEp4uNicOHVAw2', 1, NULL, '2019-05-30 00:07:58', '2019-06-21 23:39:23'),
(408, 'LUKAS REGINALDO', 'LIMA DE AZEVEDO', 'M', '3312569-1', 'AL', '1995-03-14', '8233136832', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Universitário', 'lukasazevedo1403@gmail.com', '$2y$10$U64uv5NaxUOkS7suU989oOz8SyPks9nCgsyYXT/s8vNRAMUapR59C', 1, 'scBxoV6ZI7ycOA4RMSaJEzj0lubp5lUJn8Eqk0E1Vuw5MF3sCMUGpI1zWSTf', '2019-06-03 07:58:22', '2019-06-03 07:58:22'),
(409, 'FABIANA', 'ALVES LOPES', 'F', '32196849', 'SSPAL', '1991-05-01', '82987480714', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'fa.biii.ana@hotmail.com', '$2y$10$qRF0UP.WSQyYPvsuqLjAcObjv11D1obIBtzsrnyAPLXoqKjnTHuFC', 1, 'spJPKiFEwzqJrcII9Dhv067LJmIOKEOxLyssJrSz8FxnNqTpBoZkrNKJMUkW', '2019-06-05 14:25:03', '2019-06-05 14:25:03'),
(410, 'MANILSON', 'BATISTA SANTOS', 'M', '350.634', 'SSP-AL', '1961-11-20', '82-98848-9036', 'AL', 'Piaçabuçu', 'Maceió Tabuleiro', 'Tabuleiro', 'manilsonbs@gmail.com', '$2y$10$lKD2ht4FrtArCsGv.0FHuOcxdEJlUl7A3kwvnkR5Z3uKi3NHsrJrK', 1, 'NDkESZ2THbb5sRMadBqFeyn2gmjR2z6AiDaCZ7AEyFc3jTCb7Og6mPK755ca', '2019-06-05 23:37:16', '2019-08-18 17:30:01'),
(411, 'ANTONIO', 'MELO', 'M', '114376', 'SSP/AL', '1977-10-12', '8299108002', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'antoniobrasiliano@kfp.com.br', '$2y$10$JmqZqv0yWFkAW0DQzveUOOVsyBaziHmJ0E8SO1n4Ms8SHrvdCxhHm', 1, 'c36hsLi10mWF6IeaR6Lq9cpRR7q2I5boJWUxPSNHtIgDj71cDBsYF71bQp6F', '2019-06-10 21:30:34', '2019-06-10 21:30:34'),
(412, 'CLAUDIA', 'CRISLENE', 'F', '140208', 'CáNCER', '2003-07-06', '999226289', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'claudiasilva@gmail.com', '$2y$10$OIZTUZG8ygxbo.3dG39Gcu66gxpUwURhIN6fjBgmDYcrTN49ZCq9i', 1, 'MTLHYExFpp0q6wkXo18OOtAgOUQDpTntPIV3JfY3DIds4r7C0LVjIvCBK2Pf', '2019-06-12 12:41:01', '2019-06-12 12:41:01'),
(413, 'EWERTHON ERBERT', 'SILVA DE ARAUJO', 'M', '34370730', 'AL', '1993-06-28', '(82) 99984-0942', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'ewerthon.erbert@gmail.com', '$2y$10$wF/DGEGIGIADA30g0aSHy.2skMdLEQPuRQPfhRyx0u5n07NXT9iGi', 1, '7fPwRF3aptCHkEJOlnPxpSVbyZ0fLvXkrPFTrVLMrpzENPEGLjFQwJsORSHK', '2019-06-14 12:41:18', '2019-06-14 12:41:18'),
(414, 'EDUARDO', 'PEREIRA', 'M', '40166538', 'SEI NãO', '2001-01-10', '82996548366', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'yeduzinhosantos2017@gmail.com', '$2y$10$J1dWQCmF9TeaOrvMsyeXSuPjqvamgLJdB.pTeTlUS//qTsZUa6J9S', 1, 'p7PTQLIfBCbUz9fCAknkQaCm6N8rnYEKrEYKx6uJ29MbtVGnYu7qTQRYOodD', '2019-06-14 22:25:50', '2019-06-14 22:25:50'),
(415, 'ARTHUR', 'LIMA', 'M', '40166539', 'SEI NãO', '1999-09-16', '82996548366', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'amaroeduardo9000@gmail.com', '$2y$10$cVwmVYBsY9qZnmMGTCdmBuEL2QSM377WkssCSyGG5OKaUH1j6QCR.', 1, NULL, '2019-06-14 22:39:22', '2019-12-01 14:29:09'),
(416, 'CAMILA', 'BICALETI', 'F', '48198958', 'SSP/SP', '1992-01-18', '17991744449', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'cbicaleti9@gmail.com', '$2y$10$wfSSJqnJCBENul1PyXUgzef2ojNxQfLm0zYuDqgMyfbOQ9gYNEIqG', 1, 'I4tsXoVSQ3WgcQV5UQDgIBSmO6jBvaCTp8292YMIUr9yF1EsrDOVvJtDCDCJ', '2019-06-28 08:36:00', '2019-06-28 08:36:00'),
(417, 'LUZIENE', 'SILVA FERREIRA', 'F', '98001213386', 'SSP/AL', '1981-12-13', '82988390415', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Sluzferreira@gmail.com', '$2y$10$Bg3UbmA9zcvKcm8pSDxhu.34O48vI/lsSGL9Bw9PoR4on60KdJusu', 1, NULL, '2019-07-03 19:18:40', '2019-07-03 19:18:40'),
(418, 'JORGE', 'FERREIRA', 'M', '056337579', 'IFP', '1965-09-22', '82987069475', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'jorgeflores65@hotmail.com', '$2y$10$1FsAEzPrr8dd51t1X.Jaxuqwlyg1jJDGY7n8BiihSGRjrsyohh0Ru', 1, NULL, '2019-07-11 09:50:30', '2019-07-11 09:50:30'),
(419, 'CICERA PEREIRA', 'SANTOS', 'F', '4071638-4', 'SSP AL', '1953-02-28', '987087456', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'cicerapsantos@hotmail.com', '$2y$10$GACJUFqCbfhitNF71WBicuDuMnO.yWyS8K4o4P8VrpZK8T7.EzO.O', 1, 'n3w3tG6bUOfSFh6P4E52PammBoZr9eiKmh3HPvXOUqfwxc0fu5qljQDV2sSk', '2019-07-14 15:15:10', '2019-07-14 15:15:10'),
(420, 'JOSIVALDO', 'SILVA', 'M', '53188398', 'SSP/SP', '1983-01-26', '82996250466', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'josivaldobarbosil@gmail.com', '$2y$10$1yPefEFeiYcLKuYvIPRhtuT5mciQXXbo0xyX/lQ.sDICWvahCZQ1u', 1, 's3bwOyl5OEo7r1D4tK9D14yo0c9L5clUZpcBJjGWa7281VQIGgllbRv3IpIO', '2019-07-15 18:07:31', '2019-07-15 18:07:31'),
(421, 'RUTTY', 'DE MELO', 'F', '2002001339227', 'SãO AL', '1984-07-26', '8296197301', 'AL', 'Maceió', 'Maceió Colina', 'Boa Vista', 'ruttymelo47@gmail.com', '$2y$10$6FgJy/yydyag5CSyvKYAxup81K6BEUJMcS.P/XX5A1Yf9z2jw9tZu', 1, NULL, '2019-07-16 06:56:48', '2019-07-16 06:56:48'),
(422, 'JEAN', 'FERREIRA DE LIMA', 'M', '34468099', 'AL', '1992-06-17', '82996195488', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'jean_ferreira_bms@hotmail.com', '$2y$10$BOuFIDSsKTYTJEksjoIpU.F2PvaJjxx67RVPgCsdjsg3bY9GEGKdW', 1, NULL, '2019-07-17 11:04:36', '2019-07-17 11:04:36'),
(423, 'JIVANILDO', 'VIEIRA', 'M', '2002001233122', 'SSP/AL', '1986-10-25', '82988412342', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'jivanildovieirasud@gmail.com', '$2y$10$mORbn6O38WdGmSGhXdIQU.rlnMjN5qWlZvzgWkS3cefbYXjGi6Fci', 1, 'mYeDG1NWJGgzPv4OMHrx5PxRj4iXhqVYwL1K16cO5dLoA56TsdpZdwbf8epa', '2019-07-18 21:25:33', '2019-07-18 21:25:33'),
(424, 'LUANA', 'ROCHA', 'F', '373220041', 'SSP', '1996-08-11', '82988977600', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'luanadepaularochadasilva15@gmail.com', '$2y$10$KK4c9Euex5fkWzLEJSOvceGkMO22xgqathajy8Kx7qy.0G8qrDQua', 1, NULL, '2019-07-21 13:39:02', '2019-07-21 13:39:02'),
(425, 'AUGUSTO', 'ALMEIDA', 'M', '32911670', 'SSP/SE', '1991-03-07', '(79) 996328776', 'SE', 'Nossa Senhora do Socorro', 'Aracaju Norte', 'Centenário', 'augusto.almeidad@hotmail.com', '$2y$10$5fyp6QtXFHIkrF5Mny.4zuZwt0IjvW4m4ApwJixVDdchZ8hHx5.Mu', 1, '9brO57esCEUZDF6QMHVFA5rQPqnK9ISwUBNIEGG2dKhaDDn6fUN5FhPS9xii', '2019-07-21 19:49:09', '2019-07-21 19:49:09'),
(426, 'LEANDRO', 'CRUZ', 'M', '33281602', 'SSP/SE', '1989-04-27', '79 996429261', 'SE', 'Amparo de São Francisco', 'Aracaju Norte', 'Jardim Mariana', 'leandrocruzsud@outlook.com', '$2y$10$KtzmQcgY1GUPWX7bMUWu6.KV1.T7hDkCWu76RuUybWsCmiKdApyNi', 1, '3EBT65Z5JTjahytxmuC1UAY5Cm9UssUXeGhCPWN2gFXQ9OdETmxnuiZict6G', '2019-07-21 21:30:43', '2019-07-21 21:30:43'),
(427, 'LUCIENE', 'VIEIRA', 'F', '2003001127793', 'SSPAL', '1972-06-28', '82998093998', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'kassiamanuele@gmail.com', '$2y$10$SLx2n0xWEp1JDzqh3QkjCOGkL5J1Lnuvk.wYm0qjJXTzitBFpbMha', 1, NULL, '2019-07-21 21:37:11', '2019-07-21 21:37:11'),
(428, 'CAMYLLA FLORINDA', 'EUGENIO DA SILVA', 'F', '35369817', 'SEDS', '1996-10-01', '82996565632', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'camylla.eugenio@hotmail.com', '$2y$10$HBh0cIerZ2hzELaDZrnfb.1h8UJZXJt3ZkffH3iN5uXk/FbShMIji', 1, 'OOHSB6NEBC62ltTBZwlutQjsdihPTkfl6P2vUXTKQsj3ibJUJV67DHI2zcRf', '2019-07-23 23:54:26', '2019-07-23 23:56:31'),
(429, 'LOURIENE', 'SANTOS DE OLIVEIRA', 'F', '180598', 'SSP AL', '1952-12-27', '82999739412', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'louriene_oliveira@hotmail.com', '$2y$10$14v1sCsg8NvGzlEjtiAuZOOBpCRlfHkS885OpIUGHHvEP0sknvjmO', 1, 'kODop7EcGLuLal7X3pEJJ0FbywMtxI3ZOd3xcbnojuwxb62E0AWf8MQ1GOCJ', '2019-07-24 00:07:36', '2019-07-24 00:07:36'),
(430, 'THEMISTOCLES', 'LOPES DAS TREVAS NETO', 'M', '4090379-6', 'PO/AL', '2000-10-01', '82988978584', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'netotrevas.sud@outlook.com', '$2y$10$60kSoen9Uw7yeo.I/v5kFePm.GjY.zFpOD6PJalZUJB.ZaNuPcUwu', 1, '7WjLJUo4X8AWOkOCKDwzM9ewL4qLG9of3hLJ76rwBMe5djKrelHN6hiTZen7', '2019-07-28 20:52:26', '2019-07-28 20:52:26'),
(431, 'MARIA JOSé ALCINA', 'DA SILVA RODRIGUES', 'F', '4286526-3', 'PO/AL', '1955-05-22', '82988480230', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'mariajosealcina@gmail.com', '$2y$10$JOHLJY2jKNmmks/t6StpJ.z9eP8GXiKEUdaHSm9B3tSv2hPiUuwc.', 1, NULL, '2019-07-28 21:44:13', '2019-07-28 21:44:13'),
(433, 'VERIDIANA DA SILVA', 'ALMEIDA', 'F', '270017', 'SSP', '1961-03-19', '988727936', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Benedito Bentes', 'mc.servicos@gmail.com', '$2y$10$BAEaxLy0pjXeD3dRQkJFzubFY8KQTpRjsAIRPcLW5Vr0xD4LiQdhW', 1, NULL, '2019-08-02 18:27:54', '2019-08-02 18:27:54'),
(434, 'BISPO', 'PEDRO', 'M', '0001260579', 'SSP AL', '1977-04-24', '82998247620', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'cpsilvacpsud@gmail.com', '$2y$10$rnkx4g7.xsF.9IzHcC2pSOlyUkZo9SnycGtknb5mJZkHvg.UVOfPm', 1, NULL, '2019-08-04 15:51:20', '2019-08-04 15:51:20'),
(435, 'LUANA', 'ROCHA', 'F', '3732004-1', 'SSP', '1996-08-11', '82988977600', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Benedito Bentes', 'luarocha@gmail.com', '$2y$10$fAPjU1g4tOJ9SXqkk4/O/ePNH2.Ed//I3Ou10cXrMvpkFHD5IFImy', 1, NULL, '2019-08-07 21:04:35', '2019-08-07 21:28:07'),
(436, 'JOSENITA', 'RIBEIRO DA SILVA SANTOS', 'F', '3000001293030', 'SSP-AL', '1963-06-27', '82988918700', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'josystos.2016@gmail.com', '$2y$10$V.hvXNpJzgDDJH3IxdOKVulb4QIM6G06bUBkQkVFL2GEEo6mmiNPu', 1, NULL, '2019-08-18 21:54:10', '2019-08-18 21:54:10'),
(437, 'TALYTA', 'GLENDA', 'F', '4142806-4', 'MACEIO', '2002-08-11', '987584194', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'talyta_sud@outlook.com', '$2y$10$iyQFjKaTLCT8uQOxvMgD/Og.yjCwKkwIgPoIBUNLBzj9rDWHBCZjO', 1, NULL, '2019-08-25 16:33:51', '2019-08-25 16:33:51'),
(438, 'DIEGO', 'BISMARK', 'M', '4153650.9', 'ALAGOAS', '2000-08-07', '987392706', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Tabuleiro', 'diego_rq17@hotmail.com', '$2y$10$FmChA5gWvpfDP8u5o2oMEuLRzbhcc2MMPYINzu0gwvdwteQyxlB7K', 1, '9Jjr5reN7npNgVxKjH9cw6eRAQypIMI0eeSEDQR5qolu13vguzVzQoD1oLRT', '2019-09-03 22:33:58', '2019-09-03 22:33:58'),
(439, 'JOSENILDA', 'BRANDINO DA SILVA', 'F', '1527215', 'SSPAL', '1979-07-20', '82988086020', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'josybrandino@hotmail.com', '$2y$10$TEtmwgct4vovnEaa.0FGteaoOQkH8hfJ19fHLLPnlSOUyfbuRPo82', 1, 'tPv2CAdOfaUaelocB8kJ5SkWoIwvM880Pq8WLbbZlpWsvkz6jsnBay3FGXun', '2019-09-07 22:30:52', '2019-09-07 22:30:52'),
(440, 'ILSA MOTA DA SILVA', 'SILVA', 'F', '2000002073433', 'AL', '1975-05-24', '988485218', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'ilsamota@hotmail.com', '$2y$10$0LCBFdAa.MDil6xmMX3aNuN44oXfL451/AmxIPisgJa0zRJAfxE6.', 1, NULL, '2019-09-15 12:41:29', '2019-09-15 12:41:29'),
(441, 'SANDRA REGINA', 'NOVAIS LIMA', 'F', '41962206', 'SSPAL', '1970-01-29', '82999478208', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'novaisud@hotmail.com', '$2y$10$48Wkm7QXuuZLkd8SDiYuZ.JfcFHe/H0wZc1NKah/Lr8UAUSUkq7AK', 1, NULL, '2019-09-16 19:23:30', '2019-11-12 14:47:32'),
(442, 'EDNA', 'SALES', 'F', '997590', 'AL', '1971-03-13', '994140170', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'ednasales@gmail.com', '$2y$10$VNK85hUQFBAcKD7qdGlGtunZOHQOKd1alw3xXUOA48xBHU9gezklq', 1, NULL, '2019-09-18 09:33:50', '2019-09-18 09:33:50'),
(443, 'LUCILEIA', 'SILVA FLORENTINO', 'F', '2000001085438', 'SSP', '1974-08-04', '988743617', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'leia.florentino2@gmail.com', '$2y$10$4siuRiEH1//D4T.zIbog3uyQPbvqwY9q.yY1g.d6ysFN6JKo3UNNm', 1, 'enyJL2C4Q5U3LqudwCj66sZdwFsKrWBYRY57DU7KBxcgeCLw7NckoBNlmabP', '2019-09-20 15:13:18', '2019-09-20 15:13:18'),
(444, 'MILTON GOMES JR', 'SILVA', 'M', '2001001160480', 'AL', '1971-08-17', '(82) 99955 0871', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'milton-gomescorretormrv19@Outlook.com', '$2y$10$1N/OI7vKWQUvR3/ju0GfJevXPINvcIOciAR/2Rz.0BcBy02sbWqv2', 1, 'dYwhKwISCxqAexa8Rf5jErRrc5JJxI9NdYlQvYmbZyIg2dVzIG6rkGrcUnMX', '2019-09-22 10:46:19', '2019-11-10 22:49:38'),
(445, 'NATALY', 'SANTOS', 'F', '32993773', 'SSP AL', '1990-09-04', '082996601446', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'hsiants@hotmail.com', '$2y$10$YORRZrbi.47k4/xhJ0Jt3OyEuIQ4FgjAVF1ky97ayDv4G8U2b5S6q', 1, NULL, '2019-10-03 22:17:45', '2019-10-03 22:17:45'),
(446, 'LIVIA', 'OLIVEIRA', 'F', '38466325', 'SSP', '1998-12-08', '82988179929', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'liviaraquel.g@hotmail.com', '$2y$10$zUfEVfeNSPAGKK/JjhFnmucbp1XiQIxCwihAlr7jyOb4p9XVdJNyi', 1, NULL, '2019-10-06 16:30:02', '2019-10-06 16:30:02'),
(447, 'ALESSANDRA CARYNE', 'CALHEIROS', 'F', '2002001172691', 'SSP/AL', '1985-11-23', '82996329069', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'alessandraccalheiros@gmail.com', '$2y$10$NRbgCqt7NDimWLBQ9oXAseZb7sBX6BIZcxRJ0Cdwkeknv1USG9w2O', 1, 'Nnpx2csS9qts1IfbVs6nWKvn0Id3bVIqfeLekzEaZTEUpJPpeObGVawjn3Ws', '2019-10-08 10:42:57', '2019-10-08 10:42:57'),
(448, 'CAETÉS', 'ALA CAETÉS', 'M', '2001001228965', 'SSP/AL', '1988-11-01', '(82) 9 9644-6798', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'estacamaceiotabuleiro@gmail.com', '$2y$10$crwujVcDKvDTfkj0FtSunujoergzwOHKOWpnH7s4gUmzSc3vSzcYa', 1, 'XzwoBaOq9SZKMBbr7kXH16iMj51uxZYAqnM2Ht09sDmPzYLg2UUls9gK7593', '2019-10-13 02:35:15', '2019-12-23 00:32:02'),
(449, 'JESSIKA LUCIA DOS SANTOS DE', 'LIMA', 'F', '3569874', 'SP', '1991-04-05', '82996971542', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Pratagy', 'jessikasudlima@gmail.com', '$2y$10$JyxVA5nnOx.NUDXfQKJ7vuNkdmpNg3T1JwF9nunNI1qctmS3D0ptS', 1, NULL, '2019-10-14 20:50:56', '2019-10-14 20:50:56'),
(451, 'MARIVALDO M', 'SILVA MARIVALDO', 'M', '1500-676', 'AL', '1979-03-06', '82999144009', 'AL', 'Água Branca', 'Maceió Tabuleiro', 'Aeroclube', 'marivaldopaulamel@gmail.com', '$2y$10$HgfglatKPxTD6n77K24Cb.aU9wbLWJSjcnD/Ff3kgrDi/Feu1p/K.', 1, NULL, '2019-10-26 19:58:55', '2019-10-26 19:58:55'),
(452, 'PAULO', 'GERMANO DE SALES FILHO', 'M', '727120', 'SSP/AL', '1967-09-09', '82 99691-0295', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'paulosales42@hotmail.com', '$2y$10$PDWun6vNuWtBdW4nbFn2vOQR71jqbVWsf5INx2M8J6aSfuPY7j6XK', 1, 'hGMWQwEnMgWKlR5fCjxfPjEkDkmeGeW2x96GfCOis5Pjh4w1zqoSIYeFYsou', '2019-10-27 11:09:09', '2019-10-27 11:09:09'),
(454, 'ALA CAETéS', 'CAETéS', 'M', '20001001228944', 'SSP/AL', '1988-01-01', '82988393562', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'televisaogeladeiradvd@gmail.com', '$2y$10$0/dXTKx3rB3V3F8Q/fsZwOfDJjl0oEw9tHWB.dHorN2MALFJXpIFa', 1, NULL, '2019-10-28 12:49:20', '2019-10-28 12:49:20'),
(455, 'RAFAEL', 'GOMES', 'M', '200010022818', 'SSAP/AL', '1988-11-01', '82 996446798', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'rafaelgomesbackups@gmail.com', '$2y$10$gj.exh.1J90LErSTszRz6ei.h9QR/Qkov7jYHNK3UzJ29M7heZm4W', 1, 'plxU3lj2MCV1nLJeWDGMtZWcvqwaLKK2eigUdR4gaBpiqQjya15wCdPnsygm', '2019-11-06 09:02:54', '2019-11-06 09:02:54'),
(456, 'JUAREZ', 'SANTOS', 'M', '969.664', 'SSP/AL', '1969-04-12', '82988337557', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Cachoeira do Meirim', 'jjuarezlima@hotmail.com', '$2y$10$6YOcSSp/2J3BIfjeSXEGjOSkPxy3y23WlukkBLLnv0BQmdk/kQNq2', 1, 'XtoDKYmqQZ9QoiJb9Caszja8IG2UT13LB3hvEq4TJTZDHV6tMZcVY1GughWc', '2019-11-12 10:18:55', '2019-11-12 10:18:55'),
(457, 'ANDRE', 'OLIVEIRA', 'M', '1.203623', 'AL', '1977-12-16', '82987216715', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Gurguri', 'andreluizlopesdeoliveira99@gmail.com', '$2y$10$JT8eOpHXP830FDnYSo7XSuJWUbKotDSaE0s7weQ2Lzdcz.wPtyskW', 1, NULL, '2019-11-17 22:29:44', '2019-11-17 22:29:44'),
(458, 'MOACYR', 'PEREIRA SANTOS ANJOS', 'M', '32916388', 'SSP/SE', '1989-12-06', '79991327131', 'SE', 'Aracaju', 'Aracaju Norte', 'Santos Dumont 2', 'moacyranjos@gmail.com', '$2y$10$MWKh5QUlYXhlGv51cslSTeZsoDrLIxFEmU7.K/UWYnL12PCmxvoGG', 1, NULL, '2019-11-25 10:39:18', '2019-11-25 10:39:18'),
(459, 'ANDERSON', 'FEITOSA XAVIER', 'M', '3.329.501-8', 'SSP/SE', '1985-10-13', '79998009510', 'SE', 'Nossa Senhora do Socorro', 'Aracaju Norte', 'Jardim Mariana', 'anderson.feitosa@hotmail.com', '$2y$10$b.z0.K90VeJe73Q1rL8MH.rWqqHkzpbuNX.zcDi4x696BrdzyZQPK', 1, NULL, '2019-11-25 11:00:02', '2019-11-25 11:00:02'),
(460, 'JAGUARACI', 'NASCIMENTO SANTOS', 'M', '1420719', 'SSP/SE', '1979-10-18', '79988669403', 'SE', 'Aracaju', 'Aracaju Norte', 'Santos Dumont 2', 'jaguaracisud@gmail.com', '$2y$10$2MjEo08TMDvsiz9Z/PjDwOVsxIfj5.3rKKGEInkQ.5l/K4NievvEe', 1, NULL, '2019-11-25 12:05:28', '2019-11-25 12:05:28'),
(461, 'LUIZ HUMBERTO', 'SANTANA DA PIEDADE', 'M', '918792', 'SSP/SE', '1968-03-30', '79999646782', 'SE', 'Nossa Senhora do Socorro', 'Aracaju Norte', 'Socorro 1', 'luizhumberto.sud@hotmail.com', '$2y$10$A85wQ80NB6OM2zk2DXffAO8Zbso05PH36qXGFcdpkjzKyeid766ei', 1, NULL, '2019-11-25 12:58:52', '2019-11-25 12:58:52'),
(462, 'JOHN BOMFIM NASCIMENTO', 'NASCIMENTO', 'M', '3.065.926-4', 'SERGIPE', '1984-11-03', '79998625494', 'SE', 'Aracaju', 'Aracaju Norte', 'Soledade', 'johnnysud@gmail.com', '$2y$10$cFmHx1ZBwiReyQ3FgGgvOuDcOPbF2jNxFmKJxmu/JjPOrVVtqWAoW', 1, 'uyv8PiKPO53zSOsvh4Z6hMFPPAkXSyQWpzlnJO2FMWnnVw0ldtlr7Uf6oaSx', '2019-11-30 23:27:34', '2019-11-30 23:27:34'),
(463, 'GABRIELA', 'DA SILVA COSTA VIEIRA', 'F', '31267807', 'SSP/SE', '1986-12-26', '988671494', 'SE', 'Aracaju', 'Aracaju Norte', 'Centenário', 'gabi.vieira2686@gmail.com', '$2y$10$sOVoAh6RBWmZaYDuhO3usOccMsXOuGuhKCuyd4YmWTzUNMhxR6P0u', 1, NULL, '2019-12-01 13:34:58', '2019-12-01 13:34:58'),
(464, 'ARISTON VITOR', 'DE SOUZA SILVA', 'M', '3345352-7', 'PO/AL', '2001-11-20', '88583153', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'Aristonvitinhoio@gmail.com', '$2y$10$r/OLo1CF1wdew0jPnCVUAe83UKjaTfkaawSargzZXt9897yGm7sYG', 1, 'vCSQygi1LuBREbBrcW5sLA5eqLBJNEZ7vmYa0wEipYcNL4xUpwYUhT6ZUuZq', '2019-12-01 14:12:06', '2019-12-01 14:12:06'),
(465, 'ODERLANE', 'DA SILVA RODRIGUES BRAZ', 'F', '2002001063922', 'SSP/AL', '1986-02-10', '82 98712-0461', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'oderlane_rodrigues@hotmail.com', '$2y$10$2m.CIA9M7n9xEkQRPRVP7.Dy.1fo5OZpT175FggYo/WvCDV71okwq', 1, 'j2WFKqtIr5ADTZUCtyxFtlORW9ppZvhsIUuIK6bkHG3UBSmZLPsROuzAjXLv', '2019-12-08 11:32:03', '2019-12-08 11:32:03'),
(466, 'JéSSICA ADRIANA', 'FELIX', 'F', '37329561', 'SSPAL', '1994-04-12', '82991172654', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Universitário', 'jessicaadriana@outlook.com.br', '$2y$10$DDJ4g/yaGsM13vkPUehzfuMXUI9fzlQ9Mhqm89JDc1NHa6FDbJSKC', 1, 'ISgOkvFx9FlN1clFLdaOxwZCDU5WeLRuhgOS0ALOLOKlRrit5y9Rw7q6eX3D', '2019-12-11 13:06:00', '2019-12-11 13:06:00'),
(467, 'MARIVAN', 'RODRIGUES', 'M', '315361', 'SSP/AL', '1958-04-11', '82988553403', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'marivanrodrigues34@gmail.com', '$2y$10$HSvjyGpy3WRAkErjop5pXeBA6XL6sjHETGCqrXlP7/ytzqvcubIM.', 1, '7SqQwGR5VTsa3dP56G3GvhmtYDPgkxZr8CQziqsFzhliKQmC7RC2cJpziMsG', '2019-12-15 13:14:03', '2019-12-15 13:14:03'),
(468, 'MARIA ALCINA', 'RODRIGUES', 'F', '428626-3', 'SSP/AL', '1955-05-22', '82988480230', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Caetés', 'mariajosealcinadasilva@gmail.com', '$2y$10$8OQnp09WMcS5c6nuFsnypeBcLQYhnbma.fT7EJzarZSaPkZBmcSU.', 1, '7GWYvsfcR3Sqh97TLNtHzkR02bcW4h901yCq4BMrwbKm7UkkWlTpDexbBF7p', '2019-12-16 12:38:39', '2019-12-16 12:38:39'),
(469, 'MARIA GECILENE', 'DOS SANTOS', 'F', '1711546', 'AL', '2019-12-02', '82988498198', 'AL', 'Coruripe', 'Maceió Tabuleiro', 'Universitário', 'gecilenesantos24@gmail.com', '$2y$10$XBkMWCSji9BuCuuc8wd1eednVqKp56oaomZtNs4MH8p42qbvMwEmG', 1, 'wIN2TObGdexZBnHMFCD7B8cClOS9N2odgRgWF9wDfqNJrt3CGP3KLyFk80c9', '2019-12-16 20:23:09', '2019-12-16 20:23:09'),
(470, 'SALETE', 'CARVALHO', 'F', '108216', 'SSP/AL', '1971-04-27', '82987533282', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'saletecarrvalho@gmail.com', '$2y$10$3QvKCiqNyTv1F2VaK.KPLO3BXGShihzKuvXcz6MwB39BJDd4q5lz2', 1, NULL, '2019-12-21 17:47:04', '2019-12-21 17:47:04'),
(473, 'GERALDO', 'CARVALHO', 'M', '1227626', 'SSP AL', '1968-09-13', '82988177458', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Pratagy', 'geracarvalho@gmail.com', '$2y$10$mnY/gVWtqfwAQBvQ3J9J0.aePesW1aVcCv/g8J0IE1pVwV5Ydn7HK', 1, NULL, '2019-12-26 12:17:03', '2019-12-26 12:17:03'),
(474, 'ALEXANDRE', 'ALBUQUERQUE', 'M', '1597519', 'SSP AL', '1980-04-27', '82988445352', 'AL', 'Maceió', 'Maceió Tabuleiro', 'Aeroclube', 'alexandre27041980@gmail.com', '$2y$10$AGJuZTOPSADal8rXkTg51.qFMLzRxekrJYWWrfJm9IHcv1RnCqidS', 1, NULL, '2019-12-28 19:40:25', '2019-12-28 19:40:25');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `calleds`
--
ALTER TABLE `calleds`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `caravans`
--
ALTER TABLE `caravans`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `caravan_users`
--
ALTER TABLE `caravan_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caravan_users_caravan_id_foreign` (`caravan_id`),
  ADD KEY `caravan_users_user_id_foreign` (`user_id`);

--
-- Índices de tabela `conselor_calendars`
--
ALTER TABLE `conselor_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `conselor_meetings`
--
ALTER TABLE `conselor_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipment_rents`
--
ALTER TABLE `equipment_rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_rents_user_id_foreign` (`user_id`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `hinos`
--
ALTER TABLE `hinos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviews_user_id_foreign` (`user_id`);

--
-- Índices de tabela `interview_types`
--
ALTER TABLE `interview_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `interview_types_description_unique` (`description`);

--
-- Índices de tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Índices de tabela `sacramental_meetings`
--
ALTER TABLE `sacramental_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `self_reliances`
--
ALTER TABLE `self_reliances`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_rg_unique` (`rg`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de tabela `calleds`
--
ALTER TABLE `calleds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de tabela `caravans`
--
ALTER TABLE `caravans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `caravan_users`
--
ALTER TABLE `caravan_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1539;

--
-- AUTO_INCREMENT de tabela `conselor_calendars`
--
ALTER TABLE `conselor_calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `conselor_meetings`
--
ALTER TABLE `conselor_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `equipment_rents`
--
ALTER TABLE `equipment_rents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `helps`
--
ALTER TABLE `helps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hinos`
--
ALTER TABLE `hinos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de tabela `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de tabela `interview_types`
--
ALTER TABLE `interview_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT de tabela `sacramental_meetings`
--
ALTER TABLE `sacramental_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de tabela `self_reliances`
--
ALTER TABLE `self_reliances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `caravan_users`
--
ALTER TABLE `caravan_users`
  ADD CONSTRAINT `caravan_users_caravan_id_foreign` FOREIGN KEY (`caravan_id`) REFERENCES `caravans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `caravan_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `equipment_rents`
--
ALTER TABLE `equipment_rents`
  ADD CONSTRAINT `equipment_rents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
