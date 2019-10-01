type CarMake = AlfaRomeo | BMW | Ferarri | Ford | Honda | McLaren | Mercedes | Renault

carMakes : List CarMake
carMakes = [ AlfaRomeo, BMW, Ferarri, Ford, Honda, McLaren, Mercedes, Renault ]

successor : Maybe CarMake -> Maybe CarMake
successor m =
    case m of
        Nothing -> AlfaRomeo
        Some c ->
            case c of
                AlfaRomeo -> BMW
                BMW -> Ferarri
                ...
                Mercedes -> Renault
                Renault -> Nothing
