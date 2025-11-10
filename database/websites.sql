-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2025 at 01:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librebusca`
--

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `site_id` int(10) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_link` varchar(100) NOT NULL,
  `site_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`site_id`, `site_title`, `site_link`, `site_description`) VALUES
(12, 'Wikipedia', 'https://www.wikipedia.org/', 'Wikipedia is a free online encyclopedia, created and edited by volunteers around the world and hosted by the Wikimedia Foundation. You can read Wikipedia in your language or choose from over 100 languages, including English, Spanish, French, Italian, Chinese, Arabic and more.'),
(21, 'Oswd', 'https://www.oswd.org/', 'Open Source Web Design is a platform for sharing standards-compliant free web design templates.'),
(23, 'Celebrity Heights - How tall are Celebrities?', 'https://www.celebheights.com/', 'Discover real Celebrity Heights. Join the discussion and Vote on the heights of over 14000 Celebrities, including 1300 fan photos showing how tall they are.'),
(27, 'YouTube', 'https://www.youtube.com/', 'Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube.'),
(28, 'Desciclopédia', 'https://desciclopedia.org/', 'Desciclopédia, a enciclopédia livre de conteúdo.'),
(29, 'Blogger', 'https://www.blogger.com/', 'Publish your passions your way. Whether you’d like to share your knowledge, experiences or the latest news, create a unique and beautiful blog.'),
(30, 'WordPress', 'https://wordpress.org/', 'Open source software which you can use to easily create a beautiful website, blog, or app.'),
(31, 'Website Builder - Create a Free Website Today | Wix.com', 'https://www.wix.com/', 'Wix offers a few different ways to create your own free website, so you can choose the creation process that works best for you. Pick from 900+ designer-made templates, or use our AI website builder to create a business-ready site in no time using a conversational interface.'),
(32, 'GetNinjas', 'https://www.getninjas.com.br/', 'Encontre profissionais confiáveis para pintar, reformar, traduzir um texto, te ensinar matemática, ou também passear com seu cachorro no GetNinjas'),
(33, 'Electronics, Cars, Fashion, Collectibles & More | eBay', 'https://www.ebay.com/', 'Buy & sell electronics, cars, clothes, collectibles & more on eBay, the world\'s online marketplace. Top brands, low prices & free shipping on many items.'),
(34, 'Women\'s & Men\'s Clothing, Shop Online Fashion | SHEIN', 'https://www.shein.com/', 'From shoes to clothing, from sports equipment to accessories. All fashion inspiration & the latest trends can be found online at SHEIN.'),
(35, 'Shopee Brasil | Ofertas incríveis. Melhores preços do mercado', 'https://shopee.com.br/', 'Descubra a plataforma de compras on-line Shopee. Compre em menos de 30 segundos: a qualquer hora e em qualquer lugar. Garantia Shopee | Ofertas Relâmpago.'),
(36, 'Leading Online Shopping Platform In Southeast Asia & Taiwan | Shopee', 'https://shopee.com/', 'Shopee is the leading e-commerce online shopping platform in Southeast Asia and Taiwan. It provides customers with an easy, secure and fast online shopping experience through strong payment and logistical support.'),
(37, 'Amazon.com.br | Tudo pra você, de A a Z.', 'https://www.amazon.com.br/', 'Encontre o que precisa na Amazon. Ofertas em Livros, Kindle, Echo com Alexa, Fire TV, Eletrônicos, Bebidas, Casa, Beleza e mais. Frete GRÁTIS com Amazon Prime.'),
(38, 'Amazon.com. Spend less. Smile more.', 'https://www.amazon.com/', 'Enjoy low prices and great deals on the largest selection of everyday essentials and other products, including fashion, home, beauty, electronics, Alexa Devices, sporting goods, toys, automotive, pets, baby, books, video games, musical instruments, office supplies, and more.'),
(39, 'Prime Video', 'https://www.primevideo.com/', 'Watch movies and TV shows on the web or on your devices with Prime Video app. Enjoy exclusive and award-winning content with an Amazon Prime membership or a Prime Video subscription.'),
(40, 'Prime Gaming | Discover, download, and play games', 'https://gaming.amazon.com/', 'Enjoy games and more gaming extras every month with Amazon Prime.'),
(41, 'VK Sign in | Welcome! - ВКонтакте', 'https://vk.com/', 'VK is the largest European social network with more than 100 million active users. Our goal is to keep old friends, ex-classmates, neighbors and colleagues in touch.'),
(42, 'Социальная сеть Одноклассники. Общение с друзьями в ОК. Ваше место встречи с одноклассниками', 'https://ok.ru/', 'Одноклассники.ру это социальная сеть, где вы можете найти своих старых друзей. Общение, онлайн игры, подарки и открытки для друзей. Приходите в ОК, делитесь своими эмоциями с друзьями, коллегами и одноклассниками.'),
(43, 'Watch | Twitch.tv', 'https://www.twitch.tv/', 'Explore Twitch.tv, the leading live streaming platform for gaming, music, cooking, and more, with thousands of channels to engage with.'),
(44, 'Bitchute', 'https://www.bitchute.com/', 'Bitchute is a video service that prioritizes creators and champions users\' freedoms and privacy. BitChute is a video service that prioritizes creators and champions users\' freedoms and privacy. 🚀 Reach Millions on BitChute Today Advertise Now'),
(45, 'Rumble', 'https://rumble.com/', 'Go Ad-Free with Rumble Premium. Enjoy an ad-free viewing experience and other benefits. Learn More. Maybe Later. Rumble is your rights management video platform. Host, distribute and monetize all your professional, social and viral video.'),
(46, 'Google', 'https://www.google.com/', 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for.'),
(47, 'DuckDuckGo - Your protection, our priority.', 'https://duckduckgo.com/', 'The Internet privacy company that empowers you to seamlessly take control of your personal information online, without any tradeoffs.'),
(48, 'GitHub · Build and ship software on a single, collaborative platform', 'https://github.com/', 'GitHub is where people build software. More than 100 million people use GitHub to discover, fork, and contribute to over 420 million projects.'),
(49, 'The most-comprehensive AI-powered DevSecOps platform | GitLab', 'https://gitlab.com/', 'From planning to production, bring teams together in one application. Ship secure code more efficiently to deliver value faster.'),
(50, 'Reddit - Dive into anything', 'https://www.reddit.com/', 'Reddit is a network of communities where people can dive into their interests, hobbies and passions. There\'s a community for whatever you\'re interested in on Reddit.'),
(51, 'Twitter - Official Site', 'https://twitter.com/', 'From breaking news and entertainment to sports and politics, get the full story with all the live commentary.'),
(52, 'Facebook - log in or sign up', 'https://www.facebook.com/', 'Connect with friends and the world around you on Facebook. Forgot password? Create a Page for a celebrity, brand or business. Log into Facebook to start sharing and connecting with your friends, family, and people you know.'),
(53, 'TikTok - Make Your Day', 'https://www.tiktok.com/', 'TikTok - trends start here. On a device or on the web, viewers can watch and discover millions of personalized short videos. Download the app to get started.'),
(54, 'Government of Canada', 'https://ised-isde.canada.ca/', 'Innovation, Science and Economic Development Canada ( ISED ) works with Canadians in all areas of the economy and in all parts of the country to improve conditions for investment, enhance Canada\'s innovation performance, increase Canada\'s share of global trade and build a fair, efficient and competi'),
(55, 'FederalCorporation: Find federal corporations in Canada', 'https://federalcorporation.ca/', 'federalcorporation.ca provides open access to federal corporations registered with Corporations Canada.'),
(56, 'Open Corporates', 'https://opencorporates.com/', 'Access fresh, standardized, and auditable legal-entity data from 140+ jurisdictions. Trust OpenCorporates for reliable company information.'),
(57, 'Ahoy Pirata! - Noticias e Discussões sobre a Pirataria', 'https://ahoypirata.lat/', 'Fique por dentro das principais noticias da pirataria que acontece pelo mundo.'),
(58, 'Megathread Pirata', 'https://megathread.ahoypirata.lat/', 'Esta megathread tem como objetivo atuar como uma valiosa fonte para explorar uma ampla gama de recursos excepcionais, incluindo sites, aplicativos, ferramentas, etc.'),
(59, 'The world’s fastest framework for building websites | Hugo', 'https://gohugo.io/', 'The world’s fastest framework for building websites'),
(60, 'PAGEGRID – A flexible open source site builder.', 'https://page-grid.com/', 'A website builder for designers, editors and developers. Based on the powerful ProcessWire CMS. Try PAGEGRID for free.'),
(61, 'Bing', 'https://www.bing.com/', 'Bing helps you turn information into action, making it faster and easier to go from searching to doing.'),
(62, 'ChatGPT', 'https://chatgpt.com/', 'ChatGPT helps you get answers, find inspiration and be more productive. It is free to use and easy to try. Just ask and ChatGPT can help with writing, learning, brainstorming and more.'),
(63, 'Bing Chat', 'https://www.bing.com/chat', 'Introducing the new AI-powered Bing with ChatGPT\'s GPT-4. Search the way you talk, text and think. Get complete answers to complex searches, chat and create.'),
(64, 'SearXNG instances', 'https://searx.space/', 'Online and offline SearXNG instances'),
(65, 'Internet for people, not profit — Mozilla', 'https://www.mozilla.org/', 'Did you know? Mozilla — the maker of Firefox — fights to keep the internet a global public resource, open and accessible to all.'),
(66, 'The browser that puts you first | Brave', 'https://brave.com/', 'The Brave browser is a fast, private and secure web browser for PC, Mac and mobile. Download now to enjoy a faster ad-free browsing experience that saves data and battery life by blocking tracking software.'),
(67, 'Private Search Engine - Brave Search', 'https://search.brave.com/', 'Brave Search uses private usage metrics to estimate overall activity and performance. You can turn off this option in Settings. Learn more. Search the Web. Privately. Truly useful results, AI-powered answers, & more. All from an independent index. No profiling, no bias, no Big Tech.'),
(68, 'LibreWolf', 'https://librewolf.net/', 'A custom version of Firefox, focused on privacy, security and freedom.'),
(69, 'Home | LibreOffice - Free and private office suite - Based on OpenOffice - Compatible with Microsoft', 'https://www.libreoffice.org/', 'Your private, free office suite. LibreOffice is a private, free and open source office suite - the successor project to OpenOffice. It\'s compatible with Microsoft Office/365 files (.doc, .docx, .xls, .xlsx, .ppt, .pptx) and is backed by a non-profit organisation.'),
(70, '7-Zip', 'https://www.7-zip.org/', '7-Zip is free software with open source. The most of the code is under the GNU LGPL license. Some parts of the code are under the BSD 3-clause License. Also there is unRAR license restriction for some parts of the code. Read 7-Zip License information.'),
(71, 'SlimeRead - Slime Read, Ler mangás manhuas webtoons online!', 'https://slimeread.com/', 'Leia Mangás, Manhwas, Manhuas e Novels Online no Slimeread. Descubra uma ampla coleção de mangás, manhwas (em português), manhuas e novels traduzidos. O Slimeread oferece leitura gratuita e fácil de suas obras favoritas em um único lugar. Explore já!'),
(72, 'Top Filmes Torrent - Baixe Filmes e Séries em HD - Grátis Torrent', 'https://topfilmestorrents.net/', 'Top Filmes Torrent oferece uma variedade incrível de filmes e séries em HD para download gratuito. Desfrute da melhor qualidade de entretenimento agora mesmo!'),
(73, 'ssreading.com.br | Reunião de fãs para fãs!', 'https://ssreading.com.br/', 'Reunião de fãs para fãs!'),
(74, 'MangaDex', 'https://mangadex.org/', 'Read manga online for free on MangaDex with no ads, high quality images and support scanlation groups!'),
(75, 'Tyrant Scans - Quadrinhos em PT BR', 'https://www.tyrantscans.com/', ''),
(76, 'Tatakae Scans', 'https://tatakaescan.com/', 'Leia na Tatakae, manhuas e webtoons em português com rapidez e comodidade!'),
(77, 'Arthur Scan', 'https://arthurscan.xyz/', 'Arthur Scan - Scan de tradução de Mangá, Manhua e Manhwa, muitas histórias divertidas, e cada tradução feita com carinho.'),
(78, 'Donghua no Sekai - Donghuas Online, Aqui Você Encontra os Melhores Animes Chineses Online', 'https://donghuanosekai.com/', 'Maior site de Donghua do Brasil, aqui você vai encontrar seu favorito donghua com a melhor equipe de tradução/revisão, venha conferir!'),
(79, 'MANGA Plus by SHUEISHA', 'https://mangaplus.shueisha.co.jp/', ''),
(80, 'IMDb: Ratings, reviews and where to watch the best movies and series', 'https://www.imdb.com/', 'IMDb is the world\'s most popular and authoritative source for movie, TV and celebrity content. Find ratings and reviews for the newest movie and TV shows. Get personalized recommendations, and learn where to watch across hundreds of streaming providers.'),
(81, 'MyAnimeList.net - Anime and Manga Database and Community', 'https://myanimelist.net/', 'Welcome to MyAnimeList, the world\'s most active online anime and manga community and database. Join the online community, create your anime and manga list, read reviews, explore the forums, follow news, and so much more!'),
(82, 'Crunchyroll: Watch Popular Anime, Play Games & Shop Online', 'https://www.crunchyroll.com/', 'Embark on an anime adventure with Crunchyroll, your ultimate destination for watching a vast collection of anime series and movies.'),
(83, 'Netflix - Watch TV Shows Online, Watch Movies Online', 'https://www.netflix.com/', 'Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more.'),
(84, 'Stream TV and Movies Live and Online | Hulu', 'https://www.hulu.com/', 'Watch TV shows and movies online. Stream TV episodes of Shōgun, Grey&#x27;s Anatomy, This Is Us, Bob&#x27;s Burgers, Brooklyn Nine-Nine, Empire, SNL, and popular movies on your favorite devices. Start your free trial now.'),
(85, 'Disney+ - Stream Unlimited Movies and TV Series', 'https://www.disneyplus.com/', 'Don\'t miss the best of Disney, Pixar, Marvel, Star Wars, National Geographic, ESPN and Star, all on Disney+.'),
(87, 'Max | The One to Watch', 'https://www.max.com/', 'Max includes: All of HBO Max: HBO series and movies, Max Originals, and select series and movies from Warner Bros., the DC Universe, Cartoon Network, the Turner Library, Looney Tunes, Adult Swim, and more.'),
(88, 'BBC Home - Breaking News, World News, US News, Sports, Business, Innovation, Climate, Culture, Trave', 'https://www.bbc.com/', 'Visit BBC for trusted reporting on the latest world and US news, sports, business, climate, innovation, culture and much more.'),
(89, 'LETRAS.MUS.BR - Letras de músicas', 'https://www.letras.mus.br/', 'O site de música mais acessado pelos brasileiros oferece letras, traduções, cifras e o melhor player para ouvir músicas e assistir clipes com legenda.'),
(90, 'Genius | Song Lyrics & Knowledge', 'https://genius.com/', 'Genius is the world\'s biggest collection of song lyrics and musical knowledge.'),
(91, 'AZLyrics - Song Lyrics from A to Z', 'https://www.azlyrics.com/', 'Find lyrics for your favorite songs at AZLyrics, a comprehensive database with lyrics from A to Z.'),
(92, 'Urban Dictionary', 'https://www.urbandictionary.com/', 'Colloquialisms used on the Internet. Urban Dictionary is a crowdsourced online dictionary for slang words and phrases, operating under the motto \"Define Your World.\"'),
(93, 'Telegram Web', 'https://web.telegram.org/index.html', 'Telegram is a cloud-based mobile and desktop messaging app with a focus on security and speed.'),
(94, 'WhatsApp Web', 'https://web.whatsapp.com/', 'Quickly send and receive WhatsApp messages right from your computer.'),
(95, 'Breaking News, Latest News and Videos | CNN', 'https://www.cnn.com/', 'View the latest news and breaking news today for U.S., world, weather, entertainment, politics and health at CNN.com.'),
(96, 'CNN Brasil | Notícias Ao Vivo do Brasil e do Mundo', 'https://www.cnnbrasil.com.br/', 'Pense bem, pense CNN - Notícias ao vivo, fatos da política nacional e internacional no maior canal de notícias do mundo!'),
(97, 'As notícias de última hora disponíveis em acesso livre em video on demande | Euronews', 'https://pt.euronews.com/', 'As notícias de úlltima hora disponíveis em acesso livre em video on demande. Mantenha-se ao corrente das últimas notícias da política europeia, da economia e do desporto na euronews'),
(98, 'g1 - O portal de notícias da Globo', 'https://g1.globo.com/', 'Últimas notícias do Brasil e do mundo, sobre política, economia, emprego, educação, saúde, meio ambiente, tecnologia, ciência, cultura e carros. Vídeos dos telejornais da TV Globo e da GloboNews.'),
(99, 'VEJA - Reportagens exclusivas, notícias, informação e opinião.', 'https://veja.abril.com.br/', 'VEJA é uma revista que traz reportagens exclusivas, notícias, informação e opinião sobre política, economia, cultura, esporte e mais. Acesse o site e confira as últimas notícias, colunas, vídeos e podcasts do VEJA.'),
(100, 'Estadão | As Últimas Notícias do Brasil e do Mundo - Estadão', 'https://www.estadao.com.br/', 'As principais e as últimas notícias do Brasil e do mundo sobre política, economia, esportes, cultura, tecnologia, estilo de vida e muito mais.'),
(101, 'UOL Notícias | Notícias do Dia no Brasil e no Mundo', 'https://noticias.uol.com.br/', 'Veja as principais notícias e manchetes do dia no Brasil e no Mundo. Leia textos e assista a vídeos de Política, Cotidiano, Crimes e mais.'),
(102, 'EL PAÍS: el periódico global', 'https://elpais.com/', 'Noticias de última hora de América Latina, México, Estados Unidos y la actualidad internacional: política, economía, deportes, cultura, sociedad, tecnología, gente, opinión, viajes, moda, televisión, los blogs y las firmas de EL PAÍS. Además especiales, vídeos, fotos, audios, gráficos, entrevistas y'),
(103, 'EL PAÍS English', 'https://english.elpais.com/', 'English version of EL PAÍS to read online: breaking news, opinion and editorial, reviews, features, science, business, culture, sports, travel, education &amp;amp; more with EL PAÍS.'),
(104, 'Terra - Seu Portal de Notícias, Diversão e Esportes', 'https://www.terra.com.br/', 'Acompanhe no Terra as últimas notícias do Brasil e do mundo sobre Entretenimento, Esportes, Tecnologia, Saúde e muito mais. Horóscopo, Receitas e Vídeos Ao Vivo'),
(105, 'The New York Times - Breaking News, US News, World News and Videos', 'https://www.nytimes.com/', 'Live news, investigations, opinion, photos and video by the journalists of The New York Times from more than 150 countries around the world. Subscribe for coverage of U.S. and international news, politics, business, technology, science, health, arts, sports and more.'),
(106, 'ABC News - Breaking News, Latest News and Videos', 'https://abcnews.go.com/', 'Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com'),
(107, 'Linhagem Geek', 'https://linhagemgeek.com.br/', 'Canal dedicado à cultura pop, oferecendo análises, críticas e informações sobre todo o universo nerd que estará sempre em nossos corações.'),
(108, 'ANCAP.SU', 'https://ancap.su/', 'Canal de notícias rápidas com viés libertário, bate papo, vlogs e outros assuntos ligados ao libertarianismo e anarcocapitalismo. Seja bem-vindo.'),
(109, 'Rotten Tomatoes: Movies | TV Shows | Movie Trailers | Reviews', 'https://www.rottentomatoes.com/', 'Rotten Tomatoes, home of the Tomatometer, is the most trusted measurement of quality for Movies & TV. The definitive site for Reviews, Trailers, Showtimes, and Tickets'),
(110, 'Revista OESTE - Negócios, Economia, Política e Agronegócio', 'https://revistaoeste.com/', 'A Revista Oeste oferece ao público informação sobre fatos relevantes na política, na economia e nos acontecimentos da atualidade, com clareza e objetividade'),
(111, 'Se Liga Nerd | Portal de conteúdo nerd sem mimimi', 'https://seliganerd.com/', 'Se Liga Nerd é o melhor portal de conteúdo geek e cultura pop para quem está cansado de mimimi e lacração. Venha com a gente!'),
(112, 'Quer saber tudo sobre os filmes, séries e quadrinhos da cultura pop? Acesse agora mesmo!', 'https://www.legiaodosherois.com.br/', 'Quer saber tudo sobre os filmes, séries e quadrinhos da cultura pop? Acesse agora mesmo!'),
(113, 'Welcome to Steam', 'https://store.steampowered.com/', 'Steam is the ultimate destination for playing, discussing, and creating games.'),
(114, 'Epic Games', 'https://www.epicgames.com/', 'Epic Games develops cutting-edge games and cross-platform game engine technology.'),
(115, 'Welcome to GOG.com | best PC games DRM-free', 'https://www.gog.com/', 'Download the best classic and new games on Windows, Mac &amp; Linux. A vast selection of titles, DRM-free, with free goodies and 30-day money-back guarantee.'),
(116, 'Roblox', 'https://www.roblox.com/', 'Roblox is a global platform that brings people together through fun.'),
(117, 'Roblox Creator Hub', 'https://create.roblox.com/', 'Unlock your imagination with Roblox Creator Hub - the ultimate platform for building and publishing games. Join a vibrant community of creators today and publish your ideas to millions of people around the world. This world is ours for the making!'),
(118, 'wikiHow: How-to instructions you can trust.', 'https://www.wikihow.com/', 'Learn how to do anything with wikiHow, the world\'s most popular how-to website. Easy, well-researched, and trustworthy instructions for everything you want to know.'),
(119, '+SBT | É STREAMING. É TV. É GRÁTIS. | Canais ao vivo', 'https://mais.sbt.com.br/', 'O +SBT é o streaming totalmente grátis que combina canais ao vivo e catálogo variado! Assista aos 10 canais ao vivo: novelas, humor, infantil e muito +.'),
(120, 'STEAMRIP - Free Pre-installed Steam Games', 'https://steamrip.com/', 'Get Pre-installed Steam Games with direct download link - SteamRiP let you access all gaming genre for free with latest Updates & Multiplayer'),
(121, 'Online-Fix - Запуск игр по сети', 'https://online-fix.me/', 'Помощь с запуском сетевых игр онлайн. Фиксы, как правильно подключаться, создавать сервер, создавать игру через локальную сеть.'),
(122, 'Telegram Messenger', 'https://telegram.org/', 'Telegram is a cloud-based mobile and desktop messenger with a focus on security and speed.'),
(123, 'Pirated Games Mega Thread', 'https://rentry.org/pgames', 'Important: Make sure to always have uBlock Origin and ViolentMonkey + bypass-all-shortlinks-debloated script when visiting any of the sites mentioned here. These extensions are to prevent unnecessary popups and ads appearing on the websites to ensure a fast and safe browsing experience.'),
(124, 'Скачать торрент репаки игр от xatab', 'https://byxatab.com/', 'скачать торрент Игры на ПК от RePack by Xatab официальный, сайт Xatab-а. - СКАЧАТЬ ТОРРЕНТ'),
(125, 'FitGirl Repacks - The ONLY official site for FitGirl Repacks. Every single FG repack installer has a', ' https://fitgirl-repacks.site/', 'The ONLY official site for FitGirl Repacks. Every single FG repack installer has a link inside, which leads here. Do not fall for fake and scam sites, which are using my name.'),
(126, 'Invidious - An open source alternative front-end to YouTube', 'https://invidious.io/', 'Invidious is an open source alternative front-end to YouTube.'),
(127, 'Cambridge Dictionary | English Dictionary, Translations & Thesaurus', 'https://dictionary.cambridge.org/', 'The most popular dictionary and thesaurus for learners of English. Meanings and definitions of words with pronunciations and translations.'),
(128, 'Merriam-Webster: America\';s Most Trusted Dictionary', 'https://www.merriam-webster.com/', 'Find definitions for over 300,000 words from the most authoritative English dictionary. Continuously updated with new words and meanings.'),
(129, 'The Tor Project | Privacy & Freedom Online', 'https://www.torproject.org/', 'Defend yourself against tracking and surveillance. Circumvent censorship.'),
(130, 'Proton: Privacy by default', 'https://proton.me/', 'Over 100 million people use Proton to stay private and secure online. Get a free Proton account and take back your privacy.'),
(131, 'Proton VPN: Secure, fast VPN service in 110+ countries', 'https://protonvpn.com/', 'Proton VPN mitigates this by passing your traffic through our Secure Core network in privacy-friendly countries like Switzerland and Iceland first. By routing your traffic through a privacy-friendly country, we keep your true IP address hidden even if an attacker compromises the endpoint server.'),
(132, 'Proton Mail', 'https://mail.proton.me/', 'Proton Mail is based in Switzerland and uses advanced encryption to keep your data safe. Apps available for Android, iOS, and desktop devices.'),
(133, 'F-Droid - Free and Open Source Android App Repository', 'https://f-droid.org/', 'F-Droid is an installable catalogue of FOSS (Free and Open Source Software) applications for the Android platform. The client makes it easy to browse, install, and keep track of updates on your device.'),
(134, 'Discord - Group Chat That\'s All Fun & Games', 'https://discord.com/', 'Discord - Group Chat That’s All Fun and Games'),
(135, 'NewPipe - a free YouTube client', 'https://newpipe.net/', 'NewPipe is free and open source. Your advantages. Quick help when you have a problem (nobody\'s ever had one) Dozens of people bring NewPipe forward and translate it into 118 languages. You can check the source code on GitHub and contribute to NewPipe. '),
(136, 'Bromite | Bromite - take back your browser', 'https://www.bromite.org/', 'Bromite is a Chromium fork with ad blocking and enhanced privacy; take back your browser'),
(137, 'MEGA: Protect your Online Privacy', 'https://mega.io/', 'MEGA brings cloud storage, file and folder sharing, chat, meetings, and more — together into one place.'),
(138, 'MediaFire - File storage and sharing made simple', 'https://www.mediafire.com/', 'Handles all of your file needs. File storage made easy - including powerful features you won\'t find anywhere else. Whether you\'re sharing photos, videos, audio, or docs, MediaFire can simplify your workflow.'),
(139, 'Microsoft OneDrive', 'https://onedrive.live.com/', 'Download OneDrive on all your devices to store, share and access photos and files from virtually anywhere.'),
(140, 'Google Drive', 'https://drive.google.com/', 'Access Google Drive with a Google account (for personal use) or Google Workspace account (for business use).'),
(141, 'Pluto TV - Free Movies & TV Shows', 'https://pluto.tv/', 'Free Movies & TV Shows. Stream now. Pay never. Regions available for free streaming: United States (Live TV,Free Movies & TV Shows); América Latina (TV en vivo,Películas y programas de TV gratis); Brasil (TV Ao Vivo,Filmes e programas de TV gratuitos);'),
(142, 'Dailymotion', 'https://www.dailymotion.com/', 'The latest news, sports, music and entertainment videos on Dailymotion'),
(143, 'Filmes Online Grátis - Mega Filmes Online HD e Séries Online', 'https://filmesgratishd.org/', 'Filmes Online Grátis é o melhor site para ver filmes online grátis, todos os mega filmes estão aqui! Séries Online todos os dias o melhor contéudo para você!'),
(144, 'MegaHDFilmes - Filmes e Séries Online Grátis OFICIAL HD', 'https://megahdfilmes.life/', 'O nosso site atualiza todas as séries no dia em legendado e dublado, e como o nosso site é um indexador automático, somos os mais rápidos postadores do Brasil. MegaHDFilmes não armazena mega filmes e series em nosso site, por isso é completamente dentro da lei.'),
(145, 'Libreflix', 'https://libreflix.org/', 'Libreflix é uma plataforma de streaming aberta e colaborativa que reúne produções audiovisuais independentes, de livre exibição e que fazem pensar.'),
(146, 'WinRAR download free and support: WinRAR', 'https://www.win-rar.com/', 'WinRAR - the data compression, encryption and archiving tool for Windows that opens RAR and ZIP files. Compatible with many other file formats.'),
(147, 'K-Lite Codec Pack - Codec Guide', 'https://www.codecguide.com/', 'K-Lite Codec Pack is a free software bundle for playing audio and video files on Windows. Choose from four variants: Basic, Standard, Full or Mega, depending on your needs and preferences.'),
(148, 'Visual Studio Code - Code Editing. Redefined', 'https://code.visualstudio.com/', 'Visual Studio Code is a code editor redefined and optimized for building and debugging modern web and cloud applications. Visual Studio Code is free and available on your favorite platform - Linux, macOS, and Windows.'),
(149, 'The Game Awards', 'https://thegameawards.com/', 'Celebrate the best in video games and see what\'s next - Live from the Peacock Theater in Los Angeles.'),
(150, 'BGS - Brasil Game Show - A Maior Feira de Games da América Latina', 'https://www.brasilgameshow.com.br/', 'A Maior Feira de Games da América Latina'),
(151, 'Saikai Scan', 'https://saikaiscans.net/', 'Entre e conheça esse mundo chamado Saikai, viaje por inúmeros mundos através da leitura! Venha fazer parte da maior e melhor comunidade de Histórias e Comics.'),
(152, 'Solo Scan', 'https://solooscan.blogspot.com/', ''),
(153, 'Illfonic', 'https://www.illfonic.com/', 'Founded in 2007, IllFonic is an independent video game developer with studios in Lakewood, Colorado and Tacoma, Washington. Our staff is composed of video game, music, and technology veterans redefining how games are made and marketed.'),
(154, 'Gun Interactive', 'https://www.guninteractive.com/', '© 2023 Gun Media Holdings, Inc. All Rights Reserved. Gun Interactive™ , Gun Media™ and the Gun Media™ logo are trademarks and/or registered trademarks of Gun Media Holdings, Inc. throughout the world'),
(155, 'Friday the 13th the Game', 'http://f13game.com/', 'Official website for Friday the 13th the Game. See what we\'re working on, read patch notes, view future content, and more.'),
(156, 'The Texas Chain Saw Massacre', 'https://www.txchainsawgame.com/', 'The Texas Chain Saw Massacre is an asymmetrical horror experience based on the groundbreaking and iconic 1974 horror film. Please visit the Community Hub page for additional information as it becomes available. Latest from the Community Hub . Family Abilities and Attributes Explained.'),
(157, 'Killer Klowns from Outer Space', 'https://killerklownsthegame.com/', 'Killer Klowns From Outer Space: The Game is a crazy, fresh take on an asymmetrical survival horror experience. Based on our iconic 80\'s movie, this 3v7 multiplayer game brings back the unique, over-the-top mix of horror and comedy.'),
(158, 'Video Game News, Reviews, and Walkthroughs - IGN', 'https://www.ign.com/', 'IGN is your #1 destination for all video game news, expert reviews, and walkthroughs.'),
(159, 'Jason Universe - Welcome to a new era from the original owners of the Friday the 13th franchise', 'https://jasonuniverse.com/', ''),
(160, 'Yandex — a fast Internet search', 'https://yandex.com/', 'Yandex is a technology company that builds intelligent products and services powered by machine learning. Our goal is to help consumers and businesses better navigate the online and offline world. Since 1997, we have delivered world-class, locally relevant search and information services.'),
(161, 'TecMundo: Tudo sobre Tecnologia, Entretenimento, Ciência e Games', 'https://www.tecmundo.com.br/', 'No TecMundo você fica por dentro dos principais acontecimentos da tecnologia. Celulares, análises, games, ciência, séries e mais, você descobre aqui!'),
(162, 'InfoMoney - Informações que valem dinheiro', 'https://www.infomoney.com.br/', ''),
(163, 'WaveNet - Nosso fórum, seu espaço', 'https://wavenet.forumeiros.com/', 'Radio, locutores, radio, vinheta, trilhas, zararadio, efeitos, forum de radio, player para webradio, sound forge, sound, forge, samplitude, downloads, musicas, baixar, online, radios, w'),
(164, 'Dozitos', 'https://dozitos.com/', 'Dozitos.com é o mehor lugar para você baixar filmes no servidor mega e drive, nós temos os melhores lançamentos sem anúncios e estamos sempre trabalhando para adicionar mais conteúdo para você!'),
(165, 'Wattpad - Where stories live', 'https://www.wattpad.com/', 'Wattpad connects a global community of millions of readers and writers through the power of story'),
(166, 'qBittorrent Official Website', 'https://www.qbittorrent.org/', 'The qBittorrent project aims to provide an open-source software alternative to µTorrent.'),
(167, 'µTorrent (uTorrent) | A Very Tiny BitTorrent Client', 'https://www.utorrent.com/', 'Download torrents with the official µTorrent client for Windows, Mac, Android and Linux with desktop and web-based options available.'),
(168, 'Yahoo Search - Web Search', 'https://search.yahoo.com/', 'Yahoo Search is a search engine that helps users find relevant information, videos, images, and answers from across the web.'),
(169, 'Yahoo', 'https://www.yahoo.com/', 'News, email and search are just the beginning. Discover more every day. Find your yodel.'),
(170, 'Yahoo Mail', 'https://mail.yahoo.com/', 'It\'s time to get stuff done with Yahoo Mail. Just add your Gmail, Outlook, AOL or Yahoo Mail to get going. We automatically organize all the things life throws at you, like receipts and attachments, so you can find what you need fast. Plus, we\'ve got your back with other convenient features like one'),
(171, 'Yahoo Mail — E-mail gratuito com 1000 GB de armazenamento', 'https://br.mail.yahoo.com/', 'Yahoo Mail, últimas notícias locais, nacionais e globais, finanças, esportes, música, filmes... Aproveite mais a Internet, aproveite mais a vida.'),
(172, 'kaizoku PROJECT: RPG de One Piece - Aventuras sem limites!', 'https://kaizoku.atomiplay.com/', ''),
(173, 'atomiPLAY | RPG kaizokuPROJECT, mahouPROJECT, ninjaPROJECT', 'https://www.atomiplay.com.br/', ''),
(174, 'playHERO: Browser RPG de Boku no Hero - My Hero Academia!', 'https://hero.atomiplay.com/', ''),
(175, 'ninja PROJECT: RPG de Naruto, Boruto - Jogue de graça!', 'https://ninja.atomiplay.com/', ''),
(176, 'mahouPROJECT: RPG de Fairy Tail - Jogue grátis, aventuras sem limites!', 'https://mahou.atomiplay.com/', ''),
(177, 'The Jerusalem Post - All News from the Middle East, Israel, and the Jewish World', 'https://www.jpost.com/', 'The Jerusalem Post is Israel\'s most-read English news website and best-selling English newspaper bringing breaking news, world news; middle east news.'),
(178, 'Reuters | Breaking International News & Views', 'https://www.reuters.com/', 'Find latest news from every corner of the globe at Reuters.com, your online source for breaking international news coverage.'),
(179, 'Lana Lokteff', 'https://www.lanalokteff.com/', 'Lana Lokteff, Lana\'s Llama, Screenplays, Thirty Day Notice'),
(180, 'Red Ice', 'https://redice.tv/', ''),
(181, 'Odysee', 'https://odysee.com/', 'Explore a whole universe of videos on Odysee from regular people just like you!'),
(182, 'Internet Archive: Digital Library of Free & Borrowable Texts, Movies, Music & Wayback Machine', 'https://archive.org/', 'Internet Archive is a non-profit digital library offering free universal access to texts, movies & music, as well as 624 billion archived web pages.'),
(183, 'Wayback Machine', 'http://wayback.archive.org/', 'Capture a web page as it appears now for use as a trusted citation in the future. The Wayback Machine is an initiative of the Internet Archive, a 501 (c) (3) non-profit, building a digital library of Internet sites and other cultural artifacts in digital form.'),
(184, 'Radical Agenda', 'https://radicalagenda.com/', ''),
(185, '4shared.com - free file sharing and storage', 'https://www.4shared.com/', 'Online file sharing and storage - 15 GB free web space. Easy registration. File upload progressor. Multiple file transfer. Fast download.'),
(186, 'One Piece Ex', 'https://opexcast.com.br/', 'O melhor portal de One Piece em Português! A One Piece Ex possui episódios em alta qualidade em HD, MKV, AVI, MP4 e RMVB. Além de mangás, músicas, biografias, fotos, filmes e muitas outras informações. Legendas com melhor qualidade e velocidade.'),
(187, 'InfoEscola - Navegando e Aprendendo - InfoEscola', 'https://www.infoescola.com/', 'Navegando e Aprendendo'),
(188, 'Undaunted Games', 'https://www.undauntedgames.com/', ''),
(189, 'SteamDB', 'https://steamdb.info/', 'SteamDB is a hobby project and is not affiliated with Valve or Steam. All times on the site are UTC.'),
(190, 'Bounding Into Comics', 'https://boundingintocomics.com/', 'Bounding Into Comics delivers exclusive news, insight, and reviews of comic books, movies, TV, video games, and more.'),
(191, 'Open Broadcaster Software | OBS', 'https://obsproject.com/', 'OBS (Open Broadcaster Software) is free and open source software for video recording and live streaming. Stream to Twitch, YouTube and many other providers or record your own videos with high quality H264 / AAC encoding.'),
(192, 'Hotmart', 'https://hotmart.com/', 'Hotmart is an online platform for creators to build, monetize, and manage their digital businesses.'),
(193, 'Hydra Launcher', 'https://github.com/hydralauncher/hydra', 'Hydra is a game launcher with its own embedded bittorrent client.'),
(194, 'Hydra Launcher', 'https://hydralauncher.gg/', 'Download, play, track your stats and manage your games all in one place. Hydra is a versatile game launcher with cloud saves, achievement tracking, and more.'),
(195, 'Stremio - Freedom to Stream', 'https://www.stremio.com/', 'Stremio offers a secure, modern and seamless entertainment experience. With its easy-to-use interface and diverse content library, including 4K HDR support, users can enjoy their favorite movies and TV shows across all their devices.'),
(196, 'Hydra Community Links', 'https://hydralinks.cloud/', ''),
(197, 'Hydra Themes', 'https://hydrathemes.shop/', ''),
(198, 'Animes ROLL - Assistir Animes Online em FHD!', 'https://animesroll.to/', 'AnimesROLL. A melhor maneira de assistir animes online grátis, basta dar play e ver seus animes favoritos em hd, atualizados diariamente.'),
(199, 'Pastebin.com - #1 paste tool since 2002!', 'https://pastebin.com/', 'Pastebin.com is the number one paste tool since 2002. Pastebin is a website where you can store text online for a set period of time.'),
(200, 'Central de Traduções', 'https://www.centraldetraducoes.net.br/', 'Todas as Traduções de Games reunidas em um só lugar!'),
(201, 'Bora Flix', 'https://www.boraflix.com/', 'Bora Flix - Assistir filmes online, Assistir séries online, Lançamentos de filmes, Filmes 1080p, Filmes 720p, Séries 1080p, Séries 720p,'),
(202, 'Rede Canais', 'https://redecanais.ps/', 'Filmes e Séries Online - Assistir Filmes e Séries Online Dublado e Legendado de Grátis.'),
(203, 'PandaFiles Filmes Download', 'https://pandafilesfilmesdownload.blogspot.com/', 'Baixar filmes no PandaFiles'),
(204, 'Z-library Project - eBook Library Z. Download free Books', 'https://z-library.sk', 'Z-Library official - Free largest electronic library. Z-lib - Find and download eBooks for free. Visit Z-Library'),
(205, 'The Pirate Bay', 'https://thepiratebay.org/', 'Download music, movies, games, software! The Pirate Bay - The galaxy\'s most resilient BitTorrent site'),
(206, 'Ethnicity of Celebs', 'https://ethnicelebs.com/', ''),
(207, 'Nucleus Co-Op', 'https://nucleus-coop.github.io/', 'Adds remarkably smooth split-screen functionality to hundreds of PC games.'),
(208, 'Dark Animes | Baixar Animes via Torrent. Assistir Animes Online Completos em Full HD!', 'https://darkmahou.org/', 'Baixar Assistir Animes via Torrent Online em HD, Baixar via Mega em HD, assistir Animes Legendados Completos via torrent, rine.cloud, better animes, animesgames, animesdigital, animes house, bakashi.tv, anitora.ru, animesonline, animesfire, goyabu, animesroll, sakuranimes, subanimes, Crunchyroll, Fu'),
(209, 'Baixar Filmes e Séries Grátis via Torrent - Hidra Torrent', 'https://hidratorrents.org/', 'Lista de filmes e séries para download via torrent grátis - Hidra Torrent'),
(210, 'COMANDO FILMES TORRENT – MELHOR DO BRASIL !', 'https://baixafilmestorrent.com/', 'comando filmes torrent O melhor site de torrents download gratis, download filmes torrent, series torrent totalmente gratis, os melhores torrent filmes dublado e legendado. – filmes torrent – baixar filmes torrent – comando torrent – torrent filmes – filmes torrent 2024'),
(211, 'Comando Torrents Filmes via Torrent – ComandoTorrents', 'https://comando.la/', 'ComandoTorrents - Comando Torrents - Comando Torrent - Comando Filmes 4K- Baixar Filmes Séries Magnet Download de filme Dublado Dual Áudio BluRay Compactado em 1080p e 720p - 3D - MKV - MP4 - 4k Sem Anúncios'),
(212, 'Baixar Filmes e Séries Grátis - Tela Torrent', 'https://telatorrent.com/', 'Lista de filmes e séries para download grátis - Tela Torrent'),
(213, 'Comando Torrents – Filmes e Series via Torrent - Comando Torrents ComandoTorrents - Comando Torrent ', 'https://comandotorrents.to/', 'Comando Torrents ComandoTorrents - Comando Torrent - Comando Filmes 4K- Baixar Filmes Séries Magnet Download de filme Dublado Dual Áudio BluRay Compactado em 1080p e 720p - 3D - MKV - MP4 - 4k Sem Anúncios'),
(214, 'Filmes e Séries Dublados e Legendados em Alta Definição Download Torrent - Deus Torrent', 'https://deustorrent.com/', 'Deus Torrent - Filmes e séries em alta definição com qualidade de bluray e web-dl em HD, Full HD e 4K dublados, dual áudio e legendados.'),
(215, 'Filmes HD Torrent - Baixar Filmes e Séries Bluray Dublado e Legendado.', 'https://www.filmeshdtorrent.vip/', 'Baixar Filmes e Séries Bluray Dublado e Legendado.'),
(216, 'Comando 4k Filmes Torrent | Comando Filmes 2024 Torrents - Comando Filmes Comando 4k Filmes Torrents', 'https://comando4kfilmes.site/', 'Comando Filmes Comando 4k Filmes Torrents , Lançamentos 2023 Torrents Bluray Dublado e Legendado Downloads Via Magnet Link Dual Áudio 1080p - 720p - 3D - MKV - MP4'),
(217, 'Friday The 13th: The Franchise', 'http://www.fridaythe13thfranchise.com/', 'Friday The 13th website and home of Jason Voorhees'),
(218, 'Tomb Raider', 'https://www.tombraider.com/', 'Explore the world of Tomb Raider - featuring Lara Croft\'s latest adventures, games, news and more.'),
(219, 'Skidrow & Reloaded Games; Download PC Games, Repacks, DLCs, Cracks, Updates, Cracked Games', 'https://www.skidrowreloaded.com/', ''),
(220, 'IGN Portugal', 'https://pt.ign.com/', 'O IGN é o teu site português para as últimas notícias, análises, vídeos e muito mais sobre videojogos, cinema e tecnologia.'),
(221, 'IGN Brasil', 'https://br.ign.com/', 'IGN Brasil é o maior site de games para Xbox, PS3, PS4, PC, Wii U, Nintendo 3DS, PS Vita, iPhone e Android, com reviews, notícias, previews e vídeos.'),
(222, 'Comick - comick.io', 'https://comick.io/', 'Beautiful free reader and a Big database for comics (manhwa, manhua, manga).'),
(223, 'Filmes, Séries e Desenhos Dublados, Legendados e Dual Áudio Download Torrent - Rede Torrent', 'https://redetorrent.com/', 'Baixe Filmes, Séries e Desenhos Animados Dublados, Legendados e Dual Áudio Torrents em BluRay, HD, 720p, 1080p e 4K para Download - Rede Torrent'),
(224, 'Últimos Lançamentos Torrent Lista de downloads em bluray full hd 4k', 'https://boitorrent.com/', 'Lista por torrent de filmes, desenhos, séries, jogos, softwares, livros, quadrinhos e apostilas em bluray Full Hd, 4k, 1080p e 720p via magnet link'),
(225, 'HDR Torrent Filmes e Séries Dublados/Dual Áudio Baixar', 'https://hdrtorrent.com/', 'HDR Torrent Filmes e Séries Dublados/Dual Áudio para download 4K|1080P|HD|BluRay'),
(226, 'GOG Database', 'https://www.gogdb.org/', 'Welcome to the GOG Database, a third-party website that collects data on GOG games and tries to display it in a user-friendly manner. For technical information about this site and contact details visit the More Information page.'),
(227, 'Epic Games Store Price Tracker — EpicGamesDB', 'https://epicgamesdb.info/', 'A SteamDB-inspired tool for tracking game prices across countries on the Epic Games Store.'),
(228, 'Download PC Games (Last Versions) Torrents for free', 'https://hisgames.org/', 'HisGames.Org is a unique torrent site with a vast collection of PC games. The content is meticulously organized by genre, subgenre, year, gameplay, and popular tags, making it stand out from other similar sites.'),
(229, 'Fawkes - Indie Ops & Studio', 'https://fawkesgames.com/', 'Small and young, with a proven fundamental approach to games. Cost-effective, and end-to-end Operations.'),
(230, 'Old Games Download - Abandonware and Retrogaming', 'https://oldgamesdownload.com/', 'Archival project building a library of abandonware video games, manuals, screenshots and artwork. Our retrogaming library has 20,000+ downloads available for free public access.'),
(231, 'MemóriadaTV — Preservando a Memória da Dublagem Brasileira', 'https://www.memoriadatv.com/', ''),
(232, 'Repack-Games - Free Download PC Games', 'https://repack-games.com/', 'Download Free Repack-Games CODEX, RELOADED, SKIDROW, CPY, P2P, GOG Free download games via direct links. Download PC games for free with GOG'),
(233, 'CS.RIN.RU - Steam Underground Community', 'https://cs.rin.ru/', 'CS.RIN.RU - Steam Underground Community'),
(234, 'Lightshot — screenshot tool for Mac & Win', 'https://prnt.sc/', ''),
(235, 'Friday the 13th: The Website', 'https://fridaythe13thfilms.com/', '13 Years of Terror'),
(236, 'Spreadsheet Software to End Data Chaos | Grist', 'https://www.getgrist.com/', 'Grist is a relational spreadsheet-database that empowers you to organize your data, your way. Get started with a free trial.'),
(237, 'Главная  | DS-Servers', 'https://ds-servers.com/', ''),
(238, 'Vimm', 'https://vimm.net/', ''),
(239, 'Starck Filmes - Página 1 | Baixe Filmes e Séries Torrent Dublados e Legendados', 'https://starckfilmes-v3.com/', 'Starck Filmes - O melhor site para baixar filmes e séries via torrent em alta qualidade. Downloads rápidos, seguros e atualizados diariamente.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `site_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
