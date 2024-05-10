rank = 0
xp = 0
color = c_red

yscroll = 0
yscrollreal = 0
//Special Rainbow colors!
red = 255
green = 255
blue = 255
if rank = 2 {
red = 255
green = 0
blue = 255	
}
change = 0
color = make_color_rgb(red,green,blue)


//Hats bugfix
scr_savehats()
hatbugfix = 0
if global.hat001 = -1 {hatbugfix += 1}
if global.hat003 = -1 {hatbugfix += 1}
if global.hat008 = -1 {hatbugfix += 1}
if global.hat009 = -1 {hatbugfix += 1}
if global.hat010 = -1 {hatbugfix += 1}

//Skins
normalskins = global.skin001+global.skin002+global.skin003+global.skin004+global.skin005+global.skin006+global.skin007+global.skin008+global.skin009+global.skin010+global.skin012+global.skin014+global.skin015+global.skin016+global.skin017+global.skin019+global.skin020+global.skin021+global.skin023+global.skin024+global.skin026+global.skin027+global.skin028+global.skin029+global.skin030+global.skin031+global.skin032+global.skin033+global.skin034+global.skin036+global.skin037+global.skin038+global.skin039+global.skin040
reqnormalskins = 34
normalskinspercentage = (normalskins / reqnormalskins) * 100

legskins = global.skin011+global.skin013+global.skin018+global.skin022+global.skin025+global.skin035+global.skin041
reqlegskins = 7
legskinspercentage = (legskins / reqlegskins) * 100

allskins = normalskins + legskins

//Hats
allhats = global.hat001+global.hat002+global.hat003+global.hat004+global.hat005+global.hat006+global.hat007+global.hat008+global.hat009+global.hat010+global.hat011+global.hat012+global.hat013+global.hat014+global.hat015+global.hat016+global.hat017+global.hat018+global.hat019+global.hat020+global.hat021+global.hat022+global.hat023+global.hat024+global.hat025+global.hat026+global.hat027+global.hat028+global.hat029+global.hat030+global.hat031+global.hat032+hatbugfix
reqallhats = 32
hatspercentage = (allhats / reqallhats) * 100

//Challenges Bugfix
challengebugfix = 0
if global.hat001 != -1 {challengebugfix = 1}
Cprogress = challengebugfix+global.skin002+global.skin004+global.skin010+global.skin011+global.skin014+global.skin016+global.skin017+global.skin019+global.skin021+global.skin023+global.skin028+global.skin031+global.skin040+global.skin037+global.skin041
reqchallenge = 16

challengepercenntage = (Cprogress / reqchallenge) * 100


//PERFECT CHALLENGES
perfectchallenge = 0
if global.kaizochallengedeaths = 0 { perfectchallenge += 1 }
if global.blindchallengedeaths = 0 { perfectchallenge += 1 }
if global.bigroomchallengedeaths = 0 { perfectchallenge += 1 }
if global.troopchallengedeaths = 0 { perfectchallenge += 1 }
if global.slipperychallengedeaths = 0 { perfectchallenge += 1 }
if global.world6challengedeaths = 0 { perfectchallenge += 1 }
if global.ladderchallengedeaths = 0 { perfectchallenge += 1 }
if global.tutorialchallengedeaths = 0 { perfectchallenge += 1 }
if global.spikechallengedeaths = 0 { perfectchallenge += 1 }
if global.waterchallengedeaths = 0 { perfectchallenge += 1 }
if global.movingchallengedeaths = 0 { perfectchallenge += 1 }
if global.communitychallengedeaths = 0 { perfectchallenge += 1 }
if global.djumpchallengedeaths = 0 { perfectchallenge += 1 }
if global.cspikechallengedeaths = 0 { perfectchallenge += 1 }
if global.world7challengedeaths = 0 { perfectchallenge += 1 }
if global.speedchallengedeaths = 0 { perfectchallenge += 1 }

reqperfectchallenge = 16
perfectchallengepercentage = (perfectchallenge / reqperfectchallenge) * 100

//Hardmode
HMprogress = global.hardmodeunlock - 1
reqHM = 7
HMpercentage = (HMprogress / reqHM) * 100

