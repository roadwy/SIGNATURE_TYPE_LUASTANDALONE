local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
elseif L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[11]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[11]
    L0_0 = L0_0.utf8p2
    if L0_0 and string.find(L0_0, "/upn", 1, true) then
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
