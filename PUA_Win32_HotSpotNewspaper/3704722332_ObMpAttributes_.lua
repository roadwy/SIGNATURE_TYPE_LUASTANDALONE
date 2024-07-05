local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ProductName
if L1_1 and string.find(L1_1, "\231\131\173\231\130\185\230\150\176\233\151\187", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
