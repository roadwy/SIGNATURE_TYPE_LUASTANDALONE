local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 and string.find(string.lower(L0_0), "\\servicing\\packages\\microsoft%-windows%-client%-desktop%-required%-package.+%.mum") then
  mp.set_mpattribute("SelectableWinDefendPkgInServicing")
end
return mp.CLEAN
