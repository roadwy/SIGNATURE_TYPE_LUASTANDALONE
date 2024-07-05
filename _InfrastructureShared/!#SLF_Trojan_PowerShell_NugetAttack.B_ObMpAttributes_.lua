local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
if L0_0:find("devenv", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
