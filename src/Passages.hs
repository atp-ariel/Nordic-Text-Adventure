module Passages
(
    Passage,
    pid,
    text,
    keywords,
    nextPossiblePassages,
    inicialPassage,
)where


data Passage = Passage { pid :: Int, text :: String, keywords :: [String], nextPossiblePassages :: [Passage]}

--Chapter 1

inicialPassage = Passage 1 "Bienvenido a Loki Text Adventure\n\nCapítulo 1\nEres Loki, Señor del Caos, hijo de los gigantes Farbuti y Laufey. Se te conoce hasta ahora como conflictivo, egocéntrico y megalómano. Tu actuación en esta historia llevará a que reine la paz en el mundo o este se sumerja en un caos total. Tienes tres hijos el enorme lobo Fenrir, la diosa de la muerte Hela y la serpiente marina Jormundgander. Tu historia comienza en Asgard, estas caminando por el medio de la plaza cuando pasas cerca de una casa con la puerta abierta y una luz encendida." [] [housePassage]

housePassage = Passage 2 "Al entrar reconoces que es la casa del dios Thor y su esposa Sift, la cual parece estar en su habitación." ["entrar", "casa"] [roomPassage]

roomPassage = Passage 3 "Cuando entras ves a Sift profundamente dormida y te quedas deslumbrado por su hermosa cabellera y sientes un deseo enorme por poseerla. Ves un cuchillo en la mesa." ["entrar","habitación"] [knifePassage]

knifePassage = Passage 4 "Tienes el cuchillo en la mano." ["tomar","cuchillo"] [cutPassage] 

cutPassage = Passage 5 "Cortas la cabellera de Sift y te vas corriendo a tu hogar pero Thor te ve saliendo de su casa. Al Thor entrar y encontrar a su esposa sin cabello, va enseguida a buscarte y te encuentra siguiendo el rastro de cabellos que has ido dejando. Finalmente Thor está frente a tí muy molesto. Deberías hablar con él." ["cortar", "cabello"] [talkThorPassage]

talkThorPassage = Passage 6 "Thor se da cuenta que llevas la mayor parte de la cabellera de Sift escondida en una bolsa. Ahora tienes tres opciones : convencer a Thor de que puedes arreglar el daño que has hecho, huir de él o enfrentarlo." ["hablar", "Thor"] [convinceThorPassage,runThorPassage,fightThorPassage]

convinceThorPassage = Passage 7 "Le dices que puedes viajar al mundo de los enanos donde estos podrán fabricar una cabellera mejor para Sift. Thor acepta y por tanto ahora deberás viajar al mundo de los enanos." ["convencer"] [travelPassage]

runThorPassage = Passage 8 "Al intentar huir de Thor te tropiezas con el dios Freyr que al ver a Thor persiguiéndote decide detenerte. Thor le cuenta a Frey y este lo comprueba al ver que llevas la cabellera escondida en una bolsa. Entre ambos te exigen reparar el daño que has hecho, si no te castigarán entre los dos. Para esto tendrás que viajar al mundo de los enanos o negarte y asumir las consecuencias." ["huir"] [negateTravelRunPassage, travelPassage]

negateTravelRunPassage = Passage 9 "Como te niegas a enmendar tu crimen. Thor y Freyr te castigan y tan duro te golpea Thor enfurecido que acabas muriendo. Llegaste a tu fin." ["no","mundo","enanos"] []

fightThorPassage = Passage 10 "Odín, dios supremo de Asgard, los ve peleando en medio de la plaza y decide intervenir. Al explicarle Thor lo que había pasado te exige ir al mundo de los enanos para conseguirle una mejor cabellera a Sift y que si no lo haces serás desterrado de Asgard por tu crimen." ["enfrentar"] [negateTravelFightPassage, travelPassage]

negateTravelFightPassage = Passage 11 "Como te niegas a reparar el daño que has hecho Odín te destierra. Thor aún no complacido con la decisión de Odín te persigue y ambos se enfrentan muriendo los dos en igualado combate. Así ha llegado tu fin." ["no","mundo","enanos"] []

travelPassage = Passage 12 "Llegas al mundo de los enanos cuyo nombre es Svartalfaheim, allí te encuentras a los hermanos Brok y Sidri. Deberías intentar hablar con alguno de ellos." ["viajar", "mundo", "enanos"] [firstTalkBrokPassage,firstTalkSidriPassage]

firstTalkBrokPassage = Passage 13 "Hablas con Brok y le pides que haga una caballera para Sift pero este se rehusa argumentando que no tiene porqué hacerlo. Quizás Sidri esté de mejor humor" ["hablar","Brok"] [secondTalkSidriPassage]

firstTalkSidriPassage = Passage 14 "Hablas con Sidri y le pides que haga una caballera para Sift pero este se rehusa argumentando que no tiene porqué hacerlo. Quizás Brok esté de mejor humor" ["hablar","Sidri"] [secondTalkBrokPassage]

secondTalkBrokPassage = Passage 15 "Brok te responde de igual forma. Vaya parece que hoy no es tu día. Sin embargo recuerdas que los enanos son muy competitivos cuando de forjar artículos se trata. Quizás puedas aprovecharte de esto." ["hablar","brok"] [competitionPassage]

secondTalkSidriPassage = Passage 16 "Sidri te responde de igual forma. Vaya parece que hoy no es tu día. Sin embargo recuerdas que los enanos son muy competitivos cuando de forjar artículos se trata. Quizás puedas aprovecharte de esto." ["hablar","sidri"] [competitionPassage]

competitionPassage = Passage 17 "Engañas a los enanos deiciéndoles que los dioses han organizado un concurso para ver quien forja los mejores artículos. Como resultado Brok fabrica la cabellera dorada de Sift, el barco Skidblandnes y la lanza Gungnir. Por su parte Sindri fabrica un cerdo con sedas de oro, la argolla de oro Draupnir y el martillo Mjolnir. Cada uno de estos tesoros tiene diferentes propiedades mágicas. Entonces los enanos te preguntan acerca del concurso pero tu bien sabes que no existe tal cual. Básicamente tus opciones se reducen a Asgard y convencer a los dioses de realizar el concurso improvisado o robarte los tesoros descaradamente." ["proponer","concurso"] [convinceAesirPassage, stealTreasuresPassage]

convinceAesirPassage = Passage 18 "Viajas a Asgard y convences a Odín, Thor y Frey de que actúen como jueces. Ellos acceden. El concurso se realiza y se escoge el martillo Mjolnir como el mejor de los tesoros. Los tres dioses se reparten los tesoros entre ellos y todos quedan felices y contentos. Este capítulo ha terminado para pasar al siguiente escribe 'siguiente'" ["convencer"] [chapter2InicialPassage]

stealTreasuresPassage = Passage 19 "Al tratar de robar los tesoros, los enanos te capturan y te atan a una roca con una soga irrompible. Producto de esto no podrás escapar y quedarás encadenado para siempre. Así has llegado a tu fín." ["robar"] []

--Chapter 2

chapter2InicialPassage = Passage 20 "Capítulo 2\nUn día Odín, Hoenir y tú deciden hacer una excursión hacia el bosque de Mitgard. Por el camino cazan y deciden asar un ciervo. Cuando encienden el fuego se dan cuenta que este no quemaba. Una extraña brisa provenía de un árbol cercano." ["siguiente"] [treeLookPassage]

treeLookPassage = Passage 21 "Cuando miran hacia el árbol notan que hay un águila posada la cual parece estar usando magia. Como el águila parece mágica posiblemente hable o bien podrías tratar de espantarla para ver si los deja en paz." ["mirar","árbol"] [talkEaglePassage,scarAwayEaglePassage]

talkEaglePassage = Passage 22 "Al hablar con el águila esta les dice que les dejará en paz a cambio de un buen trozo del asado. Aceptarás o rechazarás la propuesta del águila?" ["hablar","águila"] [acceptEaglePassage]

acceptEaglePassage = Passage 23 "El águila agradecida empieza a coger del asado pero coge demasiado y entonces decides espantarla pero esta de atrapa con sus garras y se eleva en el cielo contigo. Resulta que al águila es el gigante de la tormenta Thjazi disfrazado. A cambio de liberarte te ordena secuestrar a Idúnn, la guardiana de las manzanas de la inmortalidad (manzanas que comían los dioses para mantenerse jóvenes). Queda por ti decidir si aceptas o rechazas el trato." ["aceptar"] [rejectThjaziPassage,acceptThjaziPassage]

