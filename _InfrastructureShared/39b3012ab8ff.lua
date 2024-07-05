local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = 0
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L1_1, L0_0 = string.gsub(L1_1, "`", "")
    if L0_0 > 3 then
      L1_1 = string.lower(L1_1)
      if string.find(L1_1, "frombase64string", 1, true) or string.find(L1_1, "webclient", 1, true) or string.find(L1_1, "newscriptblock", 1, true) or string.find(L1_1, "http", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
