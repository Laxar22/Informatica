-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 28, 2024 alle 22:20
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lol`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `abilities`
--

CREATE TABLE `abilities` (
  `AbilityID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `AbilityType` varchar(50) DEFAULT NULL,
  `ChampionID` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `abilities`
--

INSERT INTO `abilities` (`AbilityID`, `Name`, `Description`, `AbilityType`, `ChampionID`, `img`) VALUES
(1, 'Orb of Deception', 'Ahri lancia un\'orbe di energia, causando danni ai nemici che attraversa e ritorna ad Ahri, curandola se colpisce i campioni nemici.', 'Q', 1, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AhriQ.png\r\n'),
(2, 'Fox-Fire', 'Ahri evoca tre volpi spiritose che attaccano i nemici vicini, prioritariamente quelli recentemente colpiti da Ahri.', 'W', 1, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AhriW.png\r\n'),
(3, 'Charm', 'Ahri lancia un bacio incantato, infliggendo danni e rendendo affascinati i nemici colpiti, facendoli avvicinare ad Ahri.', 'E', 1, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AhriE.png\r\n'),
(4, 'Spirit Rush', 'Ahri evoca tre volpi che le consentono di muoversi rapidamente nella direzione desiderata, infliggendo danni ai nemici attraversati.', 'R', 1, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AhriR.png\r\n'),
(5, 'Mystic Shot', 'Ezreal spara un raggio di energia, infliggendo danni magici ai primi nemici colpiti. Se Mystic Shot colpisce, riduce il cooldown di tutte le sue abilità di 1,5 secondi.', 'Q', 2, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/EzrealQ.png\r\n'),
(6, 'Essence Flux', 'Ezreal lancia un globo di energia, infliggendo danni magici a tutti i nemici nelle vicinanze. Se colpisce un campione nemico, Ezreal ottiene un bonus di velocità di attacco per un breve periodo.', 'W', 2, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/EzrealW.png\r\n'),
(7, 'Arcane Shift', 'Ezreal si teletrasporta in una posizione vicina, lanciando un proiettile magico che infligge danni magici a ogni nemico vicino al suo punto di arrivo.', 'E', 2, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/EzrealE.png\r\n'),
(8, 'Trueshot Barrage', 'Ezreal carica una scarica di energia mistica, sparando un raggio di proiettili magici che attraversano la mappa e infliggono danni magici a tutti i nemici colpiti.', 'R', 2, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/EzrealR.png\r\n'),
(9, 'Decimate', 'Darius balza in avanti, infliggendo danni fisici ad ogni nemico colpito. Se colpisce il nemico con il centro dell ascia, infligge danni bonus.', 'Q', 3, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/DariusCleave.png\r\n'),
(10, 'Crippling Strike', 'Darius infligge danni fisici aggiuntivi al suo prossimo attacco e rallenta il bersaglio per un breve periodo.', 'W', 3, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/DariusNoxianTacticsONH.png\r\n'),
(11, 'Apprehend', 'Darius tira fuori i nemici circostanti verso di sé.', 'E', 3, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/DariusAxeGrabCone.png\r\n'),
(12, 'Noxian Guillotine', 'Darius balza in avanti, infliggendo danni fisici ad ogni nemico colpito. Se colpisce il nemico con il centro dell ascia, infligge danni bonus.', 'R', 3, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/DariusExecute.png\r\n'),
(13, 'Light Binding', 'Lux lancia un incantesimo di luce che ferma il primo nemico colpito, infliggendo danni magici e rallentandolo.', 'Q', 4, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LuxLightBinding.png\r\n'),
(14, 'Prismatic Barrier', 'Lux evoca un muro di energia, che assorbe i danni in arrivo da una direzione specifica. Dopo un breve periodo, il muro si spezza, infliggendo danni magici ai nemici nelle vicinanze.', 'W', 4, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LuxPrismaticWave.png\r\n'),
(15, 'Lucent Singularity', 'Lux crea una sfera di luce, che può essere attivata di nuovo per esplodere e infliggere danni magici ai nemici nella sua area.', 'E', 4, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LuxLightStrikeKugel.png\r\n'),
(16, 'Final Spark', 'Lux canalizza un raggio di luce, infliggendo danni magici elevati a tutti i nemici nel percorso.', 'R', 4, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LuxR.png\r\n'),
(17, 'Steel Tempest', 'Yasuo attacca con la sua spada, infliggendo danni fisici e caricando un tornado che può essere scagliato per infliggere danni e colpire i nemici.', 'Q', 5, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/YasuoQ1Wrapper.png\r\n'),
(18, 'Wind Wall', 'Yasuo evoca una barriera di vento che blocca i proiettili nemici, rendendolo immune ai danni di proiettili per un breve periodo.', 'W', 5, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/YasuoW.png\r\n'),
(19, 'Sweeping Blade', 'Yasuo balza attraverso i nemici colpendoli con la sua spada e ottenendo una piccola quantità di armatura bonus.', 'E', 5, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/YasuoE.png\r\n'),
(20, 'Last Breath', 'Yasuo afferra un nemico aria in un esplosione di vento, lanciando i nemici in aria e infliggendo danni critici.', 'R', 5, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/YasuoR.png\r\n'),
(21, 'Switcheroo!', 'Jinx scambia tra due armi: il Fishbones, un lanciarazzi a razzo multiplo, e il Pow-Pow, una mini mitragliatrice a raffica di proiettili.', 'Q', 6, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JinxQ.png\r\n'),
(22, 'Zap!', 'Jinx scaglia un proiettile che infligge danni fisici al primo nemico colpito e rallenta il bersaglio.', 'W', 6, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JinxW.png\r\n'),
(23, 'Flame Chompers!', 'Jinx lancia una serie di trappole esplosive che si attivano quando un nemico le attraversa, radunando i nemici e infliggendo danni.', 'E', 6, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JinxE.png\r\n'),
(24, 'Super Mega Death Rocket!', 'Jinx lancia un razzo gigante in grado di infliggere danni magici a tutti i nemici nel suo percorso. Il danno aumenta in base alla salute mancante del bersaglio.', 'R', 6, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JinxR.png\r\n'),
(25, 'Decisive Strike', 'Garen carica verso un nemico, infliggendo danni fisici e silenziando il bersaglio.', 'Q', 7, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/GarenQ.png\r\n'),
(26, 'Courage', 'Garen si mette in guardia, ottenendo una scorta di resistenza e rimuovendo tutti gli effetti negativi.', 'W', 7, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/GarenW.png\r\n'),
(27, 'Judgment', 'Garen gira rapidamente la sua spada, infliggendo danni fisici a tutti i nemici circostanti.', 'E', 7, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/GarenE.png\r\n'),
(28, 'Demacian Justice', 'Garen colpisce con la sua spada con tutta la sua forza, infliggendo danni veri al bersaglio. Il danno aumenta in base alla salute mancante del bersaglio.', 'R', 7, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/GarenR.png\r\n'),
(29, 'Razor Shuriken', 'Zed lancia una lama affilata, infliggendo danni fisici ai nemici che colpisce. Se colpisce più nemici, il danno viene ridotto.', 'Q', 8, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ZedQ.png\r\n'),
(30, 'Living Shadow', 'Zed evoca una ombra vivente, che può essere controllata indipendentemente da Zed stesso e ripetere le sue abilità.', 'W', 8, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ZedW.png\r\n'),
(31, 'Shadow Slash', 'Zed affetta tutto ciò che lo circonda con le sue lame, infliggendo danni fisici ai nemici circostanti.', 'E', 8, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ZedE.png\r\n'),
(32, 'Death Mark', 'Zed si attacca al bersaglio, lasciando un marchio della morte su di esso. Dopo un breve periodo, il marchio esplode, infliggendo danni veri al bersaglio.', 'R', 8, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ZedR.png\r\n'),
(33, 'Tumble', 'Vayne rotola in una direzione specifica, ottenendo una breve scorta di velocità di attacco.', 'Q', 9, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/VayneTumble.png\r\n'),
(34, 'Silver Bolts', 'Vayne concentra i suoi attacchi per perforare i nemici, infliggendo danni veri addizionali dopo un certo numero di attacchi.', 'W', 9, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/VayneSilveredBolts.png\r\n'),
(35, 'Condemn', 'Vayne colpisce il nemico più vicino con una potente scarica, respingendolo e infliggendo danni.', 'E', 9, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/VayneCondemn.png\r\n'),
(36, 'Final Hour', 'Vayne aumenta la sua velocità di movimento e la sua capacità di nascondersi durante un breve periodo, ottenendo anche un bonus di danni.', 'R', 9, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/VayneInquisition.png\r\n'),
(37, 'Sonic Wave', 'Lee Sin lancia una sfera di energia, infliggendo danni fisici al primo nemico colpito e rivelando l area circostante.', 'Q', 10, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LeeSinQOne.png\r\n'),
(38, 'Safeguard', 'Lee Sin scatta in direzione dell\'alleato bersaglio, proteggendosi dai danni con uno scudo. Se l\'alleato è un campione, riceve uno scudo.', 'W', 10, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LeeSinWOne.png\r\n'),
(39, 'Tempest', 'Lee Sin colpisce il terreno, scatenando un\'onda d\'urto che infligge danni magici e rivela le unità nemiche colpite.', 'E', 10, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LeeSinEOne.png\r\n'),
(40, 'Dragon\'s Rage', 'Lee Sin esegue un poderoso calcio a rotazione, respingendo il bersaglio e infliggendo danni fisici ai nemici con cui entra in contatto.', 'R', 10, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/LeeSinR.png\r\n'),
(41, 'Death Sentence', 'Thresh lancia la sua catena verso un nemico, trascinandolo verso di sé e stordendolo per un breve periodo.', 'Q', 11, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ThreshQ.png\r\n'),
(42, 'Dark Passage', 'Thresh lancia una lanterna, che i suoi alleati possono afferrare per essere tirati verso Thresh e ottenere uno scudo temporaneo.', 'W', 11, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ThreshW.png\r\n'),
(43, 'Flay', 'Thresh colpisce tutti i nemici vicini con il suo corno, respingendoli nella direzione del colpo.', 'E', 11, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ThreshE.png\r\n'),
(44, 'The Box', 'Thresh evoca una serie di muri intangibili intorno a se stesso, infliggendo danni magici e rallentando i nemici che li attraversano.', 'R', 11, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/ThreshRPenta.png\r\n'),
(45, 'Ranger\'s Focus', 'Ashe prende la mira con il suo arco, ottenendo una serie di frecce infuocate che infliggono danni aumentati e rallentano i nemici colpiti.', 'Q', 12, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AsheQ.png\r\n'),
(46, 'Volley', 'Ashe scaglia una serie di frecce nell area bersagliata, infliggendo danni fisici e rallentando i nemici colpiti.', 'W', 12, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/Volley.png\r\n'),
(47, 'Hawkshot', 'Ashe scaglia un falco nella direzione desiderata, ottenendo una visione della zona in cui atterra.', 'E', 12, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AsheSpiritOfTheHawk.png\r\n'),
(48, 'Enchanted Crystal Arrow', 'Ashe scaglia una freccia di cristallo incantata in una direzione specifica, che infligge danni magici e stordisce il primo nemico colpito per un lungo periodo.', 'R', 12, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/EnchantedCrystalArrow.png\r\n'),
(49, 'Seismic Shard', 'Malphite scaglia un proiettile di roccia, infliggendo danni magici al primo nemico colpito e rallentandolo.', 'Q', 13, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/SeismicShard.png\r\n'),
(50, 'Thunderclap', 'Malphite batte il terreno circostante, infliggendo danni fisici ai nemici nelle vicinanze e riducendo la loro velocità di attacco per un breve periodo.', 'W', 13, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/Obduracy.png\r\n'),
(51, 'Ground Slam', 'Malphite colpisce il terreno con il suo pugno, infliggendo danni fisici ai nemici nelle vicinanze e riducendo la loro velocità di movimento per un breve periodo.', 'E', 13, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/Landslide.png\r\n'),
(52, 'Unstoppable Force', 'Malphite si scaglia verso il bersaglio, infliggendo danni magici e sbattendo in aria tutti i nemici circostanti.', 'R', 13, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/UFSlash.png\r\n'),
(53, 'Disintegrate', 'Annie scaglia un proiettile di fuoco, infliggendo danni magici al primo nemico colpito. Se Disintegrate uccide il bersaglio, il costo del mana viene restituito.', 'Q', 14, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AnnieQ.png\r\n'),
(54, 'Incinerate', 'Annie evoca un onda di fuoco, infliggendo danni magici ai nemici nelle vicinanze.', 'W', 14, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AnnieW.png\r\n'),
(55, 'Molten Shield', 'Annie si copre di fuoco, ottenendo un bonus di armatura e resistenza magica per un breve periodo.', 'E', 14, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AnnieE.png\r\n'),
(56, 'Summon: Tibbers', 'Annie evoca il suo orsacchiotto di peluche gigante, che prende vita e attacca i nemici nelle vicinanze. Tibbers può essere controllato da Annie.', 'R', 14, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AnnieR.png\r\n'),
(57, 'Alpha Strike', 'Master Yi balza tra i nemici circostanti, infliggendo danni fisici e ottenendo una riduzione del cooldown delle sue abilità se elimina un bersaglio.', 'Q', 15, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AlphaStrike.png\r\n'),
(58, 'Meditate', 'Master Yi si mette in meditazione, rigenerando rapidamente la sua salute e aumentando temporaneamente la sua difesa.', 'W', 15, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/Meditate.png\r\n'),
(59, 'Wuju Style', 'Master Yi affila la sua spada, ottenendo un bonus di danni fisici per un periodo di tempo.', 'E', 15, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/WujuStyle.png\r\n'),
(60, 'Highlander', 'Master Yi entra in uno stato di trance, ottenendo un bonus di velocità di movimento e attacco, e diventando immune ai rallentamenti.', 'R', 15, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/Highlander.png\r\n'),
(61, 'Five Point Strike', 'Akali scaglia cinque shuriken verso il bersaglio, infliggendo danni magici e guadagnando una quantità di energia.', 'Q', 16, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AkaliQ.png\r\n'),
(62, 'Twilight Shroud', 'Akali lancia un ombra nell area bersagliata, ottenendo invisibilità e velocità di movimento aggiuntive mentre si trova nell area.', 'W', 16, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AkaliW.png\r\n'),
(63, 'Shuriken Flip', 'Akali balza attraverso il bersaglio, infliggendo danni magici e attivando Five Point Strike su impatto.', 'E', 16, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AkaliE.png\r\n'),
(64, 'Perfect Execution', 'Akali scatena due cerchi di fuoco, infliggendo danni magici ai nemici all interno. L abilità può essere attivata una seconda volta per saltare in un area bersagliata.', 'R', 16, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/AkaliR.png\r\n'),
(65, 'Lunge', 'Fiora balza verso il bersaglio, infliggendo danni fisici e applicando effetti aggiuntivi se colpisce l area vitale di un nemico.', 'Q', 17, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/FioraQ.png\r\n'),
(66, 'Riposte', 'Fiora contra i prossimi attacchi nemici, infliggendo danni fisici e rallentando il bersaglio se blocca un attacco.', 'W', 17, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/FioraW.png\r\n'),
(67, 'Bladework', 'Fiora migliora il suo attacco successivo, infliggendo danni aggiuntivi e applicando effetti aggiuntivi se colpisce l area vitale di un nemico.', 'E', 17, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/FioraE.png\r\n'),
(68, 'Grand Challenge', 'Fiora rivela l area vitale di tutti i nemici circostanti e infligge danni veri aggiuntivi a qualsiasi nemico colpito dall abilità.', 'R', 17, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/FioraR.png\r\n'),
(69, 'Whisper', 'Jhin spara un bossolo magico a un nemico. Può colpire fino a quattro bersagli e aumenta i suoi danni ogni volta che uccide.', 'Q', 18, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JhinQ.png\r\n'),
(70, 'Captive Audience', 'Jhin brandisce il suo bastone, sparando un singolo colpo con una gittata incredibile. Se il bersaglio era stato colpito di recente dagli alleati di Jhin, dalle trappole di loto o dagli attacchi base, viene immobilizzato.', 'W', 18, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JhinW.png\r\n'),
(71, 'Deadly Flourish', 'Jhin piazza una trappola di loto invisibile che sboccia quando viene calpestata. Rallenta i nemici nelle vicinanze per poi infliggere danni con un\'esplosione di petali taglienti.', 'E', 18, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JhinE.png\r\n'),
(72, 'Curtain Call', 'Jhin si mette in posizione e scaglia quattro proiettili ad alto calibro, infliggendo danni fisici elevati a ogni nemico colpito. Il quarto proiettile colpisce con forza incrementata e ignora una percentuale della difesa.', 'R', 18, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/JhinR.png\r\n'),
(73, 'Blooming Burst', 'Neeko lancia un seme, che esplode dopo un breve periodo infliggendo danni magici ai nemici circostanti.', 'Q', 19, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/NeekoQ.png\r\n'),
(74, 'Shapesplitter', 'Neeko si trasforma in un campione alleato, ottenendo una breve scorta di velocità di movimento aggiuntiva. Al termine della trasformazione, Neeko guadagna un scudo temporaneo.', 'W', 19, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/NeekoW.png\r\n'),
(75, 'Tangle-Barbs', 'Neeko lancia delle spine, radunando e immobilizzando il primo nemico colpito dopo un breve periodo.', 'E', 19, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/NeekoE.png\r\n'),
(76, 'Pop Blossom', 'Neeko salta nell aria e si camuffa, quindi si schianta a terra, infliggendo danni magici e stordendo i nemici circostanti.', 'R', 19, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/NeekoR.png\r\n'),
(77, 'Broken Wings', 'Riven balza in avanti, infliggendo danni fisici ai nemici nelle vicinanze. Questa abilità può essere attivata fino a tre volte consecutivamente, con la terza attivazione che infligge danni aggiuntivi.', 'Q', 20, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/RivenTriCleave.png\r\n'),
(78, 'Ki Burst', 'Riven sbatte il terreno con la sua spada, infliggendo danni fisici ai nemici nelle vicinanze e stordendoli per un breve periodo.', 'W', 20, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/RivenMartyr.png\r\n'),
(79, 'Valor', 'Riven scaglia il suo scudo, ottenendo uno scudo temporaneo e avvicinandosi al bersaglio designato.', 'E', 20, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/RivenFeint.png\r\n'),
(80, 'Blade of the Exile/Wind Slash', 'Riven potenzia la sua spada per un breve periodo, ottenendo un bonus di danni fisici e attivando Wind Slash, un abilità finale che infligge danni ai nemici basati sulla loro salute mancante.', 'R', 20, 'https://ddragon.leagueoflegends.com/cdn/14.9.1/img/spell/RivenFengShuiEngine.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `champions`
--

CREATE TABLE `champions` (
  `ChampionID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `Difficulty` int(11) DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `champions`
--

INSERT INTO `champions` (`ChampionID`, `Name`, `Description`, `Difficulty`, `ImageURL`, `Price`) VALUES
(1, 'Ahri', 'Ahri è un essere mitico con una predilezione per le anime umane, che le ruba con estrema grazia.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ahri_0.jpg', 6300),
(2, 'Ezreal', 'Ezreal è un abile esploratore, con un talento innato per trovare tesori nascosti.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ezreal_0.jpg', 4800),
(3, 'Darius', 'Darius è un guerriero temuto, noto per la sua imponente ascia e la sua implacabile ferocia in battaglia.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Darius_0.jpg', 6300),
(4, 'Lux', 'Lux è un mago luminoso, con il potere di controllare la luce stessa per difendere o danneggiare i suoi avversari.', 1, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Lux_0.jpg', 3150),
(5, 'Yasuo', 'Yasuo è un abile spadaccino, con un\'abilità leggendaria nel maneggiare il vento per proteggersi o attaccare i suoi nemici.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Yasuo_0.jpg', 6300),
(6, 'Jinx', 'Jinx è una maniaca del caos, con una passione per le esplosioni e il caos totale, pronta a seminare distruzione ovunque vada.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jinx_0.jpg', 6300),
(7, 'Garen', 'Garen è un valoroso guerriero Demaciano, con una passione per la giustizia e una spada che taglia via i nemici.', 1, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Garen_0.jpg', 4500),
(8, 'Zed', 'Zed è un assassino delle ombre, con un potere oscuro che gli consente di sfuggire alla vista dei suoi nemici e infliggere danni letali.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Zed_0.jpg', 6300),
(9, 'Vayne', 'Vayne è una cacciatrice di mostri, con un abilità straordinaria nel cacciare e annientare nemici potenti con la sua balestra pesante.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Vayne_0.jpg', 4800),
(10, 'Lee Sin', 'Lee Sin è un monaco cieco, ma ha affinato i suoi sensi fino all estremo, diventando un maestro del combattimento corpo a corpo e delle arti marziali.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/LeeSin_0.jpg', 4800),
(11, 'Thresh', 'Thresh è un custode delle anime, con la capacità di catturare le anime dei suoi nemici e utilizzarle contro di loro.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Thresh_0.jpg', 6300),
(12, 'Ashe', 'Ashe è una freccia gelida, con una precisione impeccabile nell arco e la capacità di scatenare una tempesta di freccie gelide contro i suoi nemici.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ashe_0.jpg', 4500),
(13, 'Malphite', 'Malphite è una montagna vivente, con un corpo di pietra che gli conferisce una resistenza sovrumana e la capacità di causare distruzione con i suoi colpi.', 1, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Malphite_0.jpg', 1350),
(14, 'Annie', 'Annie è una bambina maga, con un potere incendiario che le consente di evocare un gigantesco orso di peluche infuocato per combattere al suo fianco.', 1, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Annie_0.jpg', 4500),
(15, 'Master Yi', 'Master Yi è un maestro del Wuju, con la capacità di scatenare rapidi attacchi e canalizzare l energia vitale per guarire le sue ferite.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/MasterYi_0.jpg', 4500),
(16, 'Akali', 'Akali è un assassina dell ombra, con la capacità di nascondersi nella nebbia e scatenare attacchi rapidi e letali contro i suoi nemici.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Akali_0.jpg', 6300),
(17, 'Fiora', 'Fiora è una maestra della spada, con la capacità di prevedere i movimenti dei suoi nemici e contrattaccare con precisione chirurgica.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Fiora_0.jpg', 4800),
(18, 'Jhin', 'Jhin è un assassino psicotico, con una predilezione per l arte del massacro e una passione per l estetica nei suoi omicidi.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jhin_0.jpg', 6300),
(19, 'Neeko', 'Neeko è una camaleonte, con la capacità di trasformarsi in chiunque o qualsiasi cosa le piaccia, ingannando i suoi nemici con il suo ingegno e il suo fascino.', 3, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Neeko_0.jpg', 6300),
(20, 'Riven', 'Riven è una spadaccina errante, con un passato oscuro ma un talento innato nel maneggiare la sua spada rossa con maestria.', 2, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Riven_0.jpg', 4800);

-- --------------------------------------------------------

--
-- Struttura della tabella `ch_roles`
--

CREATE TABLE `ch_roles` (
  `LinkID` int(11) NOT NULL,
  `ChampionID` int(11) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ch_roles`
--

INSERT INTO `ch_roles` (`LinkID`, `ChampionID`, `RoleID`) VALUES
(21, 1, 1),
(22, 1, 2),
(23, 2, 1),
(24, 2, 3),
(25, 3, 5),
(26, 3, 6),
(27, 4, 1),
(28, 4, 4),
(29, 5, 5),
(30, 5, 2),
(31, 6, 3),
(32, 7, 5),
(33, 7, 6),
(34, 8, 2),
(35, 9, 3),
(36, 10, 5),
(37, 10, 6),
(38, 11, 4),
(39, 12, 3),
(40, 13, 6),
(41, 14, 1),
(42, 15, 5),
(43, 16, 2),
(44, 17, 5),
(45, 18, 3),
(46, 19, 1),
(47, 19, 4),
(48, 20, 5),
(49, 20, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `leaderboard`
--

CREATE TABLE `leaderboard` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `punteggio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `nome`, `punteggio`) VALUES
(1, 'pippo', 100),
(2, 'plputo', 100),
(3, 'paperino69', 100),
(0, 'p1', 500),
(0, '22', 500);

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--

CREATE TABLE `roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`) VALUES
(1, 'Mage'),
(2, 'Assassin'),
(3, 'Marksman'),
(4, 'Support'),
(5, 'Fighter'),
(6, 'Tank');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`AbilityID`),
  ADD KEY `ChampionID` (`ChampionID`);

--
-- Indici per le tabelle `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`ChampionID`);

--
-- Indici per le tabelle `ch_roles`
--
ALTER TABLE `ch_roles`
  ADD PRIMARY KEY (`LinkID`),
  ADD KEY `ChampionID` (`ChampionID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `abilities`
--
ALTER TABLE `abilities`
  MODIFY `AbilityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT per la tabella `champions`
--
ALTER TABLE `champions`
  MODIFY `ChampionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `ch_roles`
--
ALTER TABLE `ch_roles`
  MODIFY `LinkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `abilities`
--
ALTER TABLE `abilities`
  ADD CONSTRAINT `abilities_ibfk_1` FOREIGN KEY (`ChampionID`) REFERENCES `champions` (`ChampionID`);

--
-- Limiti per la tabella `ch_roles`
--
ALTER TABLE `ch_roles`
  ADD CONSTRAINT `ch_roles_ibfk_1` FOREIGN KEY (`ChampionID`) REFERENCES `champions` (`ChampionID`),
  ADD CONSTRAINT `ch_roles_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
