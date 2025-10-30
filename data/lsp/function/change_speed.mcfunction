$attribute @s[scores={lsp.stamina=0}] movement_speed base set $(low)
attribute @s[scores={lsp.stamina=0}] jump_strength base set 0
$attribute @s[scores={lsp.stamina=1..}] movement_speed base set $(high)
attribute @s[scores={lsp.stamina=1..}] jump_strength base set 0.42
