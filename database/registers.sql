DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nome` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `cidade` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Barker, Odessa E.","proin.eget@protonmail.ca","Katowice"),
  ("Navarro, Indigo R.","primis.in.faucibus@protonmail.couk","New Haven"),
  ("Randolph, Marah A.","sed.congue.elit@aol.net","Gangneung"),
  ("Salinas, Rafael V.","est@protonmail.org","Châtellerault"),
  ("Cooley, Debra D.","eu@aol.ca","Haveli"),
  ("Thomas, Jayme Y.","fringilla.est@outlook.couk","Lugo"),
  ("Salazar, Lana M.","phasellus.ornare@outlook.org","Launceston"),
  ("Compton, Jerry A.","lacinia.sed@icloud.couk","Sant'Egidio alla Vibrata"),
  ("Mccoy, Wang W.","aliquet@outlook.org","Saint-Dié-des-Vosges"),
  ("Ellison, Harper J.","non@yahoo.org","Whakatane");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Solomon, Russell Y.","nulla.facilisis@yahoo.edu","Puerto Princesa"),
  ("Dawson, Preston V.","sem.nulla@icloud.edu","Fokino"),
  ("Snider, Hunter B.","lorem@aol.ca","Juazeiro"),
  ("Houston, Jamalia K.","at.auctor@protonmail.com","Mokpo"),
  ("Dean, Mufutau B.","est@protonmail.ca","Gia Nghĩa"),
  ("Kirby, Dacey A.","nunc@icloud.net","Kingussie"),
  ("Campos, Clinton T.","aliquam.ornare.libero@aol.com","Sissa"),
  ("Colon, Ciaran B.","sit.amet@protonmail.net","Shangla"),
  ("Barrera, Madeson H.","fusce.aliquet@aol.com","Shigar"),
  ("Stout, Kirsten G.","curabitur.ut.odio@hotmail.couk","Dumaguete");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Sawyer, Keaton Z.","cum@outlook.ca","Lago Ranco"),
  ("Curry, Wang R.","turpis.nec@yahoo.net","Kimberley"),
  ("Aguilar, Whitney B.","venenatis.lacus@protonmail.couk","Canberra"),
  ("Mclean, Harding F.","risus.at@yahoo.edu","Puntarenas"),
  ("Valencia, Unity S.","lacus.etiam@icloud.ca","Baybay"),
  ("Williamson, Riley D.","inceptos@icloud.net","Bastia"),
  ("Mcfadden, Joelle H.","ut.tincidunt@yahoo.net","Laguna Blanca"),
  ("Smith, Solomon A.","dis.parturient@hotmail.edu","Bremen"),
  ("Weaver, Shoshana A.","sociis.natoque@hotmail.org","Emalahleni"),
  ("Hammond, Kameko T.","ipsum.dolor@yahoo.edu","Astore");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Mcdowell, Ryder K.","gravida.non.sollicitudin@aol.edu","Newcastle"),
  ("Terry, Lisandra E.","mattis.integer.eu@hotmail.couk","Niterói"),
  ("Foreman, Jeremy J.","dis@icloud.org","Tunja"),
  ("Randolph, Fitzgerald H.","montes@google.net","Adana"),
  ("Ball, Wynter S.","commodo@icloud.net","Uddevalla"),
  ("Young, Pamela Z.","orci@icloud.org","Albury"),
  ("Mcintyre, Nicholas F.","ipsum@outlook.couk","Huancayo"),
  ("Espinoza, Grant P.","pede.blandit.congue@google.ca","Haren"),
  ("Ashley, Ahmed R.","malesuada.vel@google.com","Serangoon"),
  ("Farley, Harper U.","proin.dolor@aol.net","Latisana");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Reed, Buffy O.","lobortis.quam.a@hotmail.com","Greenock"),
  ("Cantu, Buckminster B.","nunc.pulvinar@icloud.edu","Itanagar"),
  ("Perkins, Tobias Q.","tristique.ac@hotmail.ca","Birmingham"),
  ("Porter, Denise K.","dui.lectus@google.ca","Bhilwara"),
  ("Whitney, Ayanna K.","fringilla.purus.mauris@protonmail.net","Brighton"),
  ("Abbott, Keelie T.","cras.vulputate@protonmail.edu","Satka"),
  ("Fleming, Jelani B.","lorem@outlook.com","Den Helder"),
  ("Sears, Robin Y.","tempor@google.net","West Jakarta"),
  ("Gregory, Iris X.","penatibus.et@aol.edu","Konstanz"),
  ("Moon, Axel Q.","dis.parturient@outlook.com","Guápiles");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Silva, Vera Y.","blandit.mattis@icloud.couk","Dangjin"),
  ("Rasmussen, Debra B.","donec.tincidunt@protonmail.edu","Gebze"),
  ("Mcdaniel, Upton Z.","mauris@outlook.ca","Kohat"),
  ("Lane, MacKensie O.","dictum.magna.ut@hotmail.couk","Gatchina"),
  ("Moore, Emmanuel S.","mattis.ornare@aol.couk","Harlingen"),
  ("Rush, Jerry G.","a.odio.semper@google.edu","Reynosa"),
  ("Park, Julie I.","nunc.sit.amet@yahoo.couk","Belfast"),
  ("Jones, Avram K.","sagittis.duis@aol.org","Aubagne"),
  ("Barrett, Nehru C.","egestas.a.scelerisque@outlook.com","Saint-Prime"),
  ("Schultz, MacKensie M.","egestas.fusce@google.edu","Port Blair");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Pierce, Paula V.","euismod.in.dolor@outlook.couk","Puno"),
  ("Guerrero, Kareem Z.","lorem.fringilla.ornare@yahoo.edu","Vladimir"),
  ("Hansen, Emily R.","sem.ut@outlook.com","Gunsan"),
  ("Reyes, Rhonda B.","amet@yahoo.net","San Cristóbal de las Casas"),
  ("Alexander, Rachel S.","scelerisque.scelerisque.dui@icloud.net","Orp-le-Grand"),
  ("Griffin, Adrian E.","suscipit.nonummy@aol.edu","Kozan"),
  ("Shields, Daquan X.","lacus.nulla@hotmail.org","Pasir Ris"),
  ("Flores, Quon D.","sollicitudin.adipiscing@outlook.com","Elx"),
  ("Berry, Miriam C.","diam@yahoo.edu","Bình Mỹ"),
  ("Finley, Gavin G.","duis@outlook.ca","Bình Mỹ");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Holden, Katell S.","fames.ac@hotmail.couk","Warrington"),
  ("Marshall, Kai O.","dui@google.ca","Hattem"),
  ("Salas, Zahir K.","scelerisque.sed@aol.edu","Puntarenas"),
  ("Bailey, Raya G.","placerat.velit@google.com","Guadalajara"),
  ("Velazquez, Brendan T.","aliquet.nec@hotmail.edu","Amersfoort"),
  ("Pena, Mikayla M.","felis.eget@google.couk","Bauchi"),
  ("Kline, Fritz P.","vehicula.aliquet.libero@icloud.net","Goiânia"),
  ("Powell, Noel U.","vestibulum.neque.sed@outlook.net","Baracaldo"),
  ("Burgess, Clio K.","feugiat@hotmail.couk","Puno"),
  ("Woodward, Ria V.","feugiat.nec.diam@yahoo.org","Krasnaya Yaruga");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Bell, Gisela M.","aliquam@icloud.edu","Stargard Szczeciński"),
  ("Whitfield, Chase O.","inceptos.hymenaeos@aol.edu","Kędzierzyn-Koźle"),
  ("Mcfarland, Claire P.","enim.mauris@yahoo.edu","Marseille"),
  ("Huber, Nichole A.","mauris.sapien.cursus@hotmail.edu","Murmansk"),
  ("King, Nita Q.","vulputate@google.ca","Didim"),
  ("Tran, Byron P.","vulputate.ullamcorper.magna@hotmail.com","Klerksdorp"),
  ("Hayes, Judah D.","vel.est@aol.edu","Central Water Catchment"),
  ("Burton, Wesley I.","pellentesque.habitant.morbi@protonmail.couk","Ensenada"),
  ("Fuller, Jordan O.","proin@yahoo.edu","Ternate"),
  ("Savage, Lacota N.","feugiat@aol.org","Pavlohrad");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Ballard, Jameson G.","iaculis.odio.nam@icloud.couk","Bhimber"),
  ("Walker, Rhea L.","aliquet.sem@outlook.couk","Petrópolis"),
  ("Burns, Robin B.","lorem.vitae.odio@hotmail.com","Gunsan"),
  ("Bean, Samuel H.","elit@google.couk","Erdemli"),
  ("Buchanan, Jena A.","fusce.aliquet@outlook.com","Guaymas"),
  ("Bailey, Linus S.","porttitor.scelerisque@hotmail.net","Esslingen"),
  ("Weiss, Rudyard P.","amet.ultricies.sem@yahoo.couk","Gosnells"),
  ("Pittman, Joelle P.","aliquam.auctor@aol.org","North-Eastern Islands"),
  ("Marquez, Tanner G.","semper.erat@icloud.edu","Jiangxi"),
  ("Morse, Freya Z.","lobortis.quam@yahoo.edu","Samara");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Nolan, Orlando H.","in.cursus@outlook.ca","Bắc Giang"),
  ("Orr, Medge X.","eu.arcu@outlook.edu","Elmshorn"),
  ("Ball, Colette I.","ipsum.suspendisse@aol.couk","Chungju"),
  ("Todd, Darrel B.","non@yahoo.ca","Jeonju"),
  ("Rutledge, Halla P.","urna@hotmail.com","Bay Roberts"),
  ("Small, Neil J.","mauris.ut@outlook.com","Hebei"),
  ("Stark, Amal B.","sit.amet.consectetuer@google.couk","Olsztyn"),
  ("Patel, Edward H.","vestibulum.mauris@icloud.com","Idaho Falls"),
  ("Atkinson, Slade I.","nisl.elementum.purus@protonmail.com","Fredericton"),
  ("Zimmerman, Brooke R.","dolor@aol.couk","Vänersborg");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Ross, Samuel P.","ultrices.vivamus.rhoncus@yahoo.net","Florianópolis"),
  ("Kirk, Rana R.","in.consectetuer@yahoo.couk","Queanbeyan"),
  ("Lynn, Elijah X.","maecenas@google.couk","Mysore"),
  ("Fry, Alika F.","felis.eget@hotmail.org","San Andrés"),
  ("Gray, Gwendolyn B.","aliquet@hotmail.org","Moscow"),
  ("Lawrence, Lance U.","metus.vivamus.euismod@hotmail.edu","Bury St. Edmunds"),
  ("Santos, Angelica B.","nunc.id@outlook.edu","Meppel"),
  ("Goodman, Pearl U.","facilisis.magna.tellus@aol.ca","Ohain"),
  ("Lucas, Holmes R.","diam.eu.dolor@google.org","Fuenlabrada"),
  ("George, Evan Y.","dui.lectus@protonmail.net","Potchefstroom");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Horn, Jermaine V.","sed@protonmail.org","Gagliano del Capo"),
  ("Frost, Whoopi C.","ipsum.curabitur@aol.couk","Hubei"),
  ("Powell, Kieran K.","pellentesque.ut@protonmail.org","Hohenems"),
  ("Kane, Blake X.","adipiscing@icloud.edu","Paya Lebar"),
  ("Petty, Karleigh V.","habitant.morbi.tristique@outlook.couk","Tumba"),
  ("Blanchard, Jordan D.","suscipit.est@yahoo.couk","Fusagasugá"),
  ("Durham, Adria G.","a.odio@google.org","Troyes"),
  ("Guerrero, Margaret M.","odio.auctor@aol.edu","Hà Tĩnh"),
  ("Cross, Andrew D.","ornare.tortor@hotmail.com","Ternate"),
  ("Castro, Maisie G.","diam.lorem@aol.ca","Yeongju");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Mathews, Emmanuel S.","semper.erat@yahoo.net","Fort Wayne"),
  ("Blackburn, Timothy X.","mollis@icloud.couk","Kumbakonam"),
  ("Cherry, Nomlanga A.","amet.faucibus.ut@outlook.net","Ostrowiec Świętokrzyski"),
  ("Schneider, Fallon R.","a.felis.ullamcorper@google.net","Palma de Mallorca"),
  ("Downs, Cally W.","non@yahoo.com","Muradiye"),
  ("Stafford, Travis T.","parturient@hotmail.com","Bastia"),
  ("Cruz, Oren Q.","euismod@protonmail.ca","Rivne"),
  ("Curtis, Eliana X.","morbi.neque@outlook.couk","Palma de Mallorca"),
  ("Duncan, Fleur J.","vestibulum@outlook.ca","Rio de Janeiro"),
  ("Boyer, Kenneth L.","adipiscing@yahoo.org","Stratford");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Cleveland, Addison L.","nec.eleifend@yahoo.couk","Belfast"),
  ("Holder, Colleen C.","dolor@yahoo.com","Kupang"),
  ("Osborne, Gillian M.","fermentum.arcu@yahoo.net","Palmerston"),
  ("Curtis, Tara I.","est@icloud.com","Serralunga d'Alba"),
  ("Pittman, Leonard Z.","ante.lectus.convallis@aol.net","Sandefjord"),
  ("Burris, Hedy C.","ipsum@aol.com","Magadan"),
  ("Bush, Burke D.","vestibulum.accumsan@protonmail.couk","Colchane"),
  ("Wiley, Portia B.","ornare.placerat@outlook.edu","Gore"),
  ("Watson, Austin X.","sed.nunc@icloud.ca","Criciúma"),
  ("Emerson, Barclay R.","ut@outlook.couk","San José de Alajuela");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Chavez, Travis U.","donec.nibh.enim@icloud.net","Heusweiler"),
  ("Lowe, Cade F.","lectus.nullam.suscipit@yahoo.org","Cúcuta"),
  ("Rose, Chanda Y.","sed.orci@hotmail.couk","Choa Chu Kang"),
  ("Byers, Lee L.","egestas.aliquam@hotmail.ca","Kielce"),
  ("Harris, Tucker N.","vivamus.nibh.dolor@yahoo.edu","Washuk"),
  ("Sampson, Giselle P.","blandit.viverra.donec@hotmail.couk","Zwickau"),
  ("Powers, Channing H.","risus@google.net","Starachowice"),
  ("Calderon, Carter H.","cursus.in.hendrerit@hotmail.edu","Torrevieja"),
  ("Alston, Cherokee O.","magnis.dis.parturient@hotmail.edu","Crewe"),
  ("Morton, Zenaida R.","mi.lacinia@aol.com","Welkom");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Aguirre, Tucker C.","tempus@hotmail.com","Lampa"),
  ("Carpenter, Josiah D.","ante.iaculis.nec@aol.com","Banjarmasin"),
  ("Everett, Jael K.","magna@icloud.edu","Gunsan"),
  ("Grant, Kalia M.","natoque.penatibus@icloud.org","Butuan"),
  ("Ewing, Amelia K.","sit.amet@hotmail.couk","Cuautla"),
  ("Cain, Orson K.","placerat.eget.venenatis@protonmail.couk","Kano"),
  ("Finley, Gary D.","gravida.non@google.ca","Villavicencio"),
  ("Holloway, Herrod P.","molestie.tellus@hotmail.ca","Mount Gambier"),
  ("Pacheco, Wendy B.","cras.vehicula.aliquet@aol.com","Tywyn"),
  ("Chavez, Isaiah V.","primis.in@yahoo.com","Landeck");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Hobbs, Cally E.","consectetuer.adipiscing.elit@outlook.com","Sincelejo"),
  ("Moran, Benedict M.","orci@protonmail.ca","Dutse"),
  ("Carroll, Addison G.","dolor@aol.couk","Levin"),
  ("Aguilar, Vladimir H.","ornare.sagittis@outlook.net","Laken"),
  ("Carver, Raja J.","sodales.at@outlook.edu","Chalon-sur-Saône"),
  ("Bean, Ella Q.","vel.venenatis.vel@protonmail.couk","Norrköping"),
  ("Pena, Alvin V.","ultrices@google.org","Tyumen"),
  ("Hubbard, Elaine P.","volutpat.nulla@outlook.com","Tuguegarao"),
  ("Newman, Rowan O.","sed.nec@google.com","Lo Prado"),
  ("West, Karina R.","donec.feugiat.metus@google.couk","Parepare");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Vaughn, Hilel G.","ornare.in.faucibus@protonmail.net","San Andrés"),
  ("Sykes, Jolene K.","nunc@google.edu","Oldenzaal"),
  ("Pope, Callum J.","vehicula@hotmail.com","Limón (Puerto Limón]"),
  ("Boone, Kelsie H.","at.libero.morbi@google.edu","Delicias"),
  ("Richardson, Carl S.","sagittis.nullam@hotmail.org","Monterrey"),
  ("Le, Colin J.","id.ante@aol.org","Bydgoszcz"),
  ("Bush, Peter P.","augue.id@yahoo.edu","Kaliningrad"),
  ("Navarro, Dennis O.","amet.consectetuer@outlook.net","Berlin"),
  ("Landry, Erica J.","ridiculus.mus@protonmail.org","Buckingham"),
  ("Mcdaniel, Jael R.","amet.diam@icloud.ca","Otukpo");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Kennedy, Walter W.","magna.sed@outlook.net","Devonport"),
  ("Casey, Dolan N.","donec@google.net","Makati"),
  ("Frost, Melanie T.","aliquam@outlook.edu","Heilongjiang"),
  ("Dickson, Merritt I.","sed.est@yahoo.ca","Ålesund"),
  ("Kinney, Jeanette G.","sodales.at.velit@hotmail.edu","Dublin"),
  ("George, Elton Z.","sollicitudin.orci.sem@icloud.com","North-Eastern Islands"),
  ("Oliver, Paki A.","semper.erat@aol.org","Recife"),
  ("Stanton, Farrah F.","vestibulum.massa@aol.org","Morwell"),
  ("Valenzuela, Kimberley C.","nibh.enim@protonmail.couk","Crato"),
  ("Cox, Lacota M.","laoreet@google.net","Koszalin");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Perez, Jin D.","donec.consectetuer@icloud.com","Dornbirn"),
  ("Gross, Shafira I.","lobortis.augue@google.edu","Lansing"),
  ("Rogers, Jillian X.","eget@protonmail.ca","Kotli"),
  ("Perry, Nigel O.","nullam@icloud.org","Mykolaiv"),
  ("Durham, Isaac S.","tincidunt.congue@aol.org","Almelo"),
  ("Frye, Evelyn N.","et.rutrum@google.net","San Piero a Sieve"),
  ("Wyatt, Kennan I.","per@google.net","Oslo"),
  ("Horn, Idona P.","nec.urna@google.com","Jecheon"),
  ("Rogers, Lee L.","donec@protonmail.com","Raurkela Civil Township"),
  ("Haynes, Gail K.","amet.dapibus@protonmail.edu","Okigwe");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Burris, Amanda B.","at.velit@hotmail.edu","Tufara"),
  ("Franklin, Glenna L.","cursus@google.couk","Ludvika"),
  ("Blair, Leigh M.","ridiculus@protonmail.ca","Albacete"),
  ("Castro, Shaeleigh Q.","dis.parturient.montes@hotmail.couk","Shaftesbury"),
  ("Bryant, Ciara P.","fringilla.ornare@hotmail.edu","San Floriano del Collio"),
  ("Abbott, Caesar Y.","commodo.auctor@yahoo.ca","Gwangmyeong"),
  ("Camacho, Linus O.","aenean.egestas.hendrerit@aol.edu","Orenburg"),
  ("Schroeder, Quentin J.","metus.in@aol.couk","Polatlı"),
  ("Mccullough, Serina H.","sagittis.augue@aol.net","La Valle/Wengen"),
  ("Jefferson, Wylie L.","orci.phasellus.dapibus@aol.ca","Copertino");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Rice, Brandon M.","mollis.duis@yahoo.net","Chełm"),
  ("Olson, Bell V.","nunc.ac.sem@google.ca","Kidapawan"),
  ("Case, Cruz J.","non@protonmail.net","Lidköping"),
  ("Meadows, Lois W.","phasellus.elit@icloud.org","Sangju"),
  ("Shelton, Stuart U.","non.nisi.aenean@protonmail.ca","Oaxaca"),
  ("Pearson, Jescie P.","a.tortor.nunc@hotmail.net","Phuthaditjhaba"),
  ("Hoffman, Eric T.","mauris.erat@yahoo.edu","Guápiles"),
  ("Mcintyre, Virginia H.","magna.nam@yahoo.net","Simpang"),
  ("Griffin, Yen F.","aliquet.lobortis@outlook.com","Wijshagen"),
  ("Lambert, Arthur X.","in.faucibus.orci@protonmail.ca","Nizhny");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Crosby, Tobias I.","vulputate.posuere.vulputate@hotmail.net","Fortune"),
  ("Landry, Erica E.","montes.nascetur.ridiculus@aol.org","Szczecin"),
  ("Howe, Dorian Y.","vivamus.molestie@icloud.couk","Dehradun"),
  ("Valentine, Raphael L.","donec.tempus@protonmail.com","Åkrehamn"),
  ("Watkins, Wyatt U.","sit.amet@yahoo.edu","Kotamobagu"),
  ("Bullock, Octavia D.","gravida.praesent@hotmail.edu","Heilongjiang"),
  ("Mclaughlin, Dahlia P.","tincidunt@outlook.edu","Spittal an der Drau"),
  ("Waters, Simone S.","egestas.aliquam@protonmail.org","Belcarra"),
  ("Herman, Jerome E.","tellus.faucibus@hotmail.com","Puntarenas"),
  ("Blair, Sebastian A.","ultrices.mauris@yahoo.couk","Cartagena");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Andrews, Nehru I.","semper.cursus@protonmail.com","Pozo Almonte"),
  ("Neal, Madeline G.","volutpat@icloud.couk","Magadan"),
  ("Duran, Ferdinand W.","sodales.mauris@hotmail.net","Mielec"),
  ("Dejesus, Maya O.","aliquam@icloud.net","Gangneung"),
  ("Valdez, Quinlan Y.","a@yahoo.org","Bruck an der Mur"),
  ("Graham, Colorado C.","non.quam@outlook.couk","San Jose"),
  ("Conner, Evelyn C.","odio.sagittis.semper@aol.edu","Rangiora"),
  ("Tucker, Fleur O.","tristique@outlook.edu","Stratford"),
  ("Pitts, Lillith D.","lacus.nulla.tincidunt@outlook.edu","Ningxia"),
  ("Murray, Leilani P.","nunc.est.mollis@protonmail.com","Mandya");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Alvarado, Adria K.","mauris.integer@hotmail.edu","Lorient"),
  ("Whitley, August V.","eu.tempor@google.org","Alajuela"),
  ("Shaffer, Ora B.","aliquet.proin.velit@hotmail.org","Zweibrücken"),
  ("Alston, Heidi S.","consequat.nec.mollis@icloud.com","Haridwar"),
  ("Armstrong, Christine M.","condimentum@icloud.ca","Nuragus"),
  ("Sloan, Eve M.","lacus.varius.et@hotmail.edu","Cirencester"),
  ("Parrish, Stephanie W.","nunc.mauris.sapien@outlook.com","Freirina"),
  ("Pickett, Michelle P.","magna.et.ipsum@protonmail.edu","Caerphilly"),
  ("Joyce, Yetta N.","faucibus.id@protonmail.net","Shrewsbury"),
  ("Cabrera, Sylvia P.","ut.dolor.dapibus@yahoo.net","Pica");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Combs, Moana C.","rutrum.fusce.dolor@outlook.org","Puyehue"),
  ("Ewing, Christen F.","nisi.magna@yahoo.net","Bukit Batok"),
  ("Peck, Hyatt U.","quis.turpis@google.ca","Jönköping"),
  ("Grimes, Kaseem G.","consectetuer.mauris.id@protonmail.org","General Escobedo"),
  ("Chapman, Sopoline I.","facilisis.vitae.orci@yahoo.edu","Ligao"),
  ("Sanford, Linda P.","adipiscing.elit@yahoo.edu","Tam Kỳ"),
  ("Carpenter, Jada E.","etiam.ligula@protonmail.org","Karapınar"),
  ("Watson, Danielle W.","maecenas.iaculis@protonmail.edu","Ceuta"),
  ("Humphrey, Xena Z.","adipiscing.lobortis@yahoo.net","Villa Alegre"),
  ("Crane, Ima J.","ornare.in.faucibus@aol.net","Mataram");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Rhodes, Amena N.","euismod.in@icloud.net","Łódź"),
  ("Thompson, Iris E.","placerat.augue@outlook.org","Douai"),
  ("Cash, Fatima I.","metus.vivamus.euismod@outlook.com","Queenstown"),
  ("Benton, Donovan K.","erat.vitae.risus@aol.net","Peshawar"),
  ("Sheppard, Aurelia F.","consequat.enim.diam@protonmail.edu","Bengkulu"),
  ("Lester, April O.","aliquam.arcu@protonmail.com","Jeju"),
  ("Rasmussen, Chadwick O.","nulla@hotmail.ca","Uddevalla"),
  ("Shelton, Kiona I.","purus.accumsan@aol.couk","Heilongjiang"),
  ("Richard, Dawn L.","malesuada.vel@protonmail.edu","San Martino in Pensilis"),
  ("Mckenzie, Joan D.","duis.sit.amet@aol.net","Kohistan");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Middleton, Chandler E.","aliquam@hotmail.couk","Kraków"),
  ("Reid, Tarik K.","cras.vulputate@protonmail.edu","Juliaca"),
  ("Stephens, Karly H.","ac.arcu@icloud.couk","Korosten"),
  ("Ferguson, Patrick V.","enim@google.org","Stargard Szczeciński"),
  ("Yang, Emily A.","phasellus.vitae@google.couk","Rawalakot"),
  ("Robinson, Farrah F.","aenean@outlook.com","Finkenstein am Faaker See"),
  ("Harding, Basil F.","magna.duis@aol.org","Villahermosa"),
  ("Garcia, Linda H.","eu.turpis@hotmail.couk","Juazeiro do Norte"),
  ("Patrick, Lydia E.","adipiscing.fringilla@aol.ca","Gignod"),
  ("Wynn, Harlan E.","a.felis@icloud.ca","Cajamarca");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Woodard, Nash G.","blandit.mattis@yahoo.com","Piła"),
  ("Melendez, Arthur E.","lacus@google.org","Madison"),
  ("Chen, Wallace U.","orci.consectetuer.euismod@google.com","Herk-de-Stad"),
  ("Scott, Echo L.","lacus.nulla@icloud.org","Gignod"),
  ("Woodard, Anne B.","eu.nulla@google.net","Ambala"),
  ("Fleming, Griffin F.","lobortis.nisi@outlook.couk","Tilff"),
  ("Shepard, Emmanuel P.","proin.velit@outlook.net","Recco"),
  ("Dean, Colorado I.","pretium.aliquet@google.com","Kumluca"),
  ("Gross, Stacey N.","et.malesuada@hotmail.org","Calarcá"),
  ("Lewis, Brielle V.","lobortis.risus.in@protonmail.org","Dresden");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Duncan, Hedda I.","molestie@yahoo.org","Ockelbo"),
  ("Quinn, Sara D.","mauris.aliquam@protonmail.org","Gonnosnò"),
  ("Shaffer, Alec I.","malesuada.vel.venenatis@hotmail.com","Jayapura"),
  ("Maldonado, Nathan G.","sit.amet.lorem@outlook.couk","San Juan de Pasto"),
  ("Finch, Nathan M.","donec.nibh.quisque@icloud.org","Invercargill"),
  ("Pate, Brody V.","lacus.varius@outlook.com","Saint Louis"),
  ("Salas, Forrest K.","consequat.purus.maecenas@google.couk","Vashkivtsi"),
  ("Vincent, Robin S.","dolor@aol.org","Zhytomyr"),
  ("Porter, Grady I.","tempus.scelerisque@google.ca","Porvenir"),
  ("Bryan, Erasmus C.","nunc.nulla@aol.com","Caldera");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Cooper, Shay E.","non.enim.commodo@aol.net","Okene"),
  ("Mann, Chaim G.","eget.ipsum@icloud.net","Gävle"),
  ("Hart, Zoe M.","aliquam.ultrices@outlook.net","Korba"),
  ("Riley, Perry O.","mauris.non@outlook.net","Collipulli"),
  ("Vance, Walker V.","eu.erat@icloud.edu","Marbaix"),
  ("Dickson, Cody X.","mauris.quis@icloud.org","Tauranga"),
  ("Hobbs, Rylee A.","enim@yahoo.com","Mora"),
  ("Salazar, Minerva M.","ultrices.mauris.ipsum@google.couk","Itabuna"),
  ("Price, Lance W.","vel@yahoo.edu","Neunkirchen"),
  ("Dalton, Amery J.","vehicula.aliquet@outlook.com","Vernole");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Holcomb, Abigail L.","sed.nulla@yahoo.ca","Jerez de la Frontera"),
  ("Montgomery, Vernon N.","lacinia.sed@icloud.net","Tarma"),
  ("Morrow, Lucius M.","eu.euismod@icloud.net","Suwałki"),
  ("Dalton, Isaiah M.","bibendum.fermentum@aol.ca","Mapiripana"),
  ("Beasley, Lewis R.","euismod.ac@protonmail.edu","Caxias do Sul"),
  ("Zamora, Gail W.","fermentum.convallis@outlook.org","Göksun"),
  ("Tanner, Ava V.","lorem.lorem@aol.couk","Nazilli"),
  ("Dixon, Keaton H.","vitae.aliquam@yahoo.org","Andong"),
  ("Benson, Isabelle G.","penatibus.et.magnis@google.net","Oslo"),
  ("Wiley, Darius Q.","rutrum.urna@aol.com","Tanjung Pinang");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Velasquez, Steel L.","risus.quisque@icloud.edu","Ikot Ekpene"),
  ("Lott, Isaac S.","amet.dapibus@outlook.org","Biên Hòa"),
  ("Gross, Richard A.","mattis.cras@protonmail.org","Mount Gambier"),
  ("Yates, Aidan Y.","ornare@google.net","Culiacán"),
  ("Hinton, Hoyt Y.","phasellus.vitae@google.ca","Alajuela"),
  ("Jimenez, Jasmine P.","nisi.nibh.lacinia@hotmail.com","Phố Mới"),
  ("Hogan, Preston S.","per.inceptos@yahoo.couk","Liberia"),
  ("Walter, Kirestin T.","iaculis.enim.sit@yahoo.couk","Novgorod"),
  ("Dodson, Kyle Z.","metus.eu@protonmail.net","Belfast"),
  ("Pennington, Mannix Z.","id@outlook.org","Deventer");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Tanner, Ryan R.","quis.diam.luctus@protonmail.edu","Đồng Hới"),
  ("Copeland, Cassady A.","blandit.mattis@protonmail.edu","Itabuna"),
  ("Zimmerman, Martin H.","tincidunt@google.com","Owerri"),
  ("Boyle, Timon N.","pellentesque.tellus@google.couk","Chía"),
  ("Keith, Gwendolyn T.","elit.pretium.et@hotmail.edu","Belfast"),
  ("Weiss, Brenna R.","imperdiet.ullamcorper@outlook.com","Siquirres"),
  ("Robbins, Indira L.","fringilla.euismod.enim@hotmail.edu","Sunderland"),
  ("Peck, Alana O.","nam.consequat@aol.net","Anglet"),
  ("Blackburn, Jelani C.","ut.mi@protonmail.couk","Lamitan"),
  ("Pierce, Boris W.","id.libero@outlook.org","Gangneung");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Pope, Yoshi V.","sit.amet@icloud.couk","Bajaur Agency"),
  ("Blanchard, Irma F.","risus@hotmail.com","Chungju"),
  ("Peterson, Fiona V.","sodales@outlook.net","Konin"),
  ("York, Marsden A.","pharetra.ut.pharetra@yahoo.couk","Santander de Quilichao"),
  ("Simmons, Echo P.","malesuada.id.erat@hotmail.com","Konstanz"),
  ("Harrison, Yuli X.","morbi.non.sapien@google.edu","Almere"),
  ("Mcintosh, Troy S.","ornare.lectus.ante@outlook.com","Guntur"),
  ("Stevenson, Martena E.","etiam.vestibulum@icloud.ca","Ashburton"),
  ("Colon, Francis G.","enim@aol.net","Acciano"),
  ("Campbell, Adele D.","eu.arcu@google.net","San Juan del Cesar");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Maddox, Rahim R.","eu.metus@icloud.edu","São José"),
  ("Frye, Serina U.","orci@yahoo.org","Galway"),
  ("Curtis, Tad F.","quis@hotmail.couk","Huancayo"),
  ("Hart, Meghan E.","fringilla.donec.feugiat@yahoo.ca","Belogorsk"),
  ("Cleveland, Jaime M.","ipsum.phasellus.vitae@icloud.com","Bexbach"),
  ("Woodard, Hashim R.","fringilla.ornare@yahoo.ca","Gasteiz"),
  ("Daniel, Martena Q.","est.tempor@icloud.edu","Sandnes"),
  ("Merritt, Kameko J.","ante.blandit@outlook.org","Hamburg"),
  ("Ross, Vielka V.","malesuada@yahoo.edu","IJlst"),
  ("Head, Ian L.","sem.mollis@google.couk","Chiclayo");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Brewer, Cooper D.","ut@yahoo.couk","Göttingen"),
  ("Cooley, Lee U.","ac@google.edu","Gansu"),
  ("Stephenson, Malik F.","faucibus@yahoo.edu","Silifke"),
  ("Levine, Karly O.","malesuada.fames@google.ca","Astore"),
  ("Reilly, Inga Q.","nibh.lacinia@yahoo.ca","Tarnów"),
  ("Boyle, Nell B.","euismod.ac@outlook.org","Baltasound"),
  ("Mejia, Hoyt J.","fames.ac@yahoo.org","Belfast"),
  ("Huff, Xyla F.","euismod.mauris@yahoo.com","Sachs Harbour"),
  ("Shaw, Nigel K.","quis.pede@aol.ca","Newcastle"),
  ("Stephenson, Darrel X.","massa@aol.org","Uberaba");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Logan, Baker K.","dolor.vitae@outlook.edu","Boryeong"),
  ("Pierce, Jared A.","curabitur.dictum@outlook.net","Bandar Lampung"),
  ("Browning, Dolan N.","neque.in.ornare@yahoo.couk","Blitar"),
  ("Mayo, Palmer E.","sed@yahoo.net","Hermosillo"),
  ("Buckner, Holmes C.","congue.elit@icloud.ca","Kohima"),
  ("Holt, Doris P.","lacus.quisque@hotmail.couk","Borås"),
  ("Zamora, Rogan C.","dui.quis.accumsan@aol.ca","Ulloa (Barrial]"),
  ("Calderon, Chaney Y.","vitae.velit@icloud.org","Lienz"),
  ("Rivas, Hammett J.","magna@google.edu","Lehrte"),
  ("Figueroa, Vance Z.","ac.facilisis.facilisis@icloud.couk","Jilin");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Stephenson, Lacey T.","quam.vel@outlook.com","Heredia"),
  ("Smith, Ivy X.","imperdiet.non@protonmail.edu","Heilongjiang"),
  ("Charles, Basil P.","laoreet@aol.org","Pioneer"),
  ("Ellis, Leslie G.","vivamus@google.net","Saint-Étienne-du-Rouvray"),
  ("Harrington, Garrison D.","tincidunt.orci@outlook.org","Völkermarkt"),
  ("Pena, Oprah N.","arcu.vestibulum@google.edu","Toruń"),
  ("Johns, Karen Q.","proin.ultrices@google.ca","Galway"),
  ("Ball, Louis X.","vel.nisl.quisque@icloud.org","Khyber Agency"),
  ("Woods, Giacomo O.","donec.tincidunt@aol.com","Hong Kong"),
  ("Reese, Coby Q.","ipsum.primis@outlook.ca","Bauchi");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Hale, Ingrid M.","euismod.ac@aol.edu","Patos"),
  ("Coleman, Ingrid Q.","sodales.mauris@hotmail.couk","Pervomaisk"),
  ("Cooke, Alfreda G.","et@hotmail.com","Belfast"),
  ("Chambers, Inez N.","posuere.vulputate@aol.org","Empangeni"),
  ("French, Ariana G.","tortor.at@yahoo.com","Watson Lake"),
  ("Lara, Nyssa K.","tempus.scelerisque.lorem@google.net","Itanagar"),
  ("Crosby, Dale Y.","arcu.ac@aol.com","Volda"),
  ("Middleton, Alvin H.","nunc@icloud.org","Sumy"),
  ("Nielsen, Barrett M.","rutrum.fusce.dolor@aol.couk","Sangju"),
  ("Sharpe, Carla V.","laoreet.ipsum.curabitur@icloud.net","Champlain");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Frank, Quemby E.","libero@protonmail.couk","Rhayader"),
  ("Wilkinson, Harlan U.","venenatis.lacus@icloud.ca","Suwałki"),
  ("Hoffman, Kennan B.","egestas.ligula.nullam@protonmail.com","Hà Tĩnh"),
  ("Huber, Selma K.","arcu.nunc.mauris@aol.org","Istanbul"),
  ("Dale, Abigail A.","et.ultrices.posuere@hotmail.com","Sorsogon City"),
  ("Luna, Lydia F.","non.nisi@hotmail.edu","Sangju"),
  ("Hopkins, Nadine C.","urna.suscipit@protonmail.couk","Alchevsk"),
  ("Jarvis, Phyllis U.","amet.massa@hotmail.com","Söderhamn"),
  ("Nolan, Carson S.","vitae.dolor@google.edu","Voitsberg"),
  ("Stokes, Kareem Q.","eleifend.cras@outlook.org","Franeker");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Guthrie, Brennan M.","sem@aol.net","Spinoso"),
  ("Mendoza, Suki Y.","et.tristique@aol.edu","Arequipa"),
  ("Harrington, Chloe X.","donec.feugiat.metus@aol.org","Port Nolloth"),
  ("Bryant, Neil H.","taciti@yahoo.org","Mora"),
  ("Hansen, Bernard D.","maecenas.mi@hotmail.edu","Kalush"),
  ("Galloway, Geoffrey C.","accumsan.convallis@icloud.couk","Nässjö"),
  ("Rivera, Jamal P.","vel.vulputate.eu@protonmail.ca","Cajazeiras"),
  ("Rocha, Aristotle O.","aliquam.iaculis@outlook.edu","Kristiansund"),
  ("Salinas, Yolanda H.","non.magna@hotmail.net","Butte"),
  ("Vang, Melvin R.","nam.porttitor.scelerisque@aol.edu","Markham");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Moore, Cecilia Y.","molestie@yahoo.couk","Nîmes"),
  ("Callahan, Angela I.","diam.eu@icloud.net","Odessa"),
  ("Curry, Juliet E.","neque.tellus@protonmail.com","Dibrugarh"),
  ("Bell, Lois N.","nunc.mauris@google.ca","Cajazeiras"),
  ("Dennis, Daria M.","sem.elit@hotmail.org","Armidale"),
  ("Schwartz, Melodie N.","vivamus.rhoncus@icloud.com","Raigarh"),
  ("Carr, Colt I.","dolor.quisque.tincidunt@aol.ca","Guápiles"),
  ("Parrish, Boris W.","aliquam.erat.volutpat@google.ca","Kristiansund"),
  ("Miller, Karly W.","feugiat@aol.couk","Blehen"),
  ("Cotton, Raven G.","ipsum.porta@aol.ca","Dipolog");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("William, Dale I.","elit.pede@hotmail.net","Voitsberg"),
  ("Stein, Clinton I.","ornare.fusce@outlook.edu","Governador Valadares"),
  ("Reid, Morgan J.","est@protonmail.ca","Burnie"),
  ("Stuart, Fay W.","elit.pede.malesuada@google.org","Jennersdorf"),
  ("Holland, Galvin L.","fringilla.purus@google.com","Montecarotto"),
  ("Shepard, Lila Y.","pretium@google.couk","Piracicaba"),
  ("Good, Castor E.","tempus.scelerisque@protonmail.edu","Deutschkreutz"),
  ("Kennedy, Caryn E.","mauris.quis@outlook.couk","Mandal"),
  ("Hunter, Giacomo Z.","sagittis.placerat@yahoo.couk","Jeju"),
  ("Grant, Denton G.","facilisi.sed@yahoo.net","Bergama");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Berger, Margaret G.","donec.est.nunc@icloud.org","Bedok"),
  ("Farrell, Carlos Q.","pellentesque.tincidunt@google.com","Uruapan"),
  ("Fitzgerald, Damian N.","vehicula@aol.org","Hà Giang"),
  ("Whitley, Hilda J.","ut.ipsum@protonmail.net","Lạng Sơn"),
  ("Norris, Plato L.","accumsan.laoreet@protonmail.edu","Ceuta"),
  ("Schroeder, Marsden W.","eu.placerat@outlook.com","Duque de Caxias"),
  ("Vasquez, Caryn E.","vestibulum@protonmail.couk","Manizales"),
  ("Williamson, Scarlett Q.","pede.nonummy@outlook.couk","Henan"),
  ("Giles, Gisela I.","nunc@yahoo.couk","San Juan del Río"),
  ("Hunter, Teegan L.","nulla.tempor.augue@protonmail.ca","Belfast");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Guerrero, Jolene O.","mauris@protonmail.net","Maiduguri"),
  ("Ray, Adara P.","lacus.cras@yahoo.couk","Erciş"),
  ("Koch, Carol W.","fermentum.risus@google.edu","Nelson"),
  ("Phillips, Marah G.","molestie@hotmail.com","Velden am Wörther See"),
  ("Foster, Moses S.","arcu.vestibulum@aol.org","Ligao"),
  ("Ellison, Unity F.","arcu@icloud.net","Gonnosfanadiga"),
  ("Decker, Jocelyn Q.","dictum@google.ca","Pabianice"),
  ("Glass, Micah I.","ullamcorper.duis.cursus@google.com","Ikot Ekpene"),
  ("David, Colby C.","montes.nascetur@outlook.edu","Licantén"),
  ("Bowman, Dexter J.","tellus.sem.mollis@icloud.edu","Stratford");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Stein, Kane T.","nunc.pulvinar@icloud.edu","Haveli"),
  ("Mercado, Stacey J.","arcu.vestibulum@yahoo.couk","Tranås"),
  ("Norman, Lionel G.","aliquam@google.couk","Darwin"),
  ("Chase, Omar O.","risus.varius@hotmail.edu","Arequipa"),
  ("Harper, Brent R.","sed@aol.org","Cork"),
  ("Aguirre, Lucas X.","adipiscing.fringilla@hotmail.couk","Quibdó"),
  ("Hopper, Fredericka D.","curabitur@protonmail.com","Blenheim"),
  ("Hogan, Germane L.","non.luctus@yahoo.ca","Ulsan"),
  ("Atkinson, Quail N.","erat.sed@yahoo.ca","Phú Yên"),
  ("Black, Nerea P.","quisque.ornare@hotmail.net","Omsk");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Good, Madeline Y.","non.dui@hotmail.net","Uberlândia"),
  ("Cook, Faith E.","feugiat.sed@yahoo.edu","Arequipa"),
  ("Spencer, Paul B.","tortor.at@protonmail.ca","Bukit Batok"),
  ("Sears, Cora J.","nisi.aenean@protonmail.couk","Manavgat"),
  ("Leblanc, Burke W.","et@yahoo.couk","Bicinicco"),
  ("Daniel, TaShya T.","nam@protonmail.edu","Haguenau"),
  ("Cash, Vera S.","fusce.feugiat@icloud.edu","Hạ Long"),
  ("Holmes, Martin X.","sem.egestas.blandit@protonmail.com","Dunedin"),
  ("Sharpe, Hashim X.","sed.nec.metus@protonmail.net","Inner Mongolia"),
  ("Sykes, Jermaine O.","gravida.molestie.arcu@yahoo.ca","Logroño");
INSERT INTO `cliente` (`nome`,`email`,`cidade`)
VALUES
  ("Roth, Lynn H.","suspendisse.tristique@outlook.edu","Iquitos"),
  ("Lyons, Leonard W.","luctus.ipsum.leo@outlook.ca","Tirrases"),
  ("Hoover, Madonna H.","aliquam@google.org","Teruel"),
  ("Wilcox, Holly Y.","montes@aol.ca","Teruel"),
  ("Suarez, Sonya K.","ornare.facilisis@outlook.ca","Huancayo"),
  ("Bruce, Freya I.","eros.proin@hotmail.ca","Cabo de Hornos"),
  ("Benton, Daria E.","vivamus.molestie@protonmail.couk","Cork"),
  ("Dejesus, Carla S.","suspendisse.non.leo@aol.ca","Cherkasy"),
  ("Weaver, Naida V.","eget.magna@yahoo.net","Nasirabad"),
  ("Cantrell, Ahmed W.","sed.dictum@aol.ca","Chernihiv");
