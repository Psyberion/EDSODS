-- Error log
CREATE TABLE log (
        id                      INT             NOT NULL        AUTO_INCREMENT,         -- <Auto generated>
        timestamp               DATETIME        NOT NULL,                               -- Date/time error occurred
        message                 VARCHAR(255)    NOT NULL,                               -- Error details
        event_id                INT             NULL,                                   -- event.id
        PRIMARY KEY             (id)
);

-- Journal file log
CREATE TABLE journal (
        filename                VARCHAR(100)    NOT NULL,       -- Journal filename e.g. Journal.180303004553.01.log
        date_created            DATETIME        NOT NULL,       -- File creation date
        lines_imported          INT             NOT NULL,       -- Count of data lines in the file
        completed               CHAR(1)         NOT NULL,       -- Flag as to whether the file has been imported
        PRIMARY KEY             (filename)
);

-- Event: *ALL*
CREATE TABLE event (
        id                      INT             NOT NULL        AUTO_INCREMENT,         -- <Auto generated>
        timestamp               DATETIME        NOT NULL,                               -- *.timestamp
        type                    VARCHAR(100)    NOT NULL,                               -- *.event
        data                    TEXT            NOT NULL,                               -- <Full journal file line>
        filename                VARCHAR(100)    NOT NULL,                               -- Journal filename
        line                    INT             NOT NULL,                               -- Journal file line number
        parsed                  CHAR(1)         NOT NULL,                               -- event_<type> records created
        PRIMARY KEY             (id),
        UNIQUE KEY              file_line       (filename, line)
);

-- Event: AfmuRepairs
CREATE TABLE event_AfmuRepairs (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Module                  ARCHAR(100)    	NULL,           -- AfmuRepairs.Module
        Module_Localised        VARCHAR(100)    NULL,           -- AfmuRepairs.Module_Localised
        FullyRepaired           CHAR(1)    	    NULL,           -- AfmuRepairs.FullyRepaired
        Health                  MAL(7,6)        NULL,           -- AfmuRepairs.Health
        PRIMARY KEY             (event_id)
);

-- Event: ApproachBody
CREATE TABLE event_ApproachBody (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        StarSystem              VARCHAR(100)    NULL,           -- ApproachBody.StarSystem
        SystemAddress           BIGINT          NULL,           -- ApproachBody.SystemAddress
        Body                    VARCHAR(100)    NULL,           -- ApproachBody.Body
        BodyID                  INT             NULL,           -- ApproachBody.BodyID
        PRIMARY KEY             (event_id)
);

-- Event: ApproachSettlement
CREATE TABLE event_ApproachSettlement (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Name                    VARCHAR(100)    NULL,           -- event.Name
        MarketID                BIGINT          NULL,           -- event.MarketID
        SystemAddress           BIGINT          NULL,           -- event.SystemAddress
        BodyID                  INT             NULL,           -- event.BodyID
        BodyName                VARCHAR(100)    NULL,           -- event.BodyName
        Latitude                DECIMAL(9,6)    NULL,           -- event.Latitude
        Longitude               DECIMAL(9,6)    NULL,           -- event.Longitude
        PRIMARY KEY             (event_id)
);

-- Event: AsteroidCracked
CREATE TABLE event_AsteroidCracked (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Body                    VARCHAR(100)    NULL,           -- event.Body
        PRIMARY KEY             (event_id)
);

-- Event: Bounty
CREATE TABLE event_Bounty (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        
);

-- Event: BuyAmmo
CREATE TABLE event_BuyAmmo ();

-- Event: BuyDrones
CREATE TABLE event_BuyDrones ();

-- Event: Cargo
CREATE TABLE event_Cargo ();

-- Event: CargoDepot
CREATE TABLE event_CargoDepot ();

-- Event: CockpitBreached
CREATE TABLE event_CockpitBreached ();

-- Event: CodexEntry
CREATE TABLE event_CodexEntry ();

-- Event: CollectCargo
CREATE TABLE event_CollectCargo ();

-- Event: Commander
CREATE TABLE event_Commander (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        FID                     VARCHAR(100)    NULL,           -- Commander.FID
        Name                    VARCHAR(100)    NULL,           -- Commander.Name
        PRIMARY KEY             (event_id)
);

