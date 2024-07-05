local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  return mp.CLEAN
end
if #L1_1 < 12 or L1_1:sub(-12):lower():find("\\%x%x%x%x%x%x%x.exe") ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED
