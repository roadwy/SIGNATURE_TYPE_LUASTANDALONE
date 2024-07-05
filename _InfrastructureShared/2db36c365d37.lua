local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(string.sub(L0_0, -20))
    if string.find(L1_1, "\\microsoftedgecp.exe", 1, true) or string.find(L1_1, "\\werfault.exe", 1, true) or string.find(L1_1, "\\wmiprvse.exe", 1, true) or string.find(L1_1, "\\mfpmp.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
