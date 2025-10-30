scoreboard objectives add lsp.Values dummy
scoreboard objectives add lsp.stamina dummy

# Default Values (CONFIG) NOTE: ALL VALUES ARE SCALED BY 0.01
    scoreboard players set sprintable.speed lsp.Values 10
    scoreboard players set unsprintable.speed lsp.Values 5

    # ENABLED = (1=TRUE,0=FALSE);
    scoreboard players set enabled lsp.Values 1
    
    # 1 second = 20 ticks
    # 10 seconds = 200 ticks
    # scoreboard value below is in ticks
    scoreboard players set stamina lsp.Values 200
        # restore stamina on /reload:
        scoreboard players operation @a lsp.stamina = stamina lsp.Values

    # these values determine how fast/slow stamina is lost/gained
    scoreboard players set sprint.stamina.consumption lsp.Values 2
    scoreboard players set sprint.stamina.restoration lsp.Values 1
