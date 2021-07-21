-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jul-2021 às 00:30
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `emails_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_email` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_email` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `emails`
--

INSERT INTO `emails` (`id`, `subject_email`, `message_email`, `created_at`, `updated_at`) VALUES
(23, 'O que é Lorem Ipsum?', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', '2021-07-22 00:23:06', '2021-07-22 00:23:06'),
(24, 'Porque nós o usamos?', 'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma distribuição normal de letras, ao contrário de \"Conteúdo aqui, conteúdo aqui\", fazendo com que ele tenha uma aparência similar a de um texto legível. Muitos softwares de publicação e editores de páginas na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma rápida busca por \'lorem ipsum\' mostra vários websites ainda em sua fase de construção. Várias versões novas surgiram ao longo dos anos, eventualmente por acidente, e às vezes de propósito (injetando humor, e coisas do gênero).', '2021-07-22 00:23:29', '2021-07-22 00:23:29'),
(25, 'De onde ele vem?', 'Ao contrário do que se acredita, Lorem Ipsum não é simplesmente um texto randômico. \n\nCom mais de 2000 anos, suas raízes podem ser encontradas em uma obra de literatura latina clássica datada de 45 AC. \nRichard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre citações da palavra na literatura clássica, descobriu a sua indubitável origem. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" (Os Extremos do Bem e do Mal), de Cícero, escrito em 45 AC. Este livro é um tratado de teoria da ética muito popular na época da Renascença. A primeira linha de Lorem Ipsum, \"Lorem Ipsum dolor sit amet...\" vem de uma linha na seção 1.10.32.', '2021-07-22 00:24:09', '2021-07-22 00:24:09'),
(26, 'Onde posso conseguí-lo?', 'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor, ou palavras aleatórias que não parecem nem um pouco convincentes. Se você pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que não há algo embaraçoso escrito escondido no meio do texto. Todos os geradores de Lorem Ipsum na internet tendem a repetir pedaços predefinidos conforme necessário, fazendo deste o primeiro gerador de Lorem Ipsum autêntico da internet. Ele usa um dicionário com mais de 200 palavras em Latim combinado com um punhado de modelos de estrutura de frases para gerar um Lorem Ipsum com aparência razoável, livre de repetições, inserções de humor, palavras não características, etc.\n       O trecho padrão original de Lorem Ipsum, usado desde o século XVI, está reproduzido abaixo para os interessados. Seções 1.10.32 e 1.10.33 de \"de Finibus Bonorum et Malorum\" de Cicero também foram reproduzidas abaixo em sua forma exata original, acompanhada das versões para o inglês da tradução feita por H. Rackham em 1914.', '2021-07-22 00:26:18', '2021-07-22 00:26:18'),
(27, 'Passagem padrão original de Lorem Ipsum, usada desde o século XVI.', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '2021-07-22 00:27:01', '2021-07-22 00:27:01'),
(28, 'Seção 1.10.32 de \"de Finibus Bonorum et Malorum\", escrita por Cícero em 45 AC', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2021-07-22 00:27:19', '2021-07-22 00:27:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `created_at`, `updated_at`) VALUES
(1, 'rodolfo.diego.gomes@gmail.com', '2021-07-17 04:59:43', '2021-07-17 04:59:43'),
(2, 'admin@gmail.com', '2021-07-20 23:38:25', '2021-07-20 23:38:25'),
(3, 'vendendor1@gmail.com', '2021-07-20 23:41:26', '2021-07-20 23:41:26'),
(4, 'cliente3@gmail.com', '2021-07-21 01:53:12', '2021-07-21 01:53:12'),
(5, 'cliente1@gmail.com', '2021-07-22 00:24:49', '2021-07-22 00:24:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_address_pivots`
--

CREATE TABLE `email_address_pivots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emails_address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `email_address_pivots`
--

INSERT INTO `email_address_pivots` (`id`, `emails_address_id`, `email_id`, `created_at`, `updated_at`) VALUES
(23, 1, 23, '2021-07-22 00:23:06', '2021-07-22 00:23:06'),
(24, 2, 24, '2021-07-22 00:23:29', '2021-07-22 00:23:29'),
(25, 4, 25, '2021-07-22 00:24:09', '2021-07-22 00:24:09'),
(26, 5, 26, '2021-07-22 00:26:18', '2021-07-22 00:26:18'),
(27, 4, 27, '2021-07-22 00:27:01', '2021-07-22 00:27:01'),
(28, 4, 28, '2021-07-22 00:27:19', '2021-07-22 00:27:19');


ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `email_address_pivots`
--
ALTER TABLE `email_address_pivots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_address_pivots_emails_address_id_foreign` (`emails_address_id`),
  ADD KEY `email_address_pivots_email_id_foreign` (`email_id`);

ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `email_addresses`
--
ALTER TABLE `email_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `email_address_pivots`
--
ALTER TABLE `email_address_pivots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Limitadores para a tabela `email_address_pivots`
--
ALTER TABLE `email_address_pivots`
  ADD CONSTRAINT `email_address_pivots_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `email_address_pivots_emails_address_id_foreign` FOREIGN KEY (`emails_address_id`) REFERENCES `email_addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
