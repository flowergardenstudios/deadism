data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value {"translate":"deadism.mechanics.fatigue", "fallback":"FATIGUE"}
data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value ": "
$data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value "$(FATIGUE)%"