-- Event: CommitCrime
CREATE TABLE event_CommitCrime ();

-- Event: CommunityGoal
CREATE TABLE event_CommunityGoal ();

-- Event: CommunityGoalJoin
CREATE TABLE event_CommunityGoalJoin ();

-- Event: CommunityGoalReward
CREATE TABLE event_CommunityGoalReward ();

-- Event: CrewAssign
CREATE TABLE event_CrewAssign ();

-- Event: CrewFire


-- Event: EngineerProgress
CREATE TABLE event_EngineerProgress (
        event_id                        INT             NOT NULL,       -- event.id
        event_timestamp                 DATETIME        NOT NULL,       -- event.timestamp
        Engineer                        VARCHAR(100)    NULL,           -- EngineerProgress.Engineers[].Engineer
        EngineerID                      INT             NOT NULL,       -- EngineerProgress.Engineers[].EngineerID
        Progress                        VARCHAR(100)    NULL,           -- EngineerProgress.Engineers[].Progress
        RankProgress                    INT             NULL,           -- EngineerProgress.Engineers[].RankProgress
        Rank                            INT             NULL,           -- EngineerProgress.Engineers[].Rank
        PRIMARY KEY                     (event_id, EngineerID)
);

-- Event: FSDJump
CREATE TABLE event_FSDJump (
        event_id                        INT             NOT NULL,       -- event.id
        event_timestamp                 DATETIME        NOT NULL,       -- event.timestamp
        StarSystem                      VARCHAR(100)    NULL,           -- FSDJump.StarSystem
        SystemAddress                   BIGINT          NULL,           -- FSDJump.SystemAddress
        StarPosX                        DECIMAL(12,6)   NULL,           -- FSDJump.StarPos[0]
        StarPosY                        DECIMAL(12,6)   NULL,           -- FSDJump.StarPos[1]
        StarPosZ                        DECIMAL(12,6)   NULL,           -- FSDJump.StarPos[2]
        SystemAllegiance                VARCHAR(100)    NULL,           -- FSDJump.SystemAllegiance
        SystemEconomy                   VARCHAR(100)    NULL,           -- FSDJump.SystemEconomy
        SystemEconomy_Localised         VARCHAR(100)    NULL,           -- FSDJump.SystemEconomy_Localised
        SystemSecondEconomy             VARCHAR(100)    NULL,           -- FSDJump.SystemSecondEconomy
        SystemSecondEconomy_Localised   VARCHAR(100)    NULL,           -- FSDJump.SystemSecondEconomy_Localised
        SystemGovernment                VARCHAR(100)    NULL,           -- FSDJump.SystemGovernment
        SystemGovernment_Localised      VARCHAR(100)    NULL,           -- FSDJump.SystemGovernment_Localised
        SystemSecurity                  VARCHAR(100)    NULL,           -- FSDJump.SystemSecurity
        SystemSecurity_Localised        VARCHAR(100)    NULL,           -- FSDJump.SystemSecurity_Localised
        Population                      BIGINT          NULL,           -- FSDJump.Population
        Body                            VARCHAR(100)    NULL,           -- FSDJump.Body
        BodyID                          BIGINT          NULL,           -- FSDJump.BodyID
        BodyType                        VARCHAR(100)    NULL,           -- FSDJump.BodyType
        JumpDist                        DECIMAL(12,6)   NULL,           -- FSDJump.JumpDist
        FuelUsed                        DECIMAL(12,6)   NULL,           -- FSDJump.FuelUsed
        FuelLevel                       DECIMAL(12,6)   NULL,           -- FSDJump.FuelLevel
        SystemFaction_Name              VARCHAR(100)    NULL,           -- FSDJump.SystemFaction (OLD)
                                                                        -- FSDJump.SystemFaction.Name
        SystemFaction_FactionState      VARCHAR(100)    NULL,           -- FSDJump.SystemFaction.FactionState
        PRIMARY KEY                     (event_id)
);

