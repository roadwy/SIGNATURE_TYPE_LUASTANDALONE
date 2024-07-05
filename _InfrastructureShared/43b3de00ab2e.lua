local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(mp.utf16to8(this_sigattrlog[1].wp2))
    if string.find(L0_0, ".downloadstring", 1, true) ~= nil then
      if (string.find(L0_0, "-dumpcreds", 1, true) ~= nil and string.find(L0_0, "-computername", 1, true)) ~= nil then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
