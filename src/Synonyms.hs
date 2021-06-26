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
        Synonyms "cortar" ["cortar", "amputar", "partir", "podar", "talar"], 
        Synonyms "hablar" ["hablar", "conversar", "dialogar", "charlar", "platicar"],
        Synonyms "convencer" ["convencer", "persuadir", "demostrar"],
        Synonyms "huir" ["huir", "desaparecer", "escapar", "escabullir", "desertar", "rehuir"], 
        Synonyms "viajar" ["viajar", "trasladar", "explorar",  "navegar"],
        Synonyms "enfrentar" ["enfrentar", "pelear", "confrontar", "encarar", "carear", "oponer", "contender", "pelear", "luchar", "combatir", "desafiar", "rivalizar"],
        Synonyms "rechazar" ["rechazar", "repudiar", "negar", "rehuir", "impugar"], 
        Synonyms "proponer" ["proponer", "sugerir", "plantear", "expresar", "enunciar", "presentar"], 
        Synonyms "robar" ["robar", "hurtar", "timar", "estafar", "quitar", "despojar", "usurpar"],
        Synonyms "mirar" ["mirar", "ver", "observar", "contemplar", "curiosear", "fisgar", "ojear"],
        Synonyms "aceptar" ["aceptar", "admitir", "aprobar", "consentir"],
        Synonyms "fingir" ["fingir", "aparentar", "simular", "engañar", "falsear", "mentir"],
        Synonyms "ayudar" ["ayudar", "auxiliar", "asistir", "apoyar", "cooperar", "coadyuvar", "contribuir"],
        Synonyms "llamar" ["llamar", "vocear", "gritar", "nombrar", "clamar"],
        Synonyms "espantar" ["espantar", "asustar", "aterrar", "alejar", "ahuyentar", "expulsar", "echar"],
        Synonyms "liberar" ["liberar", "libertar", "soltar", "emancipar", "independizar"], 
        Synonyms "transformar" ["transformar", "cambiar", "alterar", "variar", "modificar", "reformar"],
        Synonyms "quedar" ["quedar", "quedarse", "permanecer", "aguantar", "residir", "establecerse", "arraigarse"],
        Synonyms "buscar" ["buscar", "implorar", "pedir"],
        Synonyms "casa" ["casa", "residencia", "vivienda", "domicilio", "morada"],
        Synonyms "habitación" ["habitación", "cuarto", "aposento", "dormitorio", "salón"],
        Synonyms "cuchillo" ["cuchillo", "puñal", "navaja", "daga"],
        Synonyms "cabellera" ["cabellera", "pelo", "melena"], 
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
        Synonyms "consejera" ["consejera", "asesora", "guía", "monitora", "maestra", "profesora", "tutora"],
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
