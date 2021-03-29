-- Drop tables
DROP TABLE log;
DROP TABLE journal;
DROP TABLE event;
DROP TABLE event_Commander;
DROP TABLE event_EngineerProgress;
DROP TABLE event_FSDJump;
DROP TABLE event_FSDJump_Factions;
DROP TABLE event_FSDJump_Factions_ActiveStates;
DROP TABLE event_FSDJump_Factions_PendingStates;
DROP TABLE event_FSDJump_Factions_RecoveringStates;
DROP TABLE event_FSDTarget;
DROP TABLE event_FSSDiscoveryScan;
DROP TABLE event_LoadGame;
DROP TABLE event_Location;
DROP TABLE event_Location_Conflicts;
DROP TABLE event_Location_Factions;
DROP TABLE event_Location_Factions_ActiveStates;
DROP TABLE event_Location_Factions_RecoveringStates;
DROP TABLE event_Location_StationEconomies;
DROP TABLE event_Location_StationServices;
DROP TABLE event_Materials;
DROP TABLE event_Progress;
DROP TABLE event_Rank;
DROP TABLE event_ReceiveText;
DROP TABLE event_Reputation;
DROP TABLE event_Scan;
DROP TABLE event_Scan_AtmosphereComposition;
DROP TABLE event_Scan_Materials;
DROP TABLE event_Scan_Parents;
DROP TABLE event_Scan_Rings;
DROP TABLE event_StartJump;

-- Truncate tables
TRUNCATE TABLE log;
TRUNCATE TABLE journal;
TRUNCATE TABLE event;
TRUNCATE TABLE event_Commander;
TRUNCATE TABLE event_EngineerProgress;
TRUNCATE TABLE event_FSDJump;
TRUNCATE TABLE event_FSDJump_Factions;
TRUNCATE TABLE event_FSDJump_Factions_ActiveStates;
TRUNCATE TABLE event_FSDJump_Factions_PendingStates;
TRUNCATE TABLE event_FSDJump_Factions_RecoveringStates;
TRUNCATE TABLE event_FSDTarget;
TRUNCATE TABLE event_FSSDiscoveryScan;
TRUNCATE TABLE event_LoadGame;
TRUNCATE TABLE event_Location;
TRUNCATE TABLE event_Location_Conflicts;
TRUNCATE TABLE event_Location_Factions;
TRUNCATE TABLE event_Location_Factions_ActiveStates;
TRUNCATE TABLE event_Location_Factions_RecoveringStates;
TRUNCATE TABLE event_Location_StationEconomies;
TRUNCATE TABLE event_Location_StationServices;
TRUNCATE TABLE event_Materials;
TRUNCATE TABLE event_Progress;
TRUNCATE TABLE event_Rank;
TRUNCATE TABLE event_ReceiveText;
TRUNCATE TABLE event_Reputation;
TRUNCATE TABLE event_Scan;
TRUNCATE TABLE event_Scan_AtmosphereComposition;
TRUNCATE TABLE event_Scan_Materials;
TRUNCATE TABLE event_Scan_Parents;
TRUNCATE TABLE event_Scan_Rings;
TRUNCATE TABLE event_StartJump;

-- Table record counts
SELECT 'log' Table_Name,                                        COUNT(*) Records FROM log
UNION SELECT 'journal',                                         COUNT(*) FROM journal
UNION SELECT 'event',                                           COUNT(*) FROM event
UNION SELECT 'event_AfmuRepairs',                               COUNT(*) FROM event_AfmuRepairs
UNION SELECT 'event_ApproachBody',                              COUNT(*) FROM event_ApproachBody
UNION SELECT 'event_ApproachSettlement',                        COUNT(*) FROM event_ApproachSettlement
UNION SELECT 'event_AsteroidCracked',                           COUNT(*) FROM event_AsteroidCracked
UNION SELECT 'event_Bounty',                                    COUNT(*) FROM event_Bounty
UNION SELECT 'event_Bounty_Rewards',                            COUNT(*) FROM event_Bounty_Rewards
UNION SELECT 'event_Commander',                                 COUNT(*) FROM event_Commander
UNION SELECT 'event_EngineerProgress',                          COUNT(*) FROM event_EngineerProgress
UNION SELECT 'event_FSDJump',                                   COUNT(*) FROM event_FSDJump
UNION SELECT 'event_FSDJump_Factions',                          COUNT(*) FROM event_FSDJump_Factions
UNION SELECT 'event_FSDJump_Factions_ActiveStates',             COUNT(*) FROM event_FSDJump_Factions_ActiveStates
UNION SELECT 'event_FSDJump_Factions_PendingStates',            COUNT(*) FROM event_FSDJump_Factions_PendingStates
UNION SELECT 'event_FSDJump_Factions_RecoveringStates',         COUNT(*) FROM event_FSDJump_Factions_RecoveringStates
UNION SELECT 'event_FSDTarget',                                 COUNT(*) FROM event_FSDTarget
UNION SELECT 'event_FSSDiscoveryScan',                          COUNT(*) FROM event_FSSDiscoveryScan
UNION SELECT 'event_LoadGame',                                  COUNT(*) FROM event_LoadGame
UNION SELECT 'event_Location',                                  COUNT(*) FROM event_Location
UNION SELECT 'event_Location_Conflicts',                        COUNT(*) FROM event_Location_Conflicts
UNION SELECT 'event_Location_Factions',                         COUNT(*) FROM event_Location_Factions
UNION SELECT 'event_Location_Factions_ActiveStates',            COUNT(*) FROM event_Location_Factions_ActiveStates
UNION SELECT 'event_Location_Factions_RecoveringStates',        COUNT(*) FROM event_Location_Factions_RecoveringStates
UNION SELECT 'event_Location_StationEconomies',                 COUNT(*) FROM event_Location_StationEconomies
UNION SELECT 'event_Location_StationServices',                  COUNT(*) FROM event_Location_StationServices
UNION SELECT 'event_Materials',                                 COUNT(*) FROM event_Materials
UNION SELECT 'event_Progress',                                  COUNT(*) FROM event_Progress
UNION SELECT 'event_Rank',                                      COUNT(*) FROM event_Rank
UNION SELECT 'event_ReceiveText',                               COUNT(*) FROM event_ReceiveText
UNION SELECT 'event_Reputation',                                COUNT(*) FROM event_Reputation
UNION SELECT 'event_Scan',                                      COUNT(*) FROM event_Scan
UNION SELECT 'event_Scan_AtmosphereComposition',                COUNT(*) FROM event_Scan_AtmosphereComposition
UNION SELECT 'event_Scan_Materials',                            COUNT(*) FROM event_Scan_Materials
UNION SELECT 'event_Scan_Parents',                              COUNT(*) FROM event_Scan_Parents
UNION SELECT 'event_Scan_Rings',                                COUNT(*) FROM event_Scan_Rings      
UNION SELECT 'event_StartJump',                                 COUNT(*) FROM event_StartJump
;

-- Select sample table contents
SELECT * FROM log LIMIT 10;
SELECT * FROM journal LIMIT 10;
SELECT * FROM event LIMIT 10;
SELECT * FROM event_Commander LIMIT 10;
SELECT * FROM event_EngineerProgress LIMIT 10;
SELECT * FROM event_FSDJump LIMIT 10;
SELECT * FROM event_FSDJump_Factions LIMIT 10;
SELECT * FROM event_FSDJump_Factions_States LIMIT 10;
SELECT * FROM event_FSDTarget LIMIT 10;
SELECT * FROM event_LoadGame LIMIT 10;
SELECT * FROM event_Location LIMIT 10;
SELECT * FROM event_Location_Conflicts LIMIT 10;
SELECT * FROM event_Location_Factions LIMIT 10;
SELECT * FROM event_Location_Factions_ActiveStates LIMIT 10;
SELECT * FROM event_Location_Factions_RecoveringStates LIMIT 10;
SELECT * FROM event_Location_StationEconomies LIMIT 10;
SELECT * FROM event_Location_StationServices LIMIT 10;
SELECT * FROM event_Materials LIMIT 10;
SELECT * FROM event_Progress LIMIT 10;
SELECT * FROM event_Rank LIMIT 10;
SELECT * FROM event_ReceiveText LIMIT 10;
SELECT * FROM event_Reputation LIMIT 10;
SELECT * FROM event_Scan LIMIT 10;
SELECT * FROM event_Scan_AtmosphereComposition LIMIT 10;
SELECT * FROM event_Scan_Materials LIMIT 10;
SELECT * FROM event_Scan_Parents LIMIT 10;
SELECT * FROM event_Scan_Rings LIMIT 10;
SELECT * FROM event_StartJump LIMIT 10;