-- Event: FSDJump
-- Missing: SquadronFaction, HappiestSystem, HomeSystem - what is the value? true, "true"
CREATE TABLE event_FSDJump_Factions (
        event_id                        INT             NOT NULL,       -- event.id
        idx                             INT             NOT NULL,       -- FSDJump.Factions[index]
        Name                            VARCHAR(100)    NULL,           -- FSDJump.Factions[].Name
        FactionState                    VARCHAR(100)    NULL,           -- FSDJump.Factions[].FactionState
        Government                      VARCHAR(100)    NULL,           -- FSDJump.Factions[].Government
        Influence                       DECIMAL(7,6)    NULL,           -- FSDJump.Factions[].Influence
        Allegiance                      VARCHAR(100)    NULL,           -- FSDJump.Factions[].Allegiance
        Happiness                       VARCHAR(100)    NULL,           -- FSDJump.Factions[].Happiness
        Happiness_Localised             VARCHAR(100)    NULL,           -- FSDJump.Factions[].Happiness_Localised
        MyReputation                    DECIMAL(7,6)    NULL,           -- FSDJump.Factions[].MyReputation
        PRIMARY KEY                     (event_id, idx)
);

-- Event: FSDJump
CREATE TABLE event_FSDJump_Factions_ActiveStates (
        event_id                INT             NOT NULL,       -- event.id
        factionIdx              INT             NOT NULL,       -- FSDJump.Factions[index]
        idx                     INT             NOT NULL,       -- FSDJump.Factions[].ActiveStates[index]
        State                   VARCHAR(100)    NULL,           -- FSDJump.Factions[].ActiveStates[].State
        PRIMARY KEY             (event_id, factionIdx, idx)        
);

-- Event: FSDJump
CREATE TABLE event_FSDJump_Factions_PendingStates (
        event_id                INT             NOT NULL,       -- event.id
        factionIdx              INT             NOT NULL,       -- FSDJump.Factions[index]
        idx                     INT             NOT NULL,       -- FSDJump.Factions[].PendingStates[index]
        State                   VARCHAR(100)    NULL,           -- FSDJump.Factions[].PendingStates[].State
        Trend                   INT             NULL,           -- FSDJump.Factions[].PendingStates[].Trend
        PRIMARY KEY             (event_id, factionIdx, idx)        
);

-- Event: FSDJump
CREATE TABLE event_FSDJump_Factions_RecoveringStates (
        event_id                INT             NOT NULL,       -- event.id
        factionIdx              INT             NOT NULL,       -- FSDJump.Factions[index]
        idx                     INT             NOT NULL,       -- FSDJump.Factions[].RecoveringStates[index]
        State                   VARCHAR(100)    NOT NULL,       -- FSDJump.Factions[].RecoveringStates[].State
        Trend                   INT             NULL,           -- FSDJump.Factions[].RecoveringStates[].Trend
        PRIMARY KEY             (event_id, factionIdx, idx)        
);

-- Event: FSDTarget
CREATE TABLE event_FSDTarget (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Name                    VARCHAR(100)    NULL,           -- FSDTarget.Name
        SystemAddress           BIGINT          NULL,           -- FSDTarget.SystemAddress
        RemainingJumpsInRoute   INT             NULL,           -- FSDTarget.RemainingJumpsInRoute
        PRIMARY KEY             (event_id)
);

-- Event: FSSDiscoveryScan
CREATE TABLE event_FSSDiscoveryScan (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Progress                DECIMAL(7,6)    NULL,           -- FSSDiscoveryScan.Progress
        BodyCount               INT             NULL,           -- FSSDiscoveryScan.BodyCount
        NonBodyCount            INT             NULL,           -- FSSDiscoveryScan.NonBodyCount
        SystemName              VARCHAR(100)    NULL,           -- FSSDiscoveryScan.SystemName
        SystemAddress           BIGINT          NULL,           -- FSSDiscoveryScan.SystemAddress
		PRIMARY KEY				(event_id)
);

