local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[4].utf8p2)
    if string.find(L0_0, "mailto:", 1, true) then
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