rejectThjaziPassage = Passage 24 "Te niegas a aceptar tal oferta, por lo que Thjazi se molesta y se eleva en el aire contigo hasta que desde una enorme altura te deja caer. Sin posibilidad de hacer nada mueres debido a la caída desde tal altura. Así ha llegado tu fin." ["rechazar"] []

acceptThjaziPassage = Passage 25 "Pues así lo haces secuestras a Idúnn y se la entregas a Thjazi. Al día siguiente Odín y Thor van a buscar a Idúnn para comer cada uno una mazana de inmortalidad. Obviamente no la encuentran pero una ardilla les cuenta lo que ha ocurrido. Van a buscarte bastante molestos y te encuentran. Por ti queda ahora decidir si ayudarles a buscar a Idúnn o fingir que no tienes nada que ver con su desaparición." ["aceptar"] [pretendIdunnPassage,searchIdunnPassage]

pretendIdunnPassage = Passage 26 "Ambos no te creen ni una palabra. Parece que esta vez para salvar tu pellejo tendrás que buscar a Idúnn sí o sí." ["fingir"] [searchIdunnPassage]

searchIdunnPassage = Passage 27 "Después de una exhaustiva búsqueda encuentras la cueva donde se oculta el gigante Thjazi. ¿Lo enfrentarás solo o llamarás a los otros dioses para que te ayuden?" ["buscar"] [figthAlonePassage,callAesirPassage]

figthAlonePassage = Passage 28 "Aunque la lucha fue dura, el poder de Thjazi era demasiado y te acaba dando muerte. Lamentablemente llegaste a tu fin." ["enfrentar"] []

callAesirPassage = Passage 29 "Con ayuda de Odín y Thor matas al gigante y rescatas a Idúnn. Cada uno come una manzana de inmortalidad y todo termina bien.  Aquí termina el segundo capítulo, para pasar al tercero y último escribe 'siguinte'." ["llamar","dioses"] [chapter3InicialPassage]

rejectEaglePassage = Passage 30 "El águila molesta por el rechazo te atrapa con sus garras y se eleva en el cielo contigo. Resulta que al águila es el gigante de la tormenta Thjazi disfrazado. A cambio de liberarte te ordena secuestrar a Idúnn, la guardiana de las manzanas de la inmortalidad (manzanas que comían los dioses para mantenerse jóvenes). Queda por ti decidir si acepatas o rechazas el trato." ["rechazar"] [rejectThjaziPassage,acceptThjaziPassage]

scarAwayEaglePassage = Passage 31 "Tratan de espantar el águila pero esta vuela cada vez más alto y no por eso la magia deja de afectar el fuego. Entonces tratan de hacer el asado en otro lugar pero el águila les persigue a donde quiera que vayan. Ya molestos, cansados y hambrientos deciden volver a Asgard. Aquí termina el segundo capítulo, para pasar al tercero y último escribe 'siguinte'." ["espantar"] [chapter3InicialPassage]

--Chapter 3

chapter3InicialPassage = Passage 32 "Capítulo3\nTus hijos Hela, Jormundgander y Fenrir han sido desterrados a diferentes mundos por los Aesir, previendo estos el posible daño que dichos 'monstruos' podrían ocasionarle al mundo. Hela fue confinada en el Helheim, el reino de los muertos por vejez o enfermedad, donde se convierte en reina y por ende diosa de los muertos junto a su perro Garm. Jormundgander fue arrojada al mar de Mitgard donde creció tanto hasta bordear la tierra mordiéndose la cola. Por último, a Fenrir le ataron con una soga irrompible. Aunque los Aesir los consideran monstruos peligrosos, también son tus hijos por lo que aquí deberás tomar una decisión fundamental que influirá en el destino del mundo. Te mantendrás fiel a los dioses o te rebelarás contra ellos y liberarás a tus hijos de sus confinamientos." ["siguiente"] [freeChildreenPassage,loyalAesirPassage]

freeChildreenPassage = Passage 33 "Según la profecía para cumplir con tu objetivo primero deberás dar muerte al dios Baldr, hijo de Odín y su esposa Frigg. Baldr tenía constantes pesadillas acerca de su muerte, por tal motivo Frigg hizo jurar a todos las cosas y seres en el reino que no le harían daño. De esta forma Baldr ganó una aparente inmortalidad. De todas formas puede que Frigg esconda algo que nadie sabe y tratar de hablar con ella podría ser de utilidad." ["rebelarme","dioses"] [talkFriggPassage]

talkFriggPassage = Passage 34 "Frigg conociendo tu personalidad se niega a hablar contigo del tema. Afortunadamente recuerdas que Frigg tiene una anciana consejera a la cual le cuenta todos sus secretos. Además entre tus poderes está el de la transformación en cualquier ser viviente que exista. Con esta información puedes trazar un plan para descubrir los secretos de Frigg" ["hablar","Frigg"] [transformCounselorPassage]

transformCounselorPassage = Passage 35 "Transformación realizada. Estás listo para hablar con Frigg" ["transformarme","consejera"] [transformTalkFriggPassage]

transformTalkFriggPassage = Passage 36 "Frigg ante la insistencia y como que eres su consejera de confianza te comenta que la única que no juró fue la planta de muérdago y que además no lo consideró importante pues la consideraba inofensiva. Conociendo eso envuelves una flecha con muérdago . Ahora solo necesitas a alguien que lance la flecha. De repente ves pasar al manco Tyr, al tuerto Odín y al ciego Hodur. Quizás puedas engañar a alguno de ellos para poder llevar a cabo tu plan" ["hablar","frigg"] [firstCheatTyrPassage, firstCheatOdinPassage, cheatHodurPassage]

firstCheatTyrPassage = Passage 37 "Tyr es manco no puede disparar un arco." ["engañar", "tyr"] [secondCheatOdinPassage, cheatHodurPassage]

firstCheatOdinPassage = Passage 38 "Odín ahora mismo no puede atenderte . Lleva mucha prisa pues tiene que preparar la próxima reunión de los dioses." ["engañar", "odín"] [secondCheatTyrPassage,cheatHodurPassage]

secondCheatTyrPassage = Passage 39 "Tyr es manco no puede disparar un arco." ["engañar", "tyr"] [cheatHodurPassage]

secondCheatOdinPassage = Passage 40 "Odín ahora mismo no puede atenderte . Lleva mucha prisa pues tiene que preparar la próxima reunión de los dioses." ["engañar", "odín"] [cheatHodurPassage]

cheatHodurPassage = Passage 41 "Como Hodur es ciego nadie nunca le había enseñado a disparar con arco y tú te ofreces a enseñarle . Casualmente Baldr venía pasando y como supuestamente nada puede dañarle, le pides de favor que se ponga de blanco, a lo que el accede sin problemas. Entonces le das la flecha envuelta en muérdago a Hodur, le ayudas a apuntar y este dispara la flecha matando a Baldr instantáneamente. Dada esta situación prefieres huir del lugar o quedarte para contar tu versión de los hechos." ["engañar","hodur"] [escapePassage,stayPassage]

stayPassage = Passage 42 "La mayoría de los Aesir llega rápidamente al lugar y tú le explicas tu versión de los hechos, o sea que estabas enseñando a Hodur a usar el arco y no entendías lo que le había pasado a Baldr. Al acercarse al cádaver de su hijo, Frigg ve la flecha envuelta en muérdago y recuerda que ya tu le habías preguntado acerca de la inmortalidad de Baldr y que más tarde le confesó el secreto a su consejera, la cual instantes después encontró atada de pies y manos. Frigg cuenta a los dioses estos hechos y se dancuenta que todo ha sido un plan orquestado por tí. Inmediatamente te encadenan a 3 rocas donde una serpiente te salpicará veneno constantemente.\n Pero este no es el final para ti pues los hijos de Fenrir: Skoll y Hati devorarán a el Sol y la Luna, ocasionando el terrible invierno Fimbul, que hará que la tierra se resquebraje liberándote a ti y a Fenrir de sus respectivas cadenas. El mundo se encuentra en total caos y la hora de la batalla final se acerca. Es momento de tomar tu decisión final. Buscarás el perdón de los dioses o te enfrentarás a ellos en el Ragnarok." ["quedarme"] [forgivePassage, ragnarokPassage]

escapePassage = Passage 43 "Huyes al bosque de Mitgard donde construyes una cabaña con 4 puertas para poder vigilar en todas las direcciones. Mientras tanto Hodur explica lo que ha pasado, o sea que tú le estabas enseñando a usar el arco con ayuda de Baldr. Al acercarse al cádaver de su hijo, Frigg ve la flecha envuelta en muérdago y recuerda que ya tu le habías preguntado acerca de la inmortalidad de Baldr y que más tarde le confesó el secreto a su consejera, la cual instantes después encontró atada de pies y manos. Frigg cuenta a los dioses estos hechos y se dan cuenta que todo ha sido un plan orquestado por tí. Los dioses salen a buscarte y cuando sientes su presencia escapas al río transformándote en salmón. Aún así los dioses te reconocen y te acaban atrapando con una red. Al final acaban encadenándote a tres rocas donde una serpiente te salpicará veneno constantemente. Pero este no es el final para ti pues los hijos de Fenrir: Skoll y Hati devorarán a el Sol y la Luna, ocasionando el terrible invierno Fimbul, que hará que la tierra se resquebraje liberándote a ti y a Fenrir de sus respectivas cadenas. El mundo se encuentra en total caos y la hora de la batalla final se acerca. Es momento de tomar tu decisión final. Buscarás el perdón de los dioses o te enfrentarás a ellos en el Ragnarok." ["huir"] [forgivePassage,ragnarokPassage]

forgivePassage = Passage 44 "Viajas a Asgard para pedir el perdón de los dioses pero estos lo rechazan. Ya no toleran tus actos y para evitar que vuelvas a hacer una de tus maldades te acaban matando. De esta forma ha llegado tu fin." ["buscar", "perdón"] []

ragnarokPassage = Passage 45 "Al ser liberado estás lleno de ira contra los Aesir. Jormundgander, la serpiente marina, se levantará del lecho profundo del océano para dirigirse a tierra. De las tierras del este, el ejército de los gigantes de escarcha, conducido por Hrym, saldrá de su hogar en Jotunheim y navegarán hacia los campos de batalla de Virgrid. Desde el norte, una segunda nave dirigirá sus velas a Virgrid, contigo a la cabeza y con Hela y los horrorosos habitantes del Helheim como peso muerto. En medio de esta agitación los gigantes del fuego de Muspelheim, conducidos por Surt avanzarán hacia el sur, hacia Virgrid, dejando todo a su paso ardiendo en llamas.\nHeimdall siendo el primero de los dioses que verá a los enemigos acercarse, hará sonar su cuerno despertando a todos los dioses. Todos los Aesir y los guerreros caídos en batalla se pondrán sus vestimentas de batalla. Este extenso ejército marchará hacia Virgrid y Odín cabalgará al frente blandiendo su lanza Gungnir.\nLa batalla comienza. Frey se enfrenta a Surt pero muere siendo el primero de los dioses en sucumbir. Tyr logrará matar al perro Garm pero será herido tan severamente que morirá. Tú te encuentras con Heimdall y ninguno sobrevive al igualado encuentro. Thor mata a Jormundgander pero solo pudo dar nueve pasos antes de caer muerto por la saliva venenosa que esta le salpicó. Odín pelea contra Fenrir pero finalmente es devorado por el lobo, tras una larga batalla. Vidar inmediatamente llega y venga a su padre, quebrándole la quijada al lobo y dándole muerte.\nEntonces Surt quema todo el universo y la muerte llega a todos los seres de la Tierra. Surgirán vapores tóxicos y las llamas estallarán abrasando el cielo con fuego. Finalmente, la Tierra quedará hundida en el mar.\n Fin de la historia" ["enfrentar","dioses","ragnarok"] []

