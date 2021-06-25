module Passages
(
    Passage,
    text,
    keywords,
    nextPossiblePassages,
    inicialPassage,
)where

data Passage = Passage {text :: String, keywords :: [String], nextPossiblePassages :: [Passage]} deriving (Show,Eq)

--Chapter 1

inicialPassage = Passage "Bienvenido a Loki Text Adventure\n Capítulo 1\n Eres Loki, Señor del Caos, hijo de los gigantes Farbuti y Laufey. Se te conoce hasta ahora como conflictivo, egocéntrico y megalómano. Tu actuación en esta historia llevará a que reine la paz en el mundo o este se sumerja en un caos total. Tienes tres hijos el enorme lobo Fenrir, la diosa de la muerte Hela y la serpiente marina Jormundgander. Tu historia comienza en Asgard, estas caminando por el medio de la plaza cuando pasas cerca de una casa con la puerta abierta y una luz encendida." [] [housePassage]

housePassage = Passage "Al entrar reconoces que es la casa del dios Thor y su esposa Sift, la cual parece estar en su habitación." ["entrar"] [roomPassage]

roomPassage = Passage "Cuando entras ves a Sift profundamente dormida y te quedas deslumbrado por su hermosa cabellera y sientes un deseo enorme por poseerla. Ves un cuchillo en la mesa." ["entrar","habitación"] [knifePassage]

knifePassage = Passage "Tienes el cuchillo en la mano." ["tomar","cuchillo"] [cutPassage] 

cutPassage = Passage "Cortas la cabellera de Sift y te vas corriendo a tu hogar pero Thor te ve saliendo de su casa. Al Thor entrar y encontrar a su esposa sin cabello, va enseguida a buscarte y te encuentra siguiendo el rastro de cabellos que has ido dejando. Finalmente Thor está frente a tí muy molesto." ["cortar", "cabello"] [talkThorPassage]

talkThorPassage = Passage "Thor se da cuenta que llevas la mayor parte de la cabellera de Sift escondidad en una bolsa. Ahora tienes tres opciones : convencer a Thor de que puedes arreglar el daño que has hecho, huir de él o enfrentarlo." ["hablar", "Thor"] [convinceThorPassage,runThorPassage,fightThorPassage]

convinceThorPassage = Passage "Le dices que puedes viajar al mundo de los enanos donde estos podrán fabricar una cabellera mejor para Sift. Thor acepta y por tanto ahora deberás viajar al mundo de los enanos." ["convencer"] [travelPassage]

runThorPassage = Passage "Al intentar huir de Thor te tropiezas con el dios Frey que al ver a Thor persiguiéndote decide detenerte. Thor le cuenta a Frey y este lo comprueba al ver que llevas la cabellera escondida en una bolsa. Entre ambos te exigen reparar el daño que has hecho, si no te castigarán entre los dos. Para esto tendrás que viajar al mundo de los enanos o negarte y asumir las consecuencias." ["huir"] [negateTravelRunPassage, travelPassage]

negateTravelRunPassage = Passage "Como te niegas a enmendar tu crimen. Thor y Frey te castigan y tan duro te golpea Thor enfurecido que acabas muriendo. Llegaste a tu fin." ["No","mundo","enanos"] []

fightThorPassage = Passage "Odín, dios supremo de Asgard, los ve peleando en medio de la plaza y decide intervenir. Al explicarle Thor lo que había pasado te exige ir al mundo de los enanos para conseguirle una mejor cabellera a Sift y que si no lo haces serás desterrado de Asgard por tu crimen." ["enfrentar"] [negateTravelFightPassage, travelPassage]

negateTravelFightPassage = Passage "Como te niegas a reparar el daño que has hecho Odín te destierra. Thor aún no complacido con la decisión de Odín te persigue y ambos se enfrentan muriendo los dos en igualado combate. Así ha llegado tu fin." ["No","mundo","enanos"] []

travelPassage = Passage "Llegas al mundo de los enanos cuyo nombre es Svartalfaheim, allí te encuentras a los hermanos Brok y Sidri. Deberías intentar hablar con alguno de ellos." ["viajar", "mundo", "enanos"] [firstTalkBrokPassage,firstTalkSidriPassage]

firstTalkBrokPassage = Passage "Hablas con Brok y le pides que haga una caballera para Sift pero este se rehusa argumentando que no tiene porqué hacerlo. Quizás Sidri esté de mejor humor" ["hablar","Brok"] [secondTalkSidriPassage]

firstTalkSidriPassage = Passage "Hablas con Sidri y le pides que haga una caballera para Sift pero este se rehusa argumentando que no tiene porqué hacerlo. Quizás Brok esté de mejor humor" ["hablar","Sidri"] [secondTalkBrokPassage]

secondTalkBrokPassage = Passage "Brok te responde de igual forma. Vaya parece que hoy no es tu día. Sin embargo recuerdas que los enanos son muy competitivos cuando de forjar artículos se trata. Quizás puedas aprovecharte de esto." ["hablar","Brok"] [competitionPassage]

secondTalkSidriPassage = Passage "Sidri te responde de igual forma. Vaya parece que hoy no es tu día. Sin embargo recuerdas que los enanos son muy competitivos cuando de forjar artículos se trata. Quizás puedas aprovecharte de esto." ["hablar","Sidri"] [competitionPassage]

competitionPassage = Passage "Engañas a los enanos deiciéndoles que los dioses han organizado un concurso para ver quien forja los mejores artículos. Como resultado Brok fabrica la cabellera dorada de Sift, el barco Skidblandnes y la lanza Gungnir. Por su parte Sindri fabrica un cerdo con sedas de oro, la argolla de oro Draupnir y el martillo Mjolnir. Cada uno de estos tesoros tiene diferentes propiedades mágicas. Entonces los enanos te preguntan acerca del concurso pero tu bien sabes que no existe tal cual. Básicamente tus opciones se reducen a Asgard y convencer a los dioses de realizar el concurso improvisado o robarte los tesoros descaradamente." ["enanos","concurso"] [convinceAesirPassage, stealTreasuresPassage]

convinceAesirPassage = Passage "Viajas a Asgard y convences a Odín, Thor y Frey de que actúen como jueces. Ellos acceden. El concurso se realiza y se escoge el martillo Mjolnir como el mejor de los tesoros. Los tres dioses se reparten los tesoros entre ellos y todos quedan felices y contentos. Este capítulo ha terminado para pasar al siguiente escribe 'siguiente'" ["convencer"] [chapter2InicialPassage]

stealTreasuresPassage = Passage "Al tratar de robar los tesoros, los enanos te capturan y te atan a una roca con una soga irrompible. Producto de esto no podrás escapar y quedarás encadenado para siempre. Así has llegado a tu fín." ["robar"] []

--Chapter 2

chapter2InicialPassage = Passage "Capítulo 2\n Un día Odín, Hoenir y tú deciden hacer una excursión hacia el bosque de Mitgard. Por el camino cazan y deciden asar un ciervo. Cuando encienden el fuego se dan cuenta que este no quemaba. Una extraña brisa provenía de un árbol cercano." ["siguiente"] [treeLookPassage]

treeLookPassage = Passage "Cuando miran hacia el árbol notan que hay un águila posada la cual parece estar usando magia. Como el águila parece mágica posiblemente hable o bien podrías tratar de espantarla para ver si los deja en paz." ["mirar","árbol"] [talkEaglePassage]

talkEaglePassage = Passage "Al hablar con el águila esta les dice que les dejará en pasa a cambio de un buen trozo del asado. Aceptarás o rechazarás la propuesta del águila?" ["hablar","águila"] [acceptEaglePassage]

acceptEaglePassage = Passage "El águila agradecida empieza a coger del asado pero coge demasiado y entonces decides espantarla pero esta de atrapa con sus garras y se eleva en el cielo contigo. Resulta que al águila es el gigante de la tormenta Thjazi disfrazado. A cambio de liberarte te ordena secuestrar a Idúnn, la guardiana de las manzanas de la inmortalidad (manzanas que comían los dioses para mantenerse jóvenes). Queda por ti decidir si acepatas o rechazas el trato." ["aceptar"] [rejectThjaziPassage,acceptThjaziPassage]

rejectThjaziPassage = Passage "Te niegas a aceptar tal oferta, por lo que Thjazi se molesta y se eleva en el aire contigo hasta que desde una enorme altura te deja caer. Sin posibilidad de hacer nada mueres debido a la caída desde tal altura. Así ha llegado tu fin." ["rechazar"] []

acceptThjaziPassage = Passage "Pues así lo haces secuestras a Idúnn y se la entregas a Thjazi. Al día siguiente Odín y Thor van a buscar a Idúnn para comer cada uno una mazana de inmortalidad. Obviamente no la encuentran pero una ardilla les cuenta lo que ha ocurrido. Van a buscarte bastante molestos y te encuentran. Por ti queda ahora decidir si ayudarles a buscar a Idúnn o fingir que no tienes nada que ver con su desaparición." ["aceptar"] [pretendIdunnPassage,searchIdunnPassage]

pretendIdunnPassage = Passage "Ambos no te creen ni una palabra. Parece que esta vez para salvar tu pellejo tendrás que buscar a Idúnn sí o sí." ["fingir"] [searchIdunnPassage]

searchIdunnPassage = Passage "Después de una exhaustiva búsqueda encuentras la cueva donde se oculta el gigante Thjazi. Lo enfrentarás solo o llamarás a los otros dioses para que te ayuden." ["buscar"] [figthAlonePassage,callAesirPassage]

figthAlonePassage = Passage "Aunque la lucha fue dura, el poder de Thjazi era demasiado y te acaba dando muerte. Lamentablemente llegaste a tu fin." ["solo"] []

callAesirPassage = Passage "Con ayuda de Odín y Thor matas al gigante y rescatas a Idúnn. Cada uno come una manzana de inmortalidad y todo termina bien. Aquí termina el segundo capítulo, para pasar al tercero y último escribe 'siguinte'" ["llamar","dioses"] []

rejectEaglePassage = Passage "El águila molesta por el rechazo te atrapa con sus garras y se eleva en el cielo contigo. Resulta que al águila es el gigante de la tormenta Thjazi disfrazado. A cambio de liberarte te ordena secuestrar a Idúnn, la guardiana de las manzanas de la inmortalidad (manzanas que comían los dioses para mantenerse jóvenes). Queda por ti decidir si acepatas o rechazas el trato." ["rechazar"] [rejectThjaziPassage,acceptThjaziPassage]

scarAwayEaglePassage = Passage "Tratan de espantar el águila pero esta vuela cada vez más alto y no por eso la magia deja de afectar el fuego. Entonces tratan de hacer el asado en otro lugar pero el águila les persigue a donde quiera que vayan. Ya molestos, cansados y hambrientos deciden volver a Asgard. Aquí termina el segundo capítulo, para pasar al tercero y último escribe 'siguinte'" ["espantar"] []