-- Event: LoadGame
CREATE TABLE event_LoadGame (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        FID                     VARCHAR(100)    NULL,           -- LoadGame.FID
        Commander               VARCHAR(100)    NULL,           -- LoadGame.Commander
        Horizons                CHAR(1)         NULL,           -- LoadGame.Horizons == true ? 'Y' : 'N'
        Ship                    VARCHAR(100)    NULL,           -- LoadGame.Ship
        ShipID                  INT             NULL,           -- LoadGame.ShipID
        ShipName                VARCHAR(100)    NULL,           -- LoadGame.ShipName
        ShipIdent               VARCHAR(100)    NULL,           -- LoadGame.ShipIdent
        FuelLevel               DECIMAL(12,6)   NULL,           -- LoadGame.FuelLevel
        FuelCapacity            DECIMAL(12,6)   NULL,           -- LoadGame.FuelCapacity
        GameMode                VARCHAR(100)    NULL,           -- LoadGame.GameMode
        GroupName               VARCHAR(100)    NULL,           -- LoadGame.Group
        Credits                 BIGINT          NULL,           -- LoadGame.Credits
        Loan                    BIGINT          NULL,           -- LoadGame.Loan
        PRIMARY KEY             (event_id)
);

-- Event: Location
CREATE TABLE event_Location (
        event_id                        INT             NOT NULL,       -- event.id
        event_timestamp                 DATETIME        NOT NULL,       -- event.timestamp
        Docked                          CHAR(1)         NULL,           -- Location.Docked
        StationName                     VARCHAR(100)    NULL,           -- Location.StationName
        StationType                     VARCHAR(100)    NULL,           -- Location.StationType
        MarketID                        BIGINT          NULL,           -- Location.MarketID
        StationFaction_Name             VARCHAR(100)    NULL,           -- Location.StationFaction.Name
        StationFaction_State            VARCHAR(100)    NULL,           -- Location.StationFaction.FactionState
        StationGovernment               VARCHAR(100)    NULL,           -- Location.StationGovernment
        StationGovernment_Localised     VARCHAR(100)    NULL,           -- Location.StationGovernment_Localised
        StationAllegiance               VARCHAR(100)    NULL,           -- Location.StationAllegiance
        StationEconomy                  VARCHAR(100)    NULL,           -- Location.StationEconomy
        StationEconomy_Localised        VARCHAR(100)    NULL,           -- Location.StationEconomy_Localised
        StarSystem                      VARCHAR(100)    NULL,           -- Location.StarSystem
        SystemAddress                   BIGINT          NULL,           -- Location.SystemAddress
        StarPosX                        DECIMAL(12,6)   NULL,           -- Location.StarPos[0]
        StarPosY                        DECIMAL(12,6)   NULL,           -- Location.StarPos[1]
        StarPosZ                        DECIMAL(12,6)   NULL,           -- Location.StarPos[2]
        SystemAllegiance                VARCHAR(100)    NULL,           -- Location.SystemAllegiance
        SystemEconomy                   VARCHAR(100)    NULL,           -- Location.SystemEconomy
        SystemEconomy_Localised         VARCHAR(100)    NULL,           -- Location.SystemEconomy_Localised
        SystemSecondEconomy             VARCHAR(100)    NULL,           -- Location.SystemSecondEconomy
        SystemSecondEconomy_Localised   VARCHAR(100)    NULL,           -- Location.SystemSecondEconomy_Localised
        SystemGovernment                VARCHAR(100)    NULL,           -- Location.SystemGovernment
        SystemGovernment_Localised      VARCHAR(100)    NULL,           -- Location.SystemGovernment_Localised
        SystemSecurity                  VARCHAR(100)    NULL,           -- Location.SystemSecurity
        SystemSecurity_Localised        VARCHAR(100)    NULL,           -- Location.SystemSecurity_Localised
        Population                      BIGINT          NULL,           -- Location.Population
        Body                            VARCHAR(100)    NULL,           -- Location.Body
        BodyID                          INT             NULL,           -- Location.BodyID
        BodyType                        VARCHAR(100)    NULL,           -- Location.BodyType
        SystemFaction_Name              VARCHAR(100)    NULL,           -- Location.SystemFaction.Name
        SystemFaction_State             VARCHAR(100)    NULL,           -- Location.SystemFaction.FactionState
        PRIMARY KEY                     (event_id)
);

