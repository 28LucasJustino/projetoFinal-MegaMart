-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_projetofinal
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrinho` (
  `idCarrinho` int(11) NOT NULL AUTO_INCREMENT,
  `carrinhoUser` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `pedidos` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valorTotal` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`idCarrinho`),
  KEY `carrinhoUser_carrinho` (`carrinhoUser`),
  KEY `produto_carrinho` (`produto`),
  CONSTRAINT `carrinhoUser_carrinho` FOREIGN KEY (`carrinhoUser`) REFERENCES `carrinhouser` (`idCarrinhoUser`),
  CONSTRAINT `produto_carrinho` FOREIGN KEY (`produto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrinhouser`
--

DROP TABLE IF EXISTS `carrinhouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrinhouser` (
  `idCarrinhoUser` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCarrinhoUser`),
  KEY `usuario_carrinho` (`usuario`),
  CONSTRAINT `carrinhoUser` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinhouser`
--

LOCK TABLES `carrinhouser` WRITE;
/*!40000 ALTER TABLE `carrinhouser` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinhouser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Celular'),(2,'PC'),(3,'Console'),(4,'TV'),(5,'Games'),(6,'Impresorra'),(7,'Notebook'),(8,'Tablet'),(9,'Acessorio'),(10,'Cadeira');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout` (
  `idCheckout` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`idCheckout`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `checkout_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `mome` varchar(45) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(8) NOT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `usuario_endereco` (`usuario`),
  CONSTRAINT `usuario_endereco` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `entrega` int(11) NOT NULL,
  `dataPedido` date NOT NULL,
  `valorTotal` float DEFAULT NULL,
  `formaPagamento` varchar(20) DEFAULT NULL,
  `stats` int(11) DEFAULT 1,
  PRIMARY KEY (`idPedido`),
  KEY `entrega` (`entrega`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `entrega_pedido` FOREIGN KEY (`entrega`) REFERENCES `endereco` (`idEndereco`),
  CONSTRAINT `user_pedido` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(10) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `desconto` float(10,2) DEFAULT 0.00,
  `preco` float DEFAULT NULL,
  `estoque` int(11) NOT NULL,
  `valorFinal` float DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `categoria_produtos` (`categoria`),
  CONSTRAINT `categoria_produtos` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'Celular','Smartphone Zod X','O Smartphone Zod X Ã© um dispositivo revolucionÃ¡rio que combina a portabilidade de um smartphone com a praticidade de um tablet. Com sua tela dobrÃ¡vel de Ãºltima geraÃ§Ã£o, vocÃª pode desfrutar de uma experiÃªncia Ãºnica de visualizaÃ§Ã£o e produtividade. AlÃ©m disso, possui um poderoso processador, cÃ¢meras de alta qualidade e uma bateria de longa duraÃ§Ã£o.',0.00,4000,10,NULL,'assets/19681-removebg-preview.png'),(2,1,'Celular','Smartphone Zod Ultra','O Smartphone Zod Ultra Ã© o novo lanÃ§amento da linha Zod, conhecida por sua qualidade de cÃ¢mera e experiÃªncia Android pura. Com um design elegante e especificaÃ§Ãµes poderosas, o Zod Ultra oferece desempenho excepcional em um pacote compacto. Sua cÃ¢mera de Ãºltima geraÃ§Ã£o captura fotos incrÃ­veis, enquanto seu sistema operacional garante atualizaÃ§Ãµes rÃ¡pidas e seguras.',0.00,1499.99,35,NULL,'assets/unnamed-removebg-preview.png'),(3,2,'PC','PC Gamer ExtremeTech','O PC Gamer ExtremeTech é uma máquina poderosa projetada para jogos de alta qualidade. Equipado com um processador de última geração, placa de vídeo potente e uma grande quantidade de memória RAM, o ExtremeTech oferece desempenho excepcional. Seu design arrojado e sistema de refrigeração eficiente garantem uma experiência de jogo suave e sem problemas.',0.00,3999.99,10,NULL,'assets/Computador-Completo-Intel-Core-I3-8GB-HD-500GB-Monitor-15-Digital-Corp_1662476385_gg-removebg-preview.png'),(4,2,'PC','Workstation Pro','O PC Workstation Pro é uma estação de trabalho profissional para uso empresarial e de design. Com um processador de vários núcleos, placa de vídeo de alta performance e grande capacidade de armazenamento, o Workstation Pro é ideal para tarefas exigentes como edição de vídeo, design gráfico e modelagem 3D. Sua construção robusta e design elegante o tornam uma escolha confiável para profissionais.',0.00,4999.99,8,NULL,'assets/Computador-Completo-F-cil-Intel-Core-I5-12400f-12a-Gera-o-8GB-DDR4-Geforce-Nvidia-1GB-SSD-480GB-Windows-10-Preto-Monitor-21-Polegadas-LED_1714163687_gg-removebg-preview.png'),(5,3,'Console','Nintendo Switch','O Console Gaming X9000 é uma plataforma de jogos de última geração projetada para oferecer uma experiência de jogo imersiva. Com gráficos de alta qualidade, controles responsivos e uma biblioteca de jogos exclusiva, o X9000 é ideal para jogadores de todos os níveis. Seu design elegante e compacto o torna uma adição elegante para qualquer sala de estar.',0.00,2599.99,20,NULL,'assets/console-nintendo-switch-oled-com-joy-con-branco-hbgskaaa2_1663593573_original-removebg-preview.png'),(6,3,'Console','Playstation 4','O Console PlayTech 4K é um console de jogos avançado que suporta resolução 4K. Com uma biblioteca de jogos impressionante e recursos de streaming de mídia integrados, o PlayTech 4K oferece entretenimento completo em um único dispositivo. Seu design elegante e interface intuitiva o tornam uma escolha popular entre os entusiastas de jogos.',0.00,2199.99,15,NULL,'assets/sony-console-ps4-pro-1tb-removebg-preview.png'),(7,4,'TV','Smart TV UltraHD 4K','A Smart TV UltraHD 4K oferece uma experiência de visualização incrível com sua resolução 4K e tecnologia HDR. Com uma tela grande e cores vibrantes, você pode desfrutar de filmes, programas de TV e jogos com detalhes impressionantes. Além disso, possui recursos inteligentes, como streaming de conteúdo, controle por voz e integração com dispositivos inteligentes.',0.00,1299.99,20,NULL,'assets/166928-removebg-preview.png'),(8,4,'TV','TV QLED 4K','A TV QLED 4K oferece uma experiência de visualização excepcional com sua tecnologia de pontos quânticos e resolução 4K. Com cores vibrantes e brilho intenso, você pode desfrutar de uma qualidade de imagem incrível. Além disso, possui recursos inteligentes para streaming de conteúdo, controle por voz e integração com dispositivos inteligentes.',0.00,1799.99,12,NULL,'assets/636b706f764e72478b482a50-smart-tv-hd-32inch-television-set-removebg-preview.png'),(9,3,'Console','Playstation 5','O Console Portátil Gamer é um dispositivo compacto e leve projetado para jogar em movimento. Com uma tela de alta definição, controles ergonômicos e uma biblioteca de jogos diversificada, o Console Portátil Gamer oferece uma experiência de jogo excepcional em um pacote portátil. Sua bateria de longa duração permite horas de jogo sem interrupções.',0.00,2890.9,25,NULL,'assets/Console-Ps5-Sony-Driver-Standard-Branco-Playstation-5_1702579086_gg-removebg-preview.png'),(10,3,'Console','Xbox Retro Classic','O Console Retro Classic é uma homenagem aos consoles de jogos clássicos dos anos 80 e 90. Com uma seleção de jogos nostálgicos pré-carregados e controles vintage, o Retro Classic oferece uma experiência de jogo autêntica para os fãs de jogos retrô. Seu design retrô e compacto o tornam uma adição única para qualquer coleção de jogos.',0.00,799.99,15,NULL,'assets/s-l600-removebg-preview.png'),(11,3,'Console','Xbox One','O Console VR Immersio é um sistema de realidade virtual avançado que oferece uma experiência de jogo imersiva. Com tecnologia de ponta e controles precisos, o Immersio leva você para dentro do jogo como nunca antes. Sua biblioteca crescente de jogos VR proporciona uma variedade de experiências emocionantes.',0.00,2099.99,10,NULL,'assets/727-1-removebg-preview.png'),(12,4,'TV','TV OLED 8K','A TV OLED 8K redefine a experiência de TV com sua resolução ultrarrápida e qualidade de imagem incomparável. Com cores realistas, pretos profundos e brilho impressionante, você pode desfrutar de uma qualidade de imagem como nunca antes. Além disso, possui tecnologia inteligente para acesso fácil ao conteúdo e controle conveniente.',0.00,3499.99,10,NULL,'assets/Apple-TV-4K-hero-221018.jpg.news_app_ed-removebg-preview.png'),(13,2,'PC','Compacto UltraSlim','O PC Compacto UltraSlim é um computador compacto e eficiente para uso doméstico e corporativo. Com um design fino e elegante, ele ocupa pouco espaço e é ideal para escritórios pequenos e ambientes com espaço limitado. Equipado com um processador de baixo consumo de energia, o UltraSlim oferece desempenho sólido e confiável.',0.00,2499.99,15,NULL,'assets/Computador-Completo-I5-4-Mem-ria-8gb-Hd-500gb-Monitor-19_1662123510_gg-removebg-preview.png'),(14,1,'Celular','Smartphone FuturePro','O Smartphone FuturePro é um dispositivo inovador que redefine a tecnologia móvel. Com recursos como reconhecimento facial avançado, carregamento sem fio e resistência à água, o FuturePro oferece conveniência e segurança. Sua câmera de alta qualidade e desempenho rápido garantem uma experiência superior.',0.00,1799.99,15,NULL,'assets/a_279130_alta_11-removebg-preview.png'),(15,4,'TV','TV LED SmartTV','A TV LED SmartTV é uma escolha inteligente para entretenimento em casa. Com sua tela LED de alta definição, você pode desfrutar de uma experiência de visualização nítida e clara. Além disso, possui recursos inteligentes, como streaming de conteúdo, aplicativos integrados e controle por voz, para uma experiência de TV moderna.',0.00,599.99,25,NULL,'assets/br-81036-1-removebg-preview.png'),(16,2,'PC','PC Gamer SuperNova','O PC Gamer SuperNova é uma máquina de jogos de alta performance. Com um processador de última geração, placa de vídeo de alto desempenho e uma grande quantidade de memória, o SuperNova oferece gráficos incríveis e jogabilidade suave. Seu design arrojado e iluminação personalizável o tornam uma escolha popular entre os entusiastas de jogos.',0.00,3799.99,12,NULL,'assets/Computador-Gamer-Completo-F-cil-Intel-Core-I5-3a-Gera-o-8GB-GTX-1650-4GB-SSD-480GB-Fonte-500w-Monitor-19-_1705080799_gg-removebg-preview.png'),(17,4,'TV','TV Curva Full HD','A TV Curva Full HD oferece uma experiência de visualização envolvente com sua tela curva e resolução Full HD. Com cores vivas e ângulos de visão amplos, você pode desfrutar de uma experiência de cinema em casa. Além disso, possui tecnologia de imagem avançada e recursos inteligentes para uma experiência de TV completa.',0.00,899.99,15,NULL,'assets/13323_tv-cores-32-led-ptv32g70rch-philco_m5_637844621320004683-removebg-preview.png'),(18,1,'Celular','Smartphone Speed 5G','O Smartphone Speed 5G é um dos primeiros dispositivos compatíveis com a tecnologia 5G. Com velocidades de download ultrarrápidas, você pode navegar na web, transmitir vídeos e jogar sem interrupções. Além disso, possui uma câmera avançada, tela de alta resolução e uma bateria de carregamento rápido.',0.00,999.99,25,NULL,'assets/294108-removebg-preview.png'),(19,2,'PC','All-in-One MultiTouch','O PC All-in-One MultiTouch é um computador versátil com tela sensível ao toque. Ideal para uso em casa ou no escritório, ele oferece um design elegante e sem cabos, ocupando pouco espaço. Com um processador de alto desempenho e tela de alta resolução, o All-in-One MultiTouch é perfeito para multitarefas, entretenimento e produtividade.',0.00,5999.99,7,NULL,'assets/Computador-Completo-Digital-Corp-Intel-I5-8GB-SSD-240-Monitor-19_1658231292_gg-removebg-preview.png'),(20,1,'Celular','Smartphone Master X','O Smartphone Master X é um dispositivo avançado com desempenho excepcional. Equipado com um processador de última geração, câmeras de alta resolução e uma bateria de longa duração, o Master X oferece uma experiência premium. Sua tela de alta definição e design elegante o tornam uma escolha ideal para usuários exigentes.',0.00,1799.99,20,NULL,'assets/png-clipart-samsung-galaxy-s6-edge-samsung-galaxy-s7-edge-smartphone-samsung-gadget-mobile-phone-removebg-preview.png');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtopedidos`
--

DROP TABLE IF EXISTS `produtopedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtopedidos` (
  `idProdutoPedidos` int(11) NOT NULL AUTO_INCREMENT,
  `pedido` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  PRIMARY KEY (`idProdutoPedidos`),
  KEY `pedido_produtoPedidos` (`pedido`),
  KEY `produto_produtoPedidos` (`produto`),
  CONSTRAINT `pedido_produtoPedidos` FOREIGN KEY (`pedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `produto_produtoPedidos` FOREIGN KEY (`produto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtopedidos`
--

LOCK TABLES `produtopedidos` WRITE;
/*!40000 ALTER TABLE `produtopedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtopedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `email` varchar(130) NOT NULL,
  `cpf` char(14) NOT NULL,
  `telefone` char(15) NOT NULL,
  `nascimento` date NOT NULL,
  `stats` int(11) NOT NULL DEFAULT 1,
  `fotoPerfil` varchar(255) DEFAULT '',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Lucas','admin123','lucas@gmail.com','12344543565','1212345678','2004-05-19',2,'assets/png-clipart-computer-icons-login-user-profile-others-computer-logo-removebg-preview.png'),(2,'Luk','123','luk@gmail.com','54356512344','4567812123','2006-11-14',1,'assets/png-clipart-computer-icons-login-user-profile-others-computer-logo-removebg-preview.png');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:57:02
