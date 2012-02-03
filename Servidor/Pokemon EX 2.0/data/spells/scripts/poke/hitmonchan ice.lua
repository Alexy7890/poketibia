local hitmonchan = {lookType = 609}


local rollarea = createCombatArea{
{1, 1, 1},
{1, 2, 1},
{1, 1, 1},
}

function onCastSpell(cid, var)
if getCreatureCondition(cid, CONDITION_OUTFIT) == true then
return true
end
doCreatureSay(cid, "Counter Kick!", TALKTYPE_MONSTER)

if getCreatureOutfit(cid).lookType == 38 then
doSetCreatureOutfit(cid, hitmonchan, -1)
damage = 500
end
local dmg = damage
local function damage(params)
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, ICEDAMAGE, getThingPos(params.cid), rollarea, -(params.dmg), -((params.dmg)+5), 255)
end
end

local function voltar(params)
if isCreature(params.cid) then
doRemoveCondition(params.cid, CONDITION_OUTFIT)
end
end
local vezes = 8
local delay = 1000 -- n�o mexe
for i = 1, vezes do
addEvent(damage, delay*i, {cid = cid, dmg = dmg})
end
addEvent(voltar, 1051*vezes, {cid = cid})
end 