CREATE TABLE event_Location_Conflicts (
        event_id                        INT             NOT NULL,       -- event.id
        idx                             INT             NOT NULL,       -- Location.Conflicts[index]
        WarType                         VARCHAR(100)    NULL,           -- Location.Conflicts[].WarType
        Status                          VARCHAR(100)    NULL,           -- Location.Conflicts[].Status
        Faction1_Name                   VARCHAR(100)    NULL,           -- Location.Conflicts[].Faction1.Name
        Faction1_Stake                  VARCHAR(100)    NULL,           -- Location.Conflicts[].Faction1.Stake
        Faction1_WonDays                INT             NULL,           -- Location.Conflicts[].Faction1.WonDays
        Faction2_Name                   VARCHAR(100)    NULL,           -- Location.Conflicts[].Faction2.Name
        Faction2_Stake                  VARCHAR(100)    NULL,           -- Location.Conflicts[].Faction2.Stake
        Faction2_WonDays                INT             NULL,           -- Location.Conflicts[].Faction2.WonDays
        PRIMARY KEY                     (event_id, idx)
);

CREATE TABLE event_Location_Factions (
        event_id                        INT             NOT NULL,       -- event.id
        idx                             INT             NOT NULL,       -- Location.Factions[index]
        Name                            VARCHAR(100)    NULL,           -- Location.Factions[].Name
        State                           VARCHAR(100)    NULL,           -- Location.Factions[].FactionState
        Government                      VARCHAR(100)    NULL,           -- Location.Factions[].Government
        Influence                       DECIMAL(7,6)    NULL,           -- Location.Factions[].Influence
        Allegiance                      VARCHAR(100)    NULL,           -- Location.Factions[].Allegiance
        Happiness                       VARCHAR(100)    NULL,           -- Location.Factions[].Happiness
        Happiness_Localised             VARCHAR(100)    NULL,           -- Location.Factions[].Happiness_Localised
        MyReputation                    DECIMAL(9,6)    NULL,           -- Location.Factions[].MyReputation
        PRIMARY KEY                     (event_id, idx)
);

CREATE TABLE event_Location_Factions_ActiveStates (
        event_id                        INT             NOT NULL,       -- event.id
        factionIdx                      INT             NOT NULL,       -- Location.Factions[index]
        idx                             INT             NOT NULL,       -- Location.Factions[].ActiveStates[index]
        State                           VARCHAR(100)    NULL,           -- Location.Factions[].ActiveStates[].State
        PRIMARY KEY                     (event_id, factionIdx, idx)
);

CREATE TABLE event_Location_Factions_RecoveringStates (
        event_id                        INT             NOT NULL,       -- event.id
        factionIdx                      INT             NOT NULL,       -- Location.Factions[index]
        idx                             INT             NOT NULL,       -- Location.Factions[].RecoveringStates[index]
        State                           VARCHAR(100)    NULL,           -- Location.Factions[].RecoveringStates[].State
        Trend                           INT             NULL,           -- Location.Factions[].RecoveringStates[].Trend
        PRIMARY KEY                     (event_id, factionIdx, idx)
);

CREATE TABLE event_Location_StationEconomies (
        event_id                        INT             NOT NULL,       -- event.id
        idx                             INT             NOT NULL,       -- Location.StationEconomies[index]
        Name                            VARCHAR(100)    NULL,           -- Location.StationEconomies[].Name
        Name_Localised                  VARCHAR(100)    NULL,           -- Location.StationEconomies[].Name_Localised
        Proportion                      DECIMAL(7,6)    NULL,           -- Location.StationEconomies[].Proportion
        PRIMARY KEY                     (event_id, idx)
);

CREATE TABLE event_Location_StationServices (
        event_id                        INT             NOT NULL,       -- event.id
        idx                             INT             NOT NULL,       -- Location.StationServices[index]
        StationService                  VARCHAR(100)    NULL,           -- Location.StationServices[]
        PRIMARY KEY                     (event_id, idx)
);

-- Event: Materials
CREATE TABLE event_Materials (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Category                VARCHAR(100)    NULL,           -- "Raw", "Manufactured", "Encoded"
        Name                    VARCHAR(100)    NOT NULL,       -- Materials.{Category}[].Name
        Count                   INT             NULL,           -- Materials.{Category}[].Count
        PRIMARY KEY             (event_id, Name)
);

-- Event: Progress
CREATE TABLE event_Progress (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Combat                  INT             NULL,           -- Progress.Combat
        Trade                   INT             NULL,           -- Progress.Trade
        Explore                 INT             NULL,           -- Progress.Explore
        Empire                  INT             NULL,           -- Progress.Empire
        Federation              INT             NULL,           -- Progress.Federation
        CQC                     INT             NULL,           -- Progress.CQC
        PRIMARY KEY             (event_id)
);

-- Event: Rank
CREATE TABLE event_Rank (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Combat                  INT             NULL,           -- Rank.Combat
        Trade                   INT             NULL,           -- Rank.Trade
        Explore                 INT             NULL,           -- Rank.Explore
        Empire                  INT             NULL,           -- Rank.Empire
        Federation              INT             NULL,           -- Rank.Federation
        CQC                     INT             NULL,           -- Rank.CQC
        PRIMARY KEY             (event_id)
);

-- Event: ReceiveText
CREATE TABLE event_ReceiveText (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        MsgFrom                 VARCHAR(100)    NULL,           -- ReceiveText.From
        Message                 TEXT            NULL,           -- ReceivedText.Message
        Message_Localised       TEXT            NULL,           -- ReceivedText.Message_Localised
        Channel                 VARCHAR(100)    NULL,           -- ReceivedText.Channel
        PRIMARY KEY             (event_id)
);

-- Event: Reputation
CREATE TABLE event_Reputation (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        Empire                  DECIMAL(9,6)    NULL,           -- Reputation.Empire
        Federation              DECIMAL(9,6)    NULL,           -- Reputation.Federation
        Independent             DECIMAL(9,6)    NULL,           -- Reputation.Independent
        Alliance                DECIMAL(9,6)    NULL,           -- Reputation.Alliance
        PRIMARY KEY             (event_id)
);

-- Event: Scan
CREATE TABLE event_Scan (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        ScanType                VARCHAR(100)    NULL,           -- Scan.ScanType
        BodyName                VARCHAR(100)    NULL,           -- Scan.BodyName
        BodyID                  INT             NULL,           -- Scan.BodyID
        StarSystem              VARCHAR(100)    NULL,           -- Scan.StarSystem
        SystemAddress           BIGINT          NULL,           -- Scan.SystemAddress
        DistanceFromArrivalLS   DECIMAL(24,6)   NULL,           -- Scan.DistanceFromArrivalLS
        TidalLock               CHAR(1)         NULL,           -- Scan.TidalLock
        TerraformState          VARCHAR(100)    NULL,           -- Scan.TerraformState
        StarType                VARCHAR(100)    NULL,           -- Scan.StarType
        SubClass                INT             NULL,           -- Scan.SubClass
        StellarMass             DECIMAL(24,6)   NULL,           -- Scan.StellarMass
        AbsoluteMagnitude       DECIMAL(24,6)   NULL,           -- Scan.AbsoluteMagnitude
        Age_MY                  INT             NULL,           -- Scan.Age_MY
        Luminosity              VARCHAR(100)    NULL,           -- Scan.Luminosity
        PlanetClass             VARCHAR(100)    NULL,           -- Scan.PlanetClass
        Atmosphere              VARCHAR(100)    NULL,           -- Scan.Atmosphere
        AtmosphereType          VARCHAR(100)    NULL,           -- Scan.AtmosphereType
        Volcanism               VARCHAR(100)    NULL,           -- Scan.Volcanism
        MassEM                  DECIMAL(24,6)   NULL,           -- Scan.MassEM
        Radius                  DECIMAL(24,6)   NULL,           -- Scan.Radius
        SurfaceGravity          DECIMAL(24,6)   NULL,           -- Scan.SurfaceGravity
        SurfaceTemperature      DECIMAL(24,6)   NULL,           -- Scan.SurfaceTemperature
        SurfacePressure         DECIMAL(24,6)   NULL,           -- Scan.SurfacePressure
        Landable                CHAR(1)         NULL,           -- Scan.Landable
        Composition_Ice         DECIMAL(9,6)    NULL,           -- Scan.Composition.Ice
        Composition_Rock        DECIMAL(9,6)    NULL,           -- Scan.Composition.Rock
        Composition_Metal       DECIMAL(9,6)    NULL,           -- Scan.Composition.Metal
        SemiMajorAxis           DECIMAL(24,6)   NULL,           -- Scan.SemiMajorAxis
        Eccentricity            DECIMAL(9,6)    NULL,           -- Scan.Eccentricity
        OrbitalInclination      DECIMAL(9,6)    NULL,           -- Scan.OrbitalInclination
        Periapsis               DECIMAL(9,6)    NULL,           -- Scan.Periapsis
        OrbitalPeriod           DECIMAL(24,6)   NULL,           -- Scan.OrbitalPeriod
        RotationPeriod          DECIMAL(24,6)   NULL,           -- Scan.RotationPeriod
        AxialTilt               DECIMAL(9,6)    NULL,           -- Scan.AxialTilt
        ReserveLevel            VARCHAR(100)    NULL,           -- Scan.ReserveLevel
        WasDiscovered           CHAR(1)         NULL,           -- Scan.WasDiscovered
        WasMapped               CHAR(1)         NULL,           -- Scan.WasMapped
        PRIMARY KEY             (event_id)
);

