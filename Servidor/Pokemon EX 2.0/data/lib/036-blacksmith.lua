blacksmith = {
	credits = true, -- Adicionar "criado por" na descri��o do item?
	variance = {-2, 2}, -- Os atributos ser�o aleatorizados entre X e Y
	rareConfig = {
		stone = 8306, -- Item que transforma as receitas em receitas �picas :)
		chance = 1000, -- A chance da receita �pica funcionar? (Padr�o: 10%)
		bonus = 6 -- Se a receita �pica funcionar, o item receber� um b�nus de?
	}
}

forges = {     
	[2147] = { -- o item que ser� feito
		recipe = {{5901, 1}}, -- a receita do item
		chance = 1000 -- chance do item dar certo (100% = 1000, 1% = 10, 0.5% = 5 e etc)
	}
}