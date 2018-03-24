local _, ns = ...


-- Table for multiple marking (Interrupts, Calling)
-------------------------------------------------------------
ns.enemies = {
    -- Darkheart Thicket [1466]
    [1] = {
        "Mindshattered Screecher",
        "Dreadsoul Ruiner",
        "Nightmare Dweller",
        "Bloodtainted Burster",
        "Dreadfire Imp",
        "Taintheart Summoner",
    },
    -- Halls of Valor
    [2] = {
        "Valarjar Thundercaller",
        "Valarjar Mystic",
        "Valarjar Runecarver",
    },
    -- Vault of the Wardens
    [3] = {
        "Felsworn Infester", -- Nightmares
        "Fel-Infused Fury", -- Unleash Fury --Immoliant fury cleava davanti
        "Malignant Defiler",
        "Deranged Mindflayer",
    },
    -- Eye of Azshara
    [4] = {
        "Hatecoil Stormweaver",
        "Hatecoil Oracle",
        "Hatecoil Crusher",
    },
    -- Blackrook Hold
    [4] = {
        "Risen Arcanist",
        "Risen Scout",
    },
    -- Neltharion's Lair
    [5] = {
        "Blightshard Skitter",
        "Rockback Gnasher",
        "Blightshard Shaper",
    },
    -- Maw of Souls
    [6] = {
        "Seacursed Mistmender",
        "Helarjar Champion",
        "Grasping Tentacle",
    },
    -- The Arcway
    [7] = {
        "Eredar Chaosbringer",
        "Withered Manawraith",
        "Nightborne Reclaimer", -- Eye of Vortex
        "Warp Shade",
        "Arcane Anomaly",
    },
    -- Court of Stars
    [8] = {
        "Guardian Construct",
        "Bound Energy",
        "Watchful Inquisitor",
        "Shadow Mistress",
    },
    -- Cathedral of Eternal Night
    [9] = {
        "Felguard Destroyer", -- Shadow Wall
        "Helblaze Soulmender", -- Demonic Mending
        "Dreadhunter",
        "Felborne Botanist",
        "Book of Eternal Winter",
        "Book of Arcane Monstrosities",
        "Book of Everlasting Silence",
    },
    -- Seat of the Triumvirate
    [10] = {
        "Famished Broken",
    },
     -- Kharazan Lower
    [11] = {
        "Ghostly Understudy",
        "Spectral Retainer", -- Oath of fealty Mind Control
        "Spectral Valet",
        "Spectral Attendant",
        "Arcane Warden",
        "Spectral Charger",
        "Spectral Stable Hand",
    },
     -- Kharazan Upper
     [12] = {
        "Forlorn Spirit",
        "Shrieking Terror",
    },
}

-- Table for High Priority Targets 
------------------------------------------------------------
        
ns.highPriority = {
    -- Darkheart Thicket [1466]
    [1] = {
        "Rotheart Keeper",
        "Bloodtainted Fury",
    },
    -- Halls of Valor
    [2] = {
        "Storm Drake",
        "Valarjar Purifier",
        "Ebonclaw Worg",
        "Stormforged Obliterator"
    },
    -- Vault of the Wardens
    [3] = {
        "Overloaded Lens",
        "Spirit of Vengeance",
        "Mogu'shan Secret-Keeper",
    },
    -- Eye of Azshara
    [4] = {
        "Skrog Tidestomper",
        "Skrog Wavecrasher",
        "Cove Seagull",
    },
    -- Neltharion's Lair
    [5] = {
        "Tarspitter Lurker",
        "Tarspitter Grub",
        "Wormspeaker Devout",
        "Rockbound Trapper",
        "Molten Charskin",
    },
    -- Maw of Souls
    [6] = {
        "Night Watch Mariner",
        "Shackled Servitor",
        "Destructor Tentacle",
    },
    -- The Arcway
    [7] = {
        "Acidic Bile",
        "Dreadborne Seer",
    },
    -- Court of Stars
    [8] = {
        "Duskwatch Sentry",
        "Felbound Enforcer",
    },
    -- Seat of the Triumvirate
    [9] = {
        "Rift Warden",
    },
    -- Seat of the Triumvirate
    [10] = {
        "Ghostly Philanthropist",
    },
    -- Karazhan Upper
    [11] = {
        "Knight",
    },
}