CREATE TABLE event_Scan_AtmosphereComposition (
        event_id                INT             NOT NULL,       -- event.id
        idx                     INT             NOT NULL,       -- Scan.AtmosphereComposition[index]
        Name                    VARCHAR(100)    NULL,           -- Scan.AtmosphereComposition[].Name
        Percent                 DECIMAL(9,6)    NULL,           -- Scan.AtmosphereComposition[].Percent
        PRIMARY KEY             (event_id, idx)
);

CREATE TABLE event_Scan_Materials (
        event_id                INT             NOT NULL,       -- event.id
        idx                     INT             NOT NULL,       -- Scan.Materials[index]
        Name                    VARCHAR(100)    NULL,           -- Scan.Materials[].Name
        Percent                 DECIMAL(9,6)    NULL,           -- Scan.Materials[].Percent
        PRIMARY KEY             (event_id, idx)
);

CREATE TABLE event_Scan_Parents (
        event_id                INT             NOT NULL,       -- event.id
        idx                     INT             NOT NULL,       -- Scan.Parents[index]
        BodyID                  INT             NULL,           -- Scan.Parents[{BodyType:BodyID}]
        BodyType                VARCHAR(100)    NULL,           -- Scan.Parents[{BodyType:BodyID}]
        PRIMARY KEY             (event_id, idx)
);

CREATE TABLE event_Scan_Rings (
        event_id                INT             NOT NULL,       -- event.id
        idx                     INT             NOT NULL,       -- Scan.Rings[index]
        Name                    VARCHAR(100)    NULL,           -- Scan.Rings[].Name
        RingClass               VARCHAR(100)    NULL,           -- Scan.Rings[].RingClass
        MassMT                  DECIMAL(12,6)   NULL,           -- Scan.Rings[].MassMT
        InnerRad                DECIMAL(21,6)   NULL,           -- Scan.Rings[].InnerRad
        OuterRad                DECIMAL(21,6)   NULL,           -- Scan.Rings[].OuterRad
        PRIMARY KEY             (event_id, idx)
);

-- Event: StartJump
CREATE TABLE event_StartJump (
        event_id                INT             NOT NULL,       -- event.id
        event_timestamp         DATETIME        NOT NULL,       -- event.timestamp
        JumpType                VARCHAR(100)    NULL,           -- StartJump.JumpType
        StarSystem              VARCHAR(100)    NULL,           -- StartJump.StarSystem
        SystemAddress           BIGINT          NULL,           -- StartJump.SystemAddress
        StarClass               VARCHAR(100)    NULL,           -- StartJump.StarClass
        PRIMARY KEY             (event_id)       
);
