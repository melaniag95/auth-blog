-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 12, 2021 alle 19:23
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `id` int(11) NOT NULL,
  `titolo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autore` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `data_insert` date NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`id`, `titolo`, `autore`, `descrizione`, `testo`, `category_id`, `data_insert`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Sei domande sul passaporto vaccinale', 'Gary Dagorn', 'Cos\'è il passaporto vaccinale? Quale sarebbe la sua utilità nel mondo contemporaneo? Scopriamo i limiti ed i vantaggi di questo nuovo strumento.', '<p>Tedeschi in Spagna, olandesi in Grecia e francesi in Italia? Una cartolina del “mondo di prima” che potrebbe tornare d’attualità quest’estate se la vaccinazione accelererà e se, al contrario delle divisioni del 2020, i paesi europei si metteranno d’accordo sulle condizioni di entrata nei loro territori.</p>\r\n<br>\r\n<p>È in quest’ottica che la Commissione europea ha annunciato il 1 marzo la presentazione di un progetto di “passaporto vaccinale” entro questo mese. La Francia e la Germania, che inizialmente consideravano prematuro un dispositivo del genere, ora sembrano interessate, mentre altri paesi dell’Ue stanno già sperimentando certificati sanitari di vario tipo.</p>\r\n<br>\r\n<p>Il progetto solleva diverse questioni, sia dal punto di vista della sua fattibilità al livello europeo sia sulla sua efficacia da un punto di vista sanitario. Cerchiamo di fare il punto.</p>', 4, '2021-03-11', '/immagini/202103/160758md.jpg', NULL, '2021-03-11 18:20:28'),
(2, 'Piccole alternative a colossi come JustEat, Netflix e Amazon', 'Samuele Cafasso', 'La crescita è stata esponenziale durante il lockdown. Siamo ancora in grado di cambiare?', '<p>Il mercoledì sera sui tavoli dove fino a un anno fa il ristorante Rob de matt serviva gli aperitivi, ora ci sono delle grandi cassette di verdure e buste con formaggi e carne: sono i prodotti a filiera corta distribuiti nel quartiere di Dergano, a Milano, attraverso l’app L’Alveare che dice sì, che mette insieme gruppi di acquisto per aiutare gli agricoltori.</p>\r\n<br> \r\n<p>Il lunedì, invece, è dedicato alla preparazione dei pasti per i senzatetto. Intanto, si lavora a SoDe (che sta per Social delivery), un progetto di consegne a domicilio che vuole creare un modello diverso rispetto a quello delle grandi multinazionali. Milano è la città perfetta per sperimentarlo: colpita duramente dalla pandemia, ha visto cambiare in poco tempo il tessuto commerciale e l’offerta culturale, dove ora giocano un ruolo di primo piano piattaforme come Amazon, Netflix, Deliveroo, Glovo.</p>\r\n<br>\r\n<p>SoDe nasce da un’idea piuttosto semplice: creare una realtà che offra a chi fa le consegne contratti stabili, mezzi e formazione adeguata. I costi saranno sostenuti dai promotori del servizio, ma in parte anche dai clienti: al momento di pagare, le persone potranno pagare il prezzo di mercato oppure “il ‘costo equo effettivo’ della consegna, cioè quanto effettivamente costerebbe la consegna dei prodotti acquistati per un rider con un contratto subordinato e le giuste tutele”. La scommessa non è scaricare tutto sul consumatore ma educarlo a un uso consapevole delle consegne a domicilio: il comune di Milano sostiene il progetto investendo 37.500 euro e il crowdfunding, ancora in corso, ha già raggiunto l’obiettivo dei 25mila euro.</p>\r\n<br>\r\n<p>“Il cibo per noi è sempre stato un modo per fare comunità: prima con gli aperitivi e il ristorante, durante il lockdown con il sostegno alle persone che hanno avuto più bisogno. Così ci è venuta l’idea di SoDe”, spiegano Francesco Purpura e Lucia Borso, due dei fondatori di Rob de matt, l’associazione di promozione sociale che gestisce questo ristorante un po’ atipico nella periferia nord di Milano. Aperto nel 2017, nasceva con l’obiettivo di dare lavoro a chi ha fragilità psichiche, a ex detenuti, a persone in carico ai servizi sociali. In tre anni ha fatto fare sessanta tirocini. Oggi il trenta per cento dei suoi lavoratori arriva da queste esperienze. “La nostra idea è sempre stata quella di creare un luogo che avesse un valore sociale ma dove fosse anche bello fermarsi”.<p>', 4, '2021-03-10', '/immagini/202103/160725md.jpg', NULL, '2021-03-11 18:19:57'),
(3, 'La violenza senza fine della polizia in Guinea', 'Davide Lemmi, Marco Simoncelli', 'Davide Lemmi e Marco Simoncelli ci portano all\'interno di un paese in cui la violenza da parte delle forze dell\'ordine non ha fine.', '<p>La Guinea è un paese da tempo instabile e negli ultimi decenni ci sono stati molti abusi da parte delle forze dell’ordine per reprimere manifestazioni e altre forme di dissenso. Le organizzazioni in difesa dei diritti umani denunciano uccisioni, arresti arbitrari, uso della violenza contro i manifestanti, torture e minacce.</p>\r\n<br>\r\n<p>Dalla fine del 2019 la situazione nel paese dell’Africa occidentale è peggiorata, dopo la decisione del presidente Alpha Condé di modificare la costituzione per potersi candidare a un terzo mandato. Le manifestazioni contro la sua candidatura sono state represse con violenza e a luglio del 2020 si registravano almeno cinquanta morti, 200 feriti e decine di arresti arbitrari tra i manifestanti.</p>\r\n<br>\r\n<p>Il 18 ottobre 2020 Condé ha vinto le elezioni, che sono state caratterizzate da irregolarità e da nuove violenze. Secondo Amnesty international gli scontri avvenuti nei giorni successivi allo scrutinio hanno causato altri 16 morti, mentre gli attivisti denunciano una trentina di vittime, anche tra le forze dell’ordine, e centinaia di arresti.</p>', 2, '2021-03-09', '/immagini/202103/immagine20210311190715.png', NULL, '2021-03-11 18:07:17'),
(5, 'La stagione dei monsoni', 'Maysa Moroni', 'Il fotografo italiano Camillo Pasquarelli apre il suo libro Monsoons never cross the mountains (Witty Books 2020) con la poesia Le stagioni delle pianure del poeta kashmiro-americano Agha Shahid Ali.', '<p>Pasquarelli ha viaggiato per cinque anni nel Kashmir documentando un conflitto definito “a bassa intensità”, ma che ha provocato decine di migliaia di morti. Ha seguito le proteste della popolazione a maggioranza musulmana che chiede libertà – azadi in lingua urdu e slogan dei separatisti – al governo indiano.</p>\r\n<br>\r\n<p>Quello della popolazione kashmira è un dolore collettivo che spinge verso pratiche religiose peculiari, in una disperata ricerca di tregua: la venerazione di chi ha sacrificato la propria vita per l’azadi diventa la prosecuzione del culto popolare dei santi sufi deceduti.</p>\r\n<br>\r\n<p>Con questo lavoro Pasquarelli riflette anche sul ruolo di fotogiornalista: “Se proviamo a fare una ricerca per immagini su Google digitando ‘Kashmir’ appariranno principalmente immagini di soldati, filo spinato e scontri. Come fotografiamo una zona di guerra? Come rappresentiamo la violenza e la sofferenza? Come gestisco la violenza del mio sguardo da privilegiato uomo bianco europeo?”.</p>\r\n<br>\r\n<p>Nel suo ultimo viaggio nel paese Pasquarelli ha provato a superare i canoni del fotogiornalismo classico alla ricerca di un altro punto di vista e ha deciso di rappresentare il paesaggio emotivo della valle del Kashmir attraverso gli occhi dei bambini, coinvolti in questo ciclo fin dall’inizio della loro vita.</p>\r\n<br>\r\n<p>Pasquarelli presenterà il suo libro in diretta Facebook sulla pagina della libreria Leporello di Roma il 13 marzo alle ore 19.</p>\r\n<br>\r\n\r\n<p>Senza diritti</p>\r\n<p>Dopo la prima guerra tra India e Pakistan, nel 1949 le Nazioni Unite intervennero con una risoluzione che sollecitava un plebiscito attraverso il quale gli abitanti avrebbero deciso a quale paese unirsi. Da allora non è mai stata convocata nessuna consultazione. Nel 2019 il governo indiano ha fatto approvare dal parlamento la revoca dell’articolo 370 della costituzione, che da più di settant’anni garantiva al Jammu e Kashmir uno status speciale all’interno dell’unione indiana. Nonostante le continue proteste, le repressioni e le numerose violazioni dei diritti umani perpetrate dalle forze di sicurezza indiane, la situazione non è cambiata.</p>', 3, '2021-03-11', '/immagini/202103/160744hd.jpg', '2021-03-11 17:40:39', '2021-03-11 17:46:24'),
(6, 'Ingredienti', 'Giovanni De Mauro', 'Zeynep Tufekci è nata in Turchia e insegna sociologia all’università del North Carolina a Chapel Hill, negli Stati Uniti. Si occupa dell’impatto sociale delle tecnologie.', '<p>Zeynep Tufekci è nata in Turchia e insegna sociologia all’università del North Carolina a Chapel Hill, negli Stati Uniti. Si occupa dell’impatto sociale delle tecnologie e nell’ultimo anno ha scritto alcuni degli articoli più lucidi sulla pandemia. In un ritratto uscito sul New York Times, Ben Smith l’ha definita una persona che “ha l’abitudine di aver ragione sulle cose importanti”. Il suo libro del 2017 si intitola Twitter and tear gas (Twitter e gas lacrimogeni), è sulla forza e la fragilità delle proteste in rete e non è ancora tradotto in Italia.</p>\r\n\r\n<p>Di Tufekci abbiamo già pubblicato due articoli. Il primo, uscito alla fine di agosto, era sull’importanza dell’aerazione nella prevenzione del covid. Il secondo, a ottobre, spiegava perché gli “eventi superdiffusori” sono stati il principale motore della pandemia. Il terzo, che pubblichiamo questa settimana, descrive gli errori che abbiamo fatto finora e spiega perché, malgrado tutto, dobbiamo essere ottimisti.\r\n<br>\r\nTufekci racconta che deve molto a un’infanzia che non augurerebbe a nessuno e a tre ingredienti: un punto di vista internazionale acquisito rimbalzando tra Turchia e Belgio quand’era bambina e poi lavorando negli Stati Uniti; una conoscenza che attraversa le aree tematiche e le discipline accademiche, frutto del suo essere una programmatrice informatica che si è avvicinata alla sociologia; un’abitudine a ragionare su sistemi complessi. Ma tutto è cominciato crescendo a Istanbul “in una casa infelice” con una madre alcolizzata.</p>\r\n<p>A metà degli anni novanta, ancora adolescente, è andata via e ha trovato lavoro all’Ibm. La sua vita è cambiata quando ha scoperto una mailing list sul movimento zapatista, la mobilitazione degli indigeni messicani contro la privatizzazione delle terre. Nel 1998 è andata in Chiapas. La rete di relazioni che ha costruito in quegli anni è stata fondamentale. “Tufekci è l’unica persona con cui ho mai parlato convinta che l’era moderna sia cominciata con la solidarietà zapatista”, ha scritto Ben Smith. “Per lei è stato un primo bagliore della ‘globalizzazione dal basso’”.</p>', 2, '2021-03-02', '/immagini/202103/160762md.jpg', '2021-03-12 01:12:02', '2021-03-12 13:27:00'),
(7, 'A Sanremo la rivoluzione non vince mai', 'Claudia Durastanti', 'Probabilmente quello che ricorderemo di più di questa edizione di Sanremo saranno le giacche larghe indossate dalle cantanti e dai cantanti in gara.', '<p>Nella versione monopetto o doppio petto sempre più di ordinanza, sono giacche sformate, dai tessuti nuovi ma dalle linee vecchie. Le hanno indossate quasi tutti i concorrenti: una questione di moda e di cosa suggeriscono di indossare i marchi là fuori, ovviamente, ma non ricordo un’edizione del festival in cui ci fosse una tendenza sartoriale così uniforme.</p>\r\n\r\n<p>Un tempo l’abbigliamento e la mise-en-scène erano utili a veicolare una differenza, a creare una rottura, a dare qualche informazione in più su chi stava cantando e perché lo faceva, scegliendo quei suoni e quelle parole. Ora lo stile a Sanremo non serve quasi più a niente. Non serve a distinguere l’underground dal mainstream, il nazional-popolare dalla musica di ricerca, e in qualche modo le performance di Achille Lauro servono a portare questo concetto alle estreme conseguenze, fino a disintegrarlo completamente: sarà possibile, domani, cantare Io tu e le rose di Orietta Berti vestita da Diamanda Galás o Lydia Lunch.</p>\r\n\r\n<p>In questa divaricazione ostentata e progressiva tra forma e contenuto, tra il vestito e quello che c’è sotto – forse è davvero punk dimostrare che sotto c’è il niente –, gli ascoltatori restano disorientati e i simboli e le divise perdono di significato. E così, mai come nell’edizione di quest’anno, la storia, le genealogie, le carriere, i percorsi, le gavette e le credenziali di ognuno si opacizzano a vantaggio di un singolo istante, di una singola performance in un contesto limitato, in cui non conta troppo cos’hai fatto prima e cosa farai dopo: essendo quasi tutti i concorrenti in gara così simili nella loro presentazione, per percepire una differenza bisogna affidarsi ai suoni e alle parole. Per farla breve, all’unica cosa a cui il festival s’interessa, nella sua inossidabilità che finge di sfruttare la moda e il costume, e perfino la storia di un paese, per mandare avanti invece l’unità minima attorno a cui tutto si muove: “La bella canzone italiana”.</p>', 3, '2021-03-04', '/immagini/202103/160629md.jpg', '2021-03-12 01:13:55', '2021-03-12 01:13:55'),
(8, 'Russia e Cina marciano insieme anche sulla Luna', 'Pierre Haski', 'È una di quelle informazioni che possono sembrare irrilevanti o troppo lontane dalle nostre preoccupazioni attuali, ma che invece potrebbero segnare un’evoluzione decisiva.', '<p>Il 9 marzo Russia e Cina hanno annunciato di aver firmato un accordo di principio per la costruzione in comune di una stazione lunare permanente, in superficie o in orbita.</p>\r\n\r\n<p>I due paesi hanno proclamato che il loro progetto è aperto a tutti i paesi interessati, ribadendo il proprio sostegno all’”esplorazione pacifica dello spazio”. Tuttavia esiste innegabilmente una dimensione geopolitica forte quando le due principali potenze che formano una sorta di “fronte del rifiuto” antioccidentale si uniscono su un tema importante come lo spazio.</p>\r\n\r\n<p>In primo luogo si tratta di una scelta russa che segna un’inversione di rotta rispetto alla storia recente. Alla rivalità spaziale tra Stati Uniti e Unione Sovietica ai tempi della guerra fredda era seguita un’epoca di collaborazione. Oggi la Stazione spaziale internazionale accoglie cosmonauti statunitensi, russi e di altre nazionalità, come il francese Thomas Pesquet che partirà il mese prossimo.</p>', 2, '2021-03-01', '/immagini/202103/160720md.jpg', '2021-03-12 01:16:10', '2021-03-12 01:16:10');

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli_foto`
--

CREATE TABLE `articoli_foto` (
  `id` int(11) NOT NULL,
  `articolo_id` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli_foto`
--

INSERT INTO `articoli_foto` (`id`, `articolo_id`, `foto`, `created_at`, `updated_at`) VALUES
(1, 8, '/immagini/202103/160720md.jpg', '2021-03-12 17:46:28', '2021-03-12 17:46:28'),
(2, 8, '/immagini/202103/xiputin720x390.jpg', '2021-03-12 17:58:14', '2021-03-12 17:58:14'),
(3, 8, '/immagini/202103/slunaaccordorussiastazionecinaoga3.jpg', '2021-03-12 17:58:20', '2021-03-12 17:58:20'),
(4, 8, '/immagini/202103/change5lunacina1024x683.jpg', '2021-03-12 17:58:33', '2021-03-12 17:58:33'),
(5, 8, '/immagini/202103/091459826edd51f1fbb7a4a0199af5737a6218a5d.jpg', '2021-03-12 18:13:18', '2021-03-12 18:13:18'),
(6, 6, '/immagini/202103/160762md.jpg', '2021-03-12 18:14:33', '2021-03-12 18:14:33'),
(7, 7, '/immagini/202103/160629md.jpg', '2021-03-12 18:14:49', '2021-03-12 18:14:49'),
(8, 7, '/immagini/202103/maneskin4886x494.jpg', '2021-03-12 18:16:03', '2021-03-12 18:16:03'),
(9, 3, '/immagini/202103/f61e2758a042586135494ae181bfbade.jpg', '2021-03-12 18:17:29', '2021-03-12 18:17:29'),
(10, 3, '/immagini/202103/trasferimento.jfif', '2021-03-12 18:17:34', '2021-03-12 18:17:34'),
(11, 3, '/immagini/202103/160718sd.png', '2021-03-12 18:17:39', '2021-03-12 18:17:39'),
(12, 2, '/immagini/202103/uber12002690x362.jpg', '2021-03-12 18:18:45', '2021-03-12 18:18:45'),
(13, 2, '/immagini/202103/riders1021x580.jpg', '2021-03-12 18:18:51', '2021-03-12 18:18:51'),
(14, 2, '/immagini/202103/unnamed.jpg', '2021-03-12 18:19:44', '2021-03-12 18:19:44'),
(15, 2, '/immagini/202103/ridersunionciclofattorinidire2.jpg', '2021-03-12 18:19:53', '2021-03-12 18:19:53'),
(16, 1, '/immagini/202103/ursulavonderleyen1200690x362.jpg', '2021-03-12 18:21:03', '2021-03-12 18:21:03'),
(17, 1, '/immagini/202103/vaccinocoronavirustimbroid40793.jpg', '2021-03-12 18:21:09', '2021-03-12 18:21:09'),
(18, 1, '/immagini/202103/passaportovaccinalemondo.jpg', '2021-03-12 18:21:14', '2021-03-12 18:21:14'),
(19, 5, '/immagini/202103/5d82080124000012277db3cc.jfif', '2021-03-12 18:22:07', '2021-03-12 18:22:07'),
(20, 5, '/immagini/202103/camillopasquarellithevalleyofshadowsmostraofficinefotograficheroma21024x724.jpg', '2021-03-12 18:22:13', '2021-03-12 18:22:13'),
(21, 5, '/immagini/202103/endlesswinter03.jpg', '2021-03-12 18:22:20', '2021-03-12 18:22:20');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Politica', NULL, NULL),
(2, 'Esteri', NULL, NULL),
(3, 'Cultura e spettacolo', NULL, NULL),
(4, 'Attualità', NULL, NULL),
(5, 'Sport', NULL, NULL),
(6, 'Interni', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_12_142504_create_categories_table', 2),
(5, '2021_03_12_160238_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Carmela', 'carmelaguida@gmail.com', NULL, '$2y$10$zNK5aSBV/obZ3gh5rmFdO.RW3DEIRzcFE5Ter3.69MRkAJIkRsqO6', NULL, '2021-03-11 14:49:30', '2021-03-11 14:49:30');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `articoli_foto`
--
ALTER TABLE `articoli_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `articoli_foto`
--
ALTER TABLE `articoli_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