//Worlds
Wprogress = global.world1 + global.world2 + global.world3 + global.world4 + global.world5 + global.skin017 + global.skin041
reqW = 7
Wpercentage = (Wprogress / reqW) * 100

//Achievements
allach = 0
scr_achievementstats()
reqach = 113
achpercentage = (allach / reqach) * 100

//Game progress
gameprogress = (Wpercentage + HMpercentage + achpercentage + legskinspercentage + challengepercenntage + perfectchallengepercentage + hatspercentage + normalskinspercentage) / 8

//Languages
switch(global.language) {
default: //English
MAINSTATS = "MAIN STATS:"
COINSCOLLECTED = "Coins Collected: "
JUMPS = "Jumps: "
PLAYTIME = "Playtime: "
SKIPPEDLEVELS = "Skipped Levels: "
TOTALPICKUPS = "Total Pickups: "
NORMALPICKUPS = "Normal Pickups: "
GRAVITYPICKUPS = "Gravity Pickups: "
ACCELERATIONPICKUPS = "Acceleration Pickups: "
SPIRALPICKUPS = "Spiral Pickups: "
KEYPICKUPS = "Key Pickups: "
PORTALSENTERED = "Portals Entered: "
TORCHPICKUPS = "Torch Pickups: "
LEVELSCOMPLETED = "Levels Completed: "
ENDLESSRUNHIGHSCORE = "Endless Run Highscore: "
OSENDLESSRUNHIGHSCORE = "Old School Endless Run Highscore: "
GUNSHOTS = "Gun Shots: "
GUNPICKUPS = "Gun Pickups: "
AMMOPICKUPS = "Ammo Pickups: "
DESTROYEDBOXES = "Destroyed Boxes: "
ENEMYKILLS = "Enemy Kills: "
ONEUPSCOLLECTED = "1UPs Collected: "
ROCKETSDESTROYED = "Rockets Destroyed: "
OXYGENPICKUPS = "Oxygen Pickups: "
DOUBLEJUMPPICKUPS = "Double Jump Pickups: "

DEATHS = "DEATHS:"
TOTALDEATHS = "Total Deaths: "
BLOCKDEATHS = "Block Deaths: "
RESTARTDEATHS = "Restart Deaths: "
SPIKEDEATHS = "Spike Deaths: "
INVSPIKEDEATHS = "Invisible Spike Deaths: "
VMOVINGSPIKEDEATHS = "Vertical Moving Spike Deaths: "
HMOVINGSPIKEDEATHS = "Horizontal Moving Spike Deaths: "
GOLDENSPIKEDEATHS = "Golden Spike Deaths: "
WEIRDSPIKEDEATHS = "Weird Spike Deaths: "
VOIDDEATHS = "Void Deaths: "
SETONFIRE = "Set on Fire: "
LAVADEATHS = "Lava Deaths: "
BULLETDEATHS = "Bullet Deaths: "
ROCKETDEATHS = "Rocket Deaths: "
TROOPDEATHS = "Troop Deaths: "
DROWNED = "Drowned: "

AVERAGES = "AVERAGES:"
AVERAGEDEATHSPERLEVEL = "Average Deaths Per Level: "
AVERAGETIMEPERLEVEL = "Average Time Per Level: "

PROGRESSION = "PROGRESSION:"
NORMALSKINSUNLOCKED = "Normal Skins Unlocked: "
LEGENDARYSKINSUNLOCKED = "Legendary Skins Unlocked: "
HATSACQUIRED = "Hats Acquired: "
HARDMODEDIFFICULTIESBEATEN = "Hardmode Difficulties Beaten: "
CHALLENGESBEATEN = "Challenges Beaten: "
PERFECTCHALLENGESBEATEN = "Perfect Challenges Beaten: "
WORLDSCOMPLETED = "World Completed: "
TOTALACHIEVEMENTS = "Total Achievements: "

FULLGAMECOMPLETION = "Full Game Completion: "

RANKL = "Rank: "
NEWBIE = "Newbie"
AMATEUR = "Amateur"
NOVICE = "Novice"
EXPERIENCED = "Experienced"
PROFESSIONAL = "Professional"
VETERAN = "Veteran"
SUPERVETERAN = "Super Veteran"
COLORMASTER = "Color Master"
GODGAMER = "God Gamer"
break;
case(1): //German
MAINSTATS = "HAUPTSTATISTIKEN:"
COINSCOLLECTED = "Münzen Gesammelt: "
JUMPS = "Sprünge: "
PLAYTIME = "Spielzeit: "
SKIPPEDLEVELS = "Übersprungene Level: "
TOTALPICKUPS = "Insgesamt Genutzte Pickups: "
NORMALPICKUPS = "Normale Pickups: "
GRAVITYPICKUPS = "Gravitation Pickups: "
ACCELERATIONPICKUPS = "Geschwindigkeits Pickups: "
SPIRALPICKUPS = "Spiral Pickups: "
KEYPICKUPS = "Schlüssel Pickups: "
PORTALSENTERED = "Portale Benutzt: "
TORCHPICKUPS = "Fackel Pickups: "
LEVELSCOMPLETED = "Level abgeschlossen: "
ENDLESSRUNHIGHSCORE = "Highscore im Endlosen Modus: "
OSENDLESSRUNHIGHSCORE = "Highscore im Old School Endlos Modus: "
GUNSHOTS = "Schüsse: "
GUNPICKUPS = "Waffen Aufgenommen: "
AMMOPICKUPS = "Munition Aufgenommen: "
DESTROYEDBOXES = "Boxen Zerstört: "
ENEMYKILLS = "Feinde Getötet: "
ONEUPSCOLLECTED = "Extra Leben Eingesammelt: "
ROCKETSDESTROYED = "Raketen Zerstört: "
OXYGENPICKUPS = "Sauerstoff Eingesammelt: "
DOUBLEJUMPPICKUPS = "Doppelsprung Pickups: "

DEATHS = "TODESFÄLLE:"
TOTALDEATHS = "Todesfälle Insgesamt: "
BLOCKDEATHS = "Tode durch Blöcke: "
RESTARTDEATHS = "Tode durch das Neustarten: "
SPIKEDEATHS = "Tode durch Stachel: "
INVSPIKEDEATHS = "Tode durch unsichtbare Stachel: "
VMOVINGSPIKEDEATHS = "Tode durch vertikal bewegte Stachel: "
HMOVINGSPIKEDEATHS = "Tode durch horizontal bewegte Stachel: "
GOLDENSPIKEDEATHS = "Tode durch goldene Stachel: "
WEIRDSPIKEDEATHS = "Tode durch merkwürdige Stachel: "
VOIDDEATHS = "Tode durch die Leere: "
SETONFIRE = "In Brand gesetzt: "
LAVADEATHS = "Tode durch Lava: "
BULLETDEATHS = "Tode durch Schusskugeln: "
ROCKETDEATHS = "Tode durch Raketen: "
TROOPDEATHS = "Tode durch Truppen: "
DROWNED = "Ertrunken: "

AVERAGES = "AM DURCHSCHNITTLICHSTEN: "
AVERAGEDEATHSPERLEVEL = "Normale Tode pro Level: "
AVERAGETIMEPERLEVEL = "Normale Zeit pro Level "

PROGRESSION = "FORTSCHRITT:"
NORMALSKINSUNLOCKED = "Normale Skins Freigeschaltet: "
LEGENDARYSKINSUNLOCKED = "Legendäre Skins Freigeschaltet: "
HATSACQUIRED = "Hüte bekommen: "
HARDMODEDIFFICULTIESBEATEN = "Hardmode Schwierigkeitsgrade Geschafft: "
CHALLENGESBEATEN = "Herausforderungen geschafft: "
PERFECTCHALLENGESBEATEN = "Herausforderung PERFEKT geschafft: "
WORLDSCOMPLETED = "Welten geschafft: "
TOTALACHIEVEMENTS = "Gesamte Errungenschaften: "

FULLGAMECOMPLETION = "Vollständiger Spielabschluss: "

RANKL = "Rang: "
NEWBIE = "Neuling"
AMATEUR = "Amateur"
NOVICE = "Novize"
EXPERIENCED = "Erfahren"
PROFESSIONAL = "Professioneller"
VETERAN = "Veteran"
SUPERVETERAN = "Super Veteran"
COLORMASTER = "Farbenmeister"
GODGAMER = "Gott Spieler"
break;
case(2): //French
MAINSTATS = "STATISTIQUES PRINCIPALES:"
COINSCOLLECTED = "Pièces collectées: "
JUMPS = "Sauts: "
PLAYTIME = "Temps de Jeux: "
SKIPPEDLEVELS = "Niveaux Sautés: "
TOTALPICKUPS = "Pickups Total: "
NORMALPICKUPS = "Pickups Normal: "
GRAVITYPICKUPS = "Pickups de Gravité: "
ACCELERATIONPICKUPS = "Pickups d'Accéleration: "
SPIRALPICKUPS = "Pickups de Spiral: "
KEYPICKUPS = "Pickups de Clés: "
PORTALSENTERED = "Portails Entrés: "
TORCHPICKUPS = "Torch Pickups: "
LEVELSCOMPLETED = "Niveaux Complétés: "
ENDLESSRUNHIGHSCORE = "Score élevé de course sans fin: "
OSENDLESSRUNHIGHSCORE = "Score élevé de course sans fin (Old School) : "
GUNSHOTS = "Tirs de Pistolets: "
GUNPICKUPS = "Pickups de Pistolets: "
AMMOPICKUPS = "Pickups de Munitions: "
DESTROYEDBOXES = "Boîtes Détruites: "
ENEMYKILLS = "Morts d'ennemis: "
ONEUPSCOLLECTED = "Une vie Collecté: "
ROCKETSDESTROYED = "Fusées détruites: "
OXYGENPICKUPS = "Pickups d'oxygène: "
DOUBLEJUMPPICKUPS = "Pickups de Double Saut: "

DEATHS = "MORTS:"
TOTALDEATHS = "Morts Totals: "
BLOCKDEATHS = "Morts de bloques: "
RESTARTDEATHS = "Morts de recommencement: "
SPIKEDEATHS = "Morts de pic: "
INVSPIKEDEATHS = "Morts de pic invisible: "
VMOVINGSPIKEDEATHS = "Morts de pic à mouvement vertical: "
HMOVINGSPIKEDEATHS = "Morts de pic à mouvement horizontal: "
GOLDENSPIKEDEATHS = "Morts de pic en or: "
WEIRDSPIKEDEATHS = "Morts de pic bizzare: "
VOIDDEATHS = "Morts du vide: "
SETONFIRE = "Mettre en feu: "
LAVADEATHS = "Morts de lave: "
BULLETDEATHS = "Morts de balles: "
ROCKETDEATHS = "Morts de fusée: "
TROOPDEATHS = "Morts de soldats: "
DROWNED = "Noyé: "

AVERAGES = "EN MOYENNE:"
AVERAGEDEATHSPERLEVEL = "Morts par niveaux en moyenne: "
AVERAGETIMEPERLEVEL = "Temps par niveaux en moyenne: "

PROGRESSION = "PROGRESSION:"
NORMALSKINSUNLOCKED = "Skins normaux débloqués: "
LEGENDARYSKINSUNLOCKED = "Skins légendaires débloqués: "
HATSACQUIRED = "Chapeaux acquis: "
HARDMODEDIFFICULTIESBEATEN = "Modes difficiles battus: "
CHALLENGESBEATEN = "Défis battus: "
PERFECTCHALLENGESBEATEN = "Défis PARFAITS battus: "
WORLDSCOMPLETED = "Mondes completés: "
TOTALACHIEVEMENTS = "Réalisations totales: "

FULLGAMECOMPLETION = "Achèvement du jeu complet: "

RANKL = "Rang: "
NEWBIE = "Nouveau"
AMATEUR = "Amateur"
NOVICE = "Novice"
EXPERIENCED = "Experiencé"
PROFESSIONAL = "Professionel"
VETERAN = "Veteran"
SUPERVETERAN = "Super Veteran"
COLORMASTER = "Maître de Couleur"
GODGAMER = "God Gamer"
break;
case(3): //Italian
MAINSTATS = "STATISTICHE PRINCIPALI:"
COINSCOLLECTED = "Monete Raccolte: "
JUMPS = "Salti: "
PLAYTIME = "Tempo di Gioco: "
SKIPPEDLEVELS = "Livelli Saltati: "
TOTALPICKUPS = "Pickups Totali: "
NORMALPICKUPS = "Pickups Normali: "
GRAVITYPICKUPS = "Pickups di Gravità: "
ACCELERATIONPICKUPS = "Pickups di Velocità: "
SPIRALPICKUPS = "Pickups Spirali: "
KEYPICKUPS = "Chiavi Raccolte: "
PORTALSENTERED = "Portali Utilizzati: "
TORCHPICKUPS = "Torce Usate: "
LEVELSCOMPLETED = "Livelli Completati: "
ENDLESSRUNHIGHSCORE = "Highscore in Endless Run: "
OSENDLESSRUNHIGHSCORE = "Highscore in Endless Run (Vecchia Scuola): "
GUNSHOTS = "Colpi Sparati: "
GUNPICKUPS = "Pistole Raccolte: "
AMMOPICKUPS = "Munizioni Raccolte: "
DESTROYEDBOXES = "Casse Distrutte: "
ENEMYKILLS = "Nemici Uccisi: "
ONEUPSCOLLECTED = "Cuori Raccolti: "
ROCKETSDESTROYED = "Razzi Distrutti: "
OXYGENPICKUPS = "Bolle di Ossigeno Raccolte: "
DOUBLEJUMPPICKUPS = "Double Jumps Raccolti: "

DEATHS = "MORTI:"
TOTALDEATHS = "Morti Totali: "
BLOCKDEATHS = "Morti da Blocchi: "
RESTARTDEATHS = "Morti da Restart: "
SPIKEDEATHS = "Morti da Punte: "
INVSPIKEDEATHS = "Morti da Punte Invisibili: "
VMOVINGSPIKEDEATHS = "Morti da Punte Verticali Mobili: "
HMOVINGSPIKEDEATHS = "Morti da Punte Orizzontali Mobili: "
GOLDENSPIKEDEATHS = "Morti da Punte Dorate: "
WEIRDSPIKEDEATHS = "Morti da Punte Strane: "
VOIDDEATHS = "Cadute nel Vuoto: "
SETONFIRE = "Preso Fuoco: "
LAVADEATHS = "Morti nella Lava: "
BULLETDEATHS = "Morti da Proiettili: "
ROCKETDEATHS = "Morti da Razzi: "
TROOPDEATHS = "Morti da Nemici: "
DROWNED = "Annegamenti: "

AVERAGES = "VALORI MEDI:"
AVERAGEDEATHSPERLEVEL = "Media di Morti per Livello: "
AVERAGETIMEPERLEVEL = "Tempo Medio per Livello: "

PROGRESSION = "PROGRESSI:"
NORMALSKINSUNLOCKED = "Skins Normali Sbloccate: "
LEGENDARYSKINSUNLOCKED = "Skins Leggendarie Sbloccate: "
HATSACQUIRED = "Cappelli Ottenuti: "
HARDMODEDIFFICULTIESBEATEN = "Difficoltà della Modalità Difficile Completate: "
CHALLENGESBEATEN = "Sfide Completate: "
PERFECTCHALLENGESBEATEN = "Sfide PERFETTE Completate: "
WORLDSCOMPLETED = "Mondi Completati: "
TOTALACHIEVEMENTS = "Medaglie Conquistate: "

FULLGAMECOMPLETION = "Completamento del Gioco: "

RANKL = "Rank: "
NEWBIE = "Newbie"
AMATEUR = "Dilettante"
NOVICE = "Novizio"
EXPERIENCED = "Esperto"
PROFESSIONAL = "Professionista"
VETERAN = "Veterano"
SUPERVETERAN = "Super Veterano"
COLORMASTER = "Maestro dei colori"
GODGAMER = "God Gamer"
break;
case(4): //Spanish
MAINSTATS = "ESTADISTICAS PRINCIPALES:"
COINSCOLLECTED = "Monedas collecionadas: "
JUMPS = "Saltos: "
PLAYTIME = "Tiempo de juego: "
SKIPPEDLEVELS = "Niveles saltados: "
TOTALPICKUPS = "Pickups totales: "
NORMALPICKUPS = "Pickups normales: "
GRAVITYPICKUPS = "Pickups de gravedad: "
ACCELERATIONPICKUPS = "Pickups de velocidad: "
SPIRALPICKUPS = "Pickups espiral: "
KEYPICKUPS = "Llaves recolectadas: "
PORTALSENTERED = "Portales utilizados: "
TORCHPICKUPS = "Antorchas usadas: "
LEVELSCOMPLETED = "Niveles completados: "
ENDLESSRUNHIGHSCORE = "Endless Run Highscore: "
OSENDLESSRUNHIGHSCORE = "Endless Run (Vieja Escuela) Highscore: "
GUNSHOTS = "Disparos de pistola: "
GUNPICKUPS = "Pistolas recolectadas: "
AMMOPICKUPS = "Municion recolectada: "
DESTROYEDBOXES = "Cajas destruidas: "
ENEMYKILLS = "Enemigos matados: "
ONEUPSCOLLECTED = "Vidas colectadas: "
ROCKETSDESTROYED = "Cohetes destruidos: "
OXYGENPICKUPS = "Pickups de oxigeno: "
DOUBLEJUMPPICKUPS = "Salto Doble recolectados: "

DEATHS = "MUERTES:"
TOTALDEATHS = "Muertes totales: "
BLOCKDEATHS = "Muertes de bloque: "
RESTARTDEATHS = "Muertes de Restart: "
SPIKEDEATHS = "Muertes de picos: "
INVSPIKEDEATHS = "Muertes de picos invisibles: "
VMOVINGSPIKEDEATHS = "Muertes de picos verticales con movimiento: "
HMOVINGSPIKEDEATHS = "Muertes de picos horinzontales con movimiento: "
GOLDENSPIKEDEATHS = "Muertes de picos dorados: "
WEIRDSPIKEDEATHS = "Muertes de raros picos: "
VOIDDEATHS = "Muertes por caerse al vacio: "
SETONFIRE = "Incendiar: "
LAVADEATHS = "Muertes de lava: "
BULLETDEATHS = "Muertes de bala: "
ROCKETDEATHS = "Muertes de cohete: "
TROOPDEATHS = "Muertes de tropas: "
DROWNED = "Ahogado: "

AVERAGES = "PROMEDIOS:"
AVERAGEDEATHSPERLEVEL = "Promedio de muertes por nivel: "
AVERAGETIMEPERLEVEL = "Promedio de tiempo por nivel: "

PROGRESSION = "PROGRESION:"
NORMALSKINSUNLOCKED = "Skins normales desbloqueadas: "
LEGENDARYSKINSUNLOCKED = "Skin legendarias desbloqueadas: "
HATSACQUIRED = "Sombreros adqueridos: "
HARDMODEDIFFICULTIESBEATEN = "Dificultad de la Modalidad Dificil completadas: "
CHALLENGESBEATEN = "Desafios completados: "
PERFECTCHALLENGESBEATEN = "Desafios PERFECTOS completados: "
WORLDSCOMPLETED = "Mundos completados: "
TOTALACHIEVEMENTS = "Logros totales: "

FULLGAMECOMPLETION = "Completar el juego: "

RANKL = "Rango: "
NEWBIE = "Nobato"
AMATEUR = "Amateur"
NOVICE = "Principiante"
EXPERIENCED = "Experiencado"
PROFESSIONAL = "Profesional"
VETERAN = "Veterano"
SUPERVETERAN = "Super Veterano"
COLORMASTER = "Maestro del color"
GODGAMER = "Jugador Maestro"
break;
}

NEWBIEP = NEWBIE + " +"
NEWBIEPP = NEWBIE + " ++"
AMATEURP = AMATEUR + " +"
AMATEURPP = AMATEUR + " ++"
NOVICEP = NOVICE + " +"
NOVICEPP = NOVICE + " ++"
EXPERIENCEDP = EXPERIENCED + " +"
EXPERIENCEDPP = EXPERIENCED + " ++"
PROFESSIONALP = PROFESSIONAL + " +"
PROFESSIONALPP = PROFESSIONAL + " ++"
VETERANP = VETERAN + " +"
VETERANPP = VETERAN + " ++"
SUPERVETERANP = SUPERVETERAN + " +"
SUPERVETERANPP = SUPERVETERAN + " ++"
COLORMASTERP = COLORMASTER + " +"
COLORMASTERPP = COLORMASTER + " ++"
GODGAMERP = GODGAMER + " +"
GODGAMERPP = GODGAMER + " ++"