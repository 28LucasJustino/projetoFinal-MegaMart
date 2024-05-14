-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_projetofinal
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(10) NOT NULL,
  `nomeCategoria` varchar(45) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `preco` float(8,2) DEFAULT NULL,
  `estoque` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `categoria_produtos` (`categoria`),
  CONSTRAINT `categoria_produtos` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'Celular','Smartphone Zod X','O Smartphone Zod X Ã© um dispositivo revolucionÃ¡rio que combina a portabilidade de um smartphone com a praticidade de um tablet. Com sua tela dobrÃ¡vel de Ãºltima geraÃ§Ã£o, vocÃª pode desfrutar de uma experiÃªncia Ãºnica de visualizaÃ§Ã£o e produtividade. AlÃ©m disso, possui um poderoso processador, cÃ¢meras de alta qualidade e uma bateria de longa duraÃ§Ã£o.',4000.00,10,'assets/19681-removebg-preview.png'),(2,1,'Celular','Smartphone Zod Ultra','O Smartphone Zod Ultra Ã© o novo lanÃ§amento da linha Zod, conhecida por sua qualidade de cÃ¢mera e experiÃªncia Android pura. Com um design elegante e especificaÃ§Ãµes poderosas, o Zod Ultra oferece desempenho excepcional em um pacote compacto. Sua cÃ¢mera de Ãºltima geraÃ§Ã£o captura fotos incrÃ­veis, enquanto seu sistema operacional garante atualizaÃ§Ãµes rÃ¡pidas e seguras.',1499.99,35,'assets/unnamed-removebg-preview.png'),(3,2,'PC','PC Gamer ExtremeTech','O PC Gamer ExtremeTech é uma máquina poderosa projetada para jogos de alta qualidade. Equipado com um processador de última geração, placa de vídeo potente e uma grande quantidade de memória RAM, o ExtremeTech oferece desempenho excepcional. Seu design arrojado e sistema de refrigeração eficiente garantem uma experiência de jogo suave e sem problemas.',3999.99,10,'assets/Computador-Completo-Intel-Core-I3-8GB-HD-500GB-Monitor-15-Digital-Corp_1662476385_gg-removebg-preview.png'),(4,2,'PC','Workstation Pro','O PC Workstation Pro é uma estação de trabalho profissional para uso empresarial e de design. Com um processador de vários núcleos, placa de vídeo de alta performance e grande capacidade de armazenamento, o Workstation Pro é ideal para tarefas exigentes como edição de vídeo, design gráfico e modelagem 3D. Sua construção robusta e design elegante o tornam uma escolha confiável para profissionais.',4999.99,8,'assets/Computador-Completo-F-cil-Intel-Core-I5-12400f-12a-Gera-o-8GB-DDR4-Geforce-Nvidia-1GB-SSD-480GB-Windows-10-Preto-Monitor-21-Polegadas-LED_1714163687_gg-removebg-preview.png'),(5,3,'Console','Console Gaming X9000','O Console Gaming X9000 é uma plataforma de jogos de última geração projetada para oferecer uma experiência de jogo imersiva. Com gráficos de alta qualidade, controles responsivos e uma biblioteca de jogos exclusiva, o X9000 é ideal para jogadores de todos os níveis. Seu design elegante e compacto o torna uma adição elegante para qualquer sala de estar.',699.99,20,'assets/console-nintendo-switch-oled-com-joy-con-branco-hbgskaaa2_1663593573_original-removebg-preview.png'),(6,3,'Console','Console PlayTech 4K','O Console PlayTech 4K é um console de jogos avançado que suporta resolução 4K. Com uma biblioteca de jogos impressionante e recursos de streaming de mídia integrados, o PlayTech 4K oferece entretenimento completo em um único dispositivo. Seu design elegante e interface intuitiva o tornam uma escolha popular entre os entusiastas de jogos.',799.99,15,'assets/sony-console-ps4-pro-1tb-removebg-preview.png'),(7,4,'TV','Smart TV UltraHD 4K','A Smart TV UltraHD 4K oferece uma experiência de visualização incrível com sua resolução 4K e tecnologia HDR. Com uma tela grande e cores vibrantes, você pode desfrutar de filmes, programas de TV e jogos com detalhes impressionantes. Além disso, possui recursos inteligentes, como streaming de conteúdo, controle por voz e integração com dispositivos inteligentes.',1299.99,20,'assets/166928-removebg-preview.png'),(8,4,'TV','TV QLED 4K','A TV QLED 4K oferece uma experiência de visualização excepcional com sua tecnologia de pontos quânticos e resolução 4K. Com cores vibrantes e brilho intenso, você pode desfrutar de uma qualidade de imagem incrível. Além disso, possui recursos inteligentes para streaming de conteúdo, controle por voz e integração com dispositivos inteligentes.',1799.99,12,'assets/636b706f764e72478b482a50-smart-tv-hd-32inch-television-set-removebg-preview.png'),(9,3,'Console','Console Portátil Gamer','O Console Portátil Gamer é um dispositivo compacto e leve projetado para jogar em movimento. Com uma tela de alta definição, controles ergonômicos e uma biblioteca de jogos diversificada, o Console Portátil Gamer oferece uma experiência de jogo excepcional em um pacote portátil. Sua bateria de longa duração permite horas de jogo sem interrupções.',299.99,25,'assets/Console-Ps5-Sony-Driver-Standard-Branco-Playstation-5_1702579086_gg-removebg-preview.png'),(10,3,'Console','Console Retro Classic','O Console Retro Classic é uma homenagem aos consoles de jogos clássicos dos anos 80 e 90. Com uma seleção de jogos nostálgicos pré-carregados e controles vintage, o Retro Classic oferece uma experiência de jogo autêntica para os fãs de jogos retrô. Seu design retrô e compacto o tornam uma adição única para qualquer coleção de jogos.',799.99,15,'assets/s-l600-removebg-preview.png'),(11,3,'Console','Console VR Immersio','O Console VR Immersio é um sistema de realidade virtual avançado que oferece uma experiência de jogo imersiva. Com tecnologia de ponta e controles precisos, o Immersio leva você para dentro do jogo como nunca antes. Sua biblioteca crescente de jogos VR proporciona uma variedade de experiências emocionantes.',899.99,10,'assets/727-1-removebg-preview.png'),(12,4,'TV','TV OLED 8K','A TV OLED 8K redefine a experiência de TV com sua resolução ultrarrápida e qualidade de imagem incomparável. Com cores realistas, pretos profundos e brilho impressionante, você pode desfrutar de uma qualidade de imagem como nunca antes. Além disso, possui tecnologia inteligente para acesso fácil ao conteúdo e controle conveniente.',3499.99,10,'assets/Apple-TV-4K-hero-221018.jpg.news_app_ed-removebg-preview.png'),(13,2,'PC','Compacto UltraSlim','O PC Compacto UltraSlim é um computador compacto e eficiente para uso doméstico e corporativo. Com um design fino e elegante, ele ocupa pouco espaço e é ideal para escritórios pequenos e ambientes com espaço limitado. Equipado com um processador de baixo consumo de energia, o UltraSlim oferece desempenho sólido e confiável.',2499.99,15,'assets/Computador-Completo-I5-4-Mem-ria-8gb-Hd-500gb-Monitor-19_1662123510_gg-removebg-preview.png'),(14,1,'Celular','Smartphone FuturePro','O Smartphone FuturePro é um dispositivo inovador que redefine a tecnologia móvel. Com recursos como reconhecimento facial avançado, carregamento sem fio e resistência à água, o FuturePro oferece conveniência e segurança. Sua câmera de alta qualidade e desempenho rápido garantem uma experiência superior.',1799.99,15,'assets/a_279130_alta_11-removebg-preview.png'),(15,4,'TV','TV LED SmartTV','A TV LED SmartTV é uma escolha inteligente para entretenimento em casa. Com sua tela LED de alta definição, você pode desfrutar de uma experiência de visualização nítida e clara. Além disso, possui recursos inteligentes, como streaming de conteúdo, aplicativos integrados e controle por voz, para uma experiência de TV moderna.',599.99,25,'assets/br-81036-1-removebg-preview.png'),(16,2,'PC','PC Gamer SuperNova','O PC Gamer SuperNova é uma máquina de jogos de alta performance. Com um processador de última geração, placa de vídeo de alto desempenho e uma grande quantidade de memória, o SuperNova oferece gráficos incríveis e jogabilidade suave. Seu design arrojado e iluminação personalizável o tornam uma escolha popular entre os entusiastas de jogos.',3799.99,12,'assets/Computador-Gamer-Completo-F-cil-Intel-Core-I5-3a-Gera-o-8GB-GTX-1650-4GB-SSD-480GB-Fonte-500w-Monitor-19-_1705080799_gg-removebg-preview.png'),(17,4,'TV','TV Curva Full HD','A TV Curva Full HD oferece uma experiência de visualização envolvente com sua tela curva e resolução Full HD. Com cores vivas e ângulos de visão amplos, você pode desfrutar de uma experiência de cinema em casa. Além disso, possui tecnologia de imagem avançada e recursos inteligentes para uma experiência de TV completa.',899.99,15,'assets/13323_tv-cores-32-led-ptv32g70rch-philco_m5_637844621320004683-removebg-preview.png'),(18,1,'Celular','Smartphone Speed 5G','O Smartphone Speed 5G é um dos primeiros dispositivos compatíveis com a tecnologia 5G. Com velocidades de download ultrarrápidas, você pode navegar na web, transmitir vídeos e jogar sem interrupções. Além disso, possui uma câmera avançada, tela de alta resolução e uma bateria de carregamento rápido.',999.99,25,'assets/294108-removebg-preview.png'),(19,2,'PC','All-in-One MultiTouch','O PC All-in-One MultiTouch é um computador versátil com tela sensível ao toque. Ideal para uso em casa ou no escritório, ele oferece um design elegante e sem cabos, ocupando pouco espaço. Com um processador de alto desempenho e tela de alta resolução, o All-in-One MultiTouch é perfeito para multitarefas, entretenimento e produtividade.',5999.99,7,'assets/Computador-Completo-Digital-Corp-Intel-I5-8GB-SSD-240-Monitor-19_1658231292_gg-removebg-preview.png'),(20,1,'Celular','Smartphone Master X','O Smartphone Master X é um dispositivo avançado com desempenho excepcional. Equipado com um processador de última geração, câmeras de alta resolução e uma bateria de longa duração, o Master X oferece uma experiência premium. Sua tela de alta definição e design elegante o tornam uma escolha ideal para usuários exigentes.',1799.99,20,'assets/png-clipart-samsung-galaxy-s6-edge-samsung-galaxy-s7-edge-smartphone-samsung-gadget-mobile-phone-removebg-preview.png');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14 11:26:39
