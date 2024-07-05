local L0_0
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 == true then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if string.find(L0_0, ".scr$") or string.find(L0_0, ".tmp$") then
    return mp.INFECTED
  else
    return mp.LOWFI
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
