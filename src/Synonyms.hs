--NordicTextAdventure.hs

module Synonyms (
    Synonyms,
    allSynonyms,
    key, 
    sym
    ) where

data Synonyms = Synonyms { 
    key :: String, 
    sym :: [String]
    } deriving (Eq,Show)

allSynonyms :: [Synonyms]
allSynonyms = 
    [
        Synonyms "entrar" ["entrar", "ingresar", "pasar", "acceder", "adentrarse"],
        Synonyms "tomar" ["tomar", "coger", "asir", "agarrar", "atrapar"],
        Synonyms "cortar" ["cortar", "amputar", "partir", "podar", "picar"], 
        Synonyms "hablar" ["hablar", "conversar", "dialogar", "charlar", "platicar"],
        Synonyms "convencer" ["convencer", "persuadir", "demostrar"],
        Synonyms "huir" ["huir", "desaparecer", "escapar", "escabullir", "desertar", "rehuir"], 
        Synonyms "viajar" ["viajar", "trasladar", "explorar",  "navegar", "ir"],
        Synonyms "enfrentar" ["enfrentar", "pelear", "confrontar", "encarar", "carear", "oponer", "contender", "pelear", "luchar", "combatir", "desafiar", "rivalizar"],
        Synonyms "rebelarme" ["rebelarme", "sublevarme", "enfrentarme", "pelearme", "luchar"],
        Synonyms "rechazar" ["rechazar", "repudiar", "negar", "rehuir", "impugar"], 
        Synonyms "proponer" ["proponer", "sugerir", "plantear", "expresar", "enunciar", "presentar"], 
        Synonyms "robar" ["robar", "hurtar", "timar", "estafar", "quitar", "despojar", "usurpar"],
        Synonyms "mirar" ["mirar", "ver", "observar", "contemplar", "curiosear", "fisgar", "ojear"],
        Synonyms "aceptar" ["aceptar", "admitir", "aprobar", "consentir"],
        Synonyms "fingir" ["fingir", "aparentar", "simular", "engañar", "falsear", "mentir"],
        Synonyms "engañar" ["fingir", "aparentar", "simular", "engañar", "falsear", "mentir"],
        Synonyms "ayudar" ["ayudar", "auxiliar", "asistir", "apoyar", "cooperar", "coadyuvar", "contribuir"],
        Synonyms "llamar" ["llamar", "vocear", "gritar", "nombrar", "clamar"],
        Synonyms "espantar" ["espantar", "asustar", "aterrar", "alejar", "ahuyentar", "expulsar", "echar"],
        Synonyms "liberar" ["liberar", "libertar", "soltar", "emancipar", "independizar"], 
        Synonyms "transformarme" ["transformarme", "cambiarme", "alterarme", "variarme", "modificarme", "reformarme"],
        Synonyms "quedarme" ["quedarme", "quedarse", "permanecer", "aguantar", "residir", "establecerse", "no huir", "establecerme", "arraigarme", "arraigarse"],
        Synonyms "buscar" ["buscar", "implorar", "pedir"],
        Synonyms "atraer" ["atraer", "seducir"],
        Synonyms "tratar" ["tratar", "intentar"],
        Synonyms "cumplir" ["cumplir"],
        Synonyms "mantenerse" ["mantenerse", "ser", "seguir"], 
        Synonyms "yegua" ["yegua", "caballo", "potro", "ponny"], 
        Synonyms "caballo" [ "caballo", "potro", "ponny"], 
        Synonyms "casa" ["casa", "residencia", "vivienda", "domicilio", "morada"],
        Synonyms "habitación" ["habitación", "cuarto", "aposento", "dormitorio", "salón", "alcoba"],
        Synonyms "cuchillo" ["cuchillo", "puñal", "navaja", "daga"],
        Synonyms "cabellera" ["cabellera", "pelo", "melena"], 
        Synonyms "fiel" ["fiel", "constante"], 
        Synonyms "Sift" ["Sift"],
        Synonyms "Thor" ["Thor"],
        Synonyms "mundo" ["mundo", "universo", "planeta", "tierra"],
        Synonyms "enanos" ["enanos", "pigmeos", "pequeños"],
        Synonyms "Brok" ["Brok"],
        Synonyms "Bladr" ["Bladr"],
        Synonyms "inmortalidad" ["inmortalidad"],
        Synonyms "Sidri" ["Sidri"],
        Synonyms "concurso" ["concurso", "competencia", "evento", "certamen", "examen", "prueba", "torneo", "competición"],
        Synonyms "dioses" ["dioses", "deidades", "divinidades"],
        Synonyms "Asgard" ["Asgard"],
        Synonyms "tesoros" ["tesoros", "fortunas", "bienes", "riquezas"],
        Synonyms "árbol" ["árbol", "arbusto"],
        Synonyms "águila" ["águila", "pájaro", "aguilucho", "halcón", "ave"],
        Synonyms "búsqueda" ["búsqueda", "cacería"],
        Synonyms "confinamientos" ["confinamientos", "encierros", "presidio", "reclusión", "cárcel", "cárceles"],
        Synonyms "Frigg" ["Frigg"],
        Synonyms "Tyr" ["Tyr"], 
        Synonyms "Odín" ["Odín"],
        Synonyms "Hodur" ["Hodur"],
        Synonyms "perdón" ["perdón", "absolución", "indulto", "gracia", "compasión", "clemencia", "condonación"],
        Synonyms "Ragnarok" ["Ragnarok"],
        Synonyms "consejera" ["consejera", "asesora", "guía", "monitora", "maestra", "profesora", "tutora", "anciana", "vieja"],
        Synonyms "a" ["a", "en"],
        Synonyms "de" ["de"],
        Synonyms "con" ["con"],
        Synonyms "no" ["no"],
        Synonyms "al" ["al"],
        Synonyms "un" ["un"],
        Synonyms "hacia" ["hacia", "al"],
        Synonyms "sobre" ["sobre", "acerca de"],
        Synonyms "en" ["en"]
    ]
