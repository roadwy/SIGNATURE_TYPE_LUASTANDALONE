local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
else
  return mp.CLEAN
end
if string.match(L0_0, "if%s*%(%s*!%s*%(%s*%[%s*string%s*%]%s*%(%s*get%-wmiobject%s*-namespace%s*root\\subscription%s*%-class%s*__filtertoconsumerbinding%s*%)%)%.contains%(%s*'scm event filter'%s*%)%).*%{.*iex.+net%.webclient.+downloadstring.+http.*%}") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
