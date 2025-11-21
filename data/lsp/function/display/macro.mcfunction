data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value {"font":"deadism:f25bankprinter","translate":"deadism.mechanics.stamina", "fallback":"STAMINA"}
data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value ": "
$data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value "$(STAMINA)"
data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value {"font":"default", "text":"%"}