loyalAesirPassage = Passage 46 "En el reino de Asgard, los dioses estaban intranquilos. Su hogar no tenía murallas para protegerse de los enemigos. Un día llego un jinete con su caballo que prometía construir la muralla si a cambio recibía a la diosa Freyja como pago. Los dioses se niegan rotundamente pero tu no ves la idea con malos ojos pues es imposible que el jinete terminará la construcción de las murallas en solo 6 meses, cuando más podría hacer la mitad y así les saldría gratis parte de la construcción. ¿Tratarás de convencer a los dioses para que cambien de parecer o apoyas la idea de rechazar la oferta?" ["mantenerse","fiel"] [acceptHorseRiderPassage, rejectHorseRiderPassage]

acceptHorseRiderPassage = Passage 47 "Logras convencer a los dioses de aceptar la oferta. Van pasando los 6 meses y el constructor está a punto de terminar su trabajo y por tanto tendrán que entregarle a Freya. Como tu los metiste en este lío, Odín te exige que lo resuelvas o tendrás que asumir terribles consecuencias. ¿Tratarás de cumplir lo que exige Odín o huirás de Asgard?" ["convencer","dioses"] [tryAcomplishPassage, escapeAsgardPassage]

escapeAsgardPassage = Passage 48 "Huyes al bosque de Mitgard donde construyes una cabaña con 4 puertas para poder vigilar en todas las direcciones. Mientras el cosntructor termina la muralla en el tiempo pactado y los Aesir, aunque indignados, mantienen su palabra y le entregan a Freyja. Los dioses salen a buscarte y cuando sientes su presencia escapas al río transformándote en salmón. Aún así los dioses te reconocen y te acaban atrapando con una red. Al final acaban encadenándote a tres rocas donde una serpiente te salpicará veneno constantemente. Pero este no es el final para ti pues los hijos de Fenrir: Skoll y Hati devorarán a el Sol y la Luna, ocasionando el terrible invierno Fimbul, que hará que la tierra se resquebraje liberándote a ti y a Fenrir de sus respectivas cadenas. El mundo se encuentra en total caos y la hora de la batalla final se acerca. Es momento de tomar tu decisión final. Buscarás el perdón de los dioses o te enfrentarás a ellos en el Ragnarok." ["huir"] [forgivePassage,ragnarokPassage]

tryAcomplishPassage = Passage 49 "Analizando lo que ha ocurrido en los casi 6 meses te das cuenta de que el gigante no podrá terminar trabajo sin la ayuda de su caballo. También se nota que el caballo se encuentra a falta de amor (si entiendes a lo que me refiero). Además, tu posees el poder de transformarte en cualquier ser existente, incluso de cualquier sexo. Con esta información deberías ser capaz de distraer al caballo del jinete." ["tratar","cumplir"] [transformMarePassage]

transformMarePassage = Passage 50 "Te has transformado en yegua" ["transformarme","yegua"] [attractHorsePassage]

attractHorsePassage = Passage 51 "El caballo se queda fascinado al verte transformado en yegua y comienza a perseguirte hasta que te alcanza. Al darse cuenta el constructor que no podrá terminar su trabajo a tiempo, este montó en cólera, cayéndosele el disfraz y revelándose como un gigante enemigo de los dioses. Thor fue al encuentro del gigante y le pagó con un martillazo de Mjolnir en la cabeza. Sin embargo, tú regresas preñado como yegua y das a luz a Sleipnir, un extraño caballo 8 patas y se lo regalás a Odín.\nAl final todo salio bien para los dioses: Asgard tienen una muralla casi completa, Fryja no tuvo que sacrificarse y Odín recibió un fabuloso córcel. Fin de la historia" ["atraer","caballo"] []

rejectHorseRiderPassage = Passage 52 "Junto con los otros dioses te opones a cambiar a Freyja por un trabajo de albañilería, por tanto, este se marcha y Asgard sigue sin muralla. Resulta que el jinete era un gigante de escarcha disfrazado, el cual le comenta a los suyos que Asgard está sin murallas y por tanto altamente desprotegida. Debido al odio y rivalidad entre los gigantes y los Aesir, Hyrm el líder decide que es momento de atacar a Asgard y tomar a los dioses desprevenidos. A la mañana siguiente el ejército de gigantes se abalanza sobre Asgard y debido a la ausencia de murallas penetran fácilmente. Aunque fue dura, tú y muchos otros dioses perecen en la batalla. Así ha llegado tu fin." ["rechazar"] []