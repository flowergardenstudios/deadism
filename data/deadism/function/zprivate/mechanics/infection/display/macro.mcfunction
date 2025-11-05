data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value {"translate":"deadism.mechanics.infection", "fallback":"INFECTION"}
data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value ": "
$data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value "$(INFECTION)%"
