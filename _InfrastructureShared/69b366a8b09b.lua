local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L1_1 = L1_1(L0_0)
    if L1_1 > 4 then
      L1_1 = string
      L1_1 = L1_1.sub
      L1_1 = L1_1(L0_0, -4)
      if L1_1 == ".lnk" then
        L1_1 = string
        L1_1 = L1_1.match
        L1_1 = L1_1(L0_0, "([^\\]+)$")
        if L1_1 == nil then
          return mp.CLEAN
        end
        if string.len(L1_1) <= 3 or string.len(L1_1) > 15 then
          return mp.CLEAN
        end
        if string.find(L1_1, " ", 1, true) then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
