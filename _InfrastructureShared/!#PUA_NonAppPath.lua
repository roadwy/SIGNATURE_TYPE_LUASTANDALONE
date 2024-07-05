local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L0_0 = L0_0("PUA:Block:")
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if string.sub(L0_0, 2, 16) ~= ":\\program files" and string.sub(L0_0, 2, 14) ~= ":\\programdata" then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
