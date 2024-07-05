local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1.js = true
L1_1.jse = true
L1_1.vbs = true
L1_1.vbe = true
L1_1.wsf = true
L1_1.jar = true
L1_1.hta = true
L1_1.lnk = true
L1_1.cmd = true
L1_1.bat = true
L1_1.doc = true
L1_1.docm = true
L1_1.docx = true
L1_1.xls = true
L1_1.xlsx = true
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L0_0, "([^\\%.]+)$")
if L2_2 == nil or #L2_2 < 2 or L1_1[L2_2] ~= true then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:Context/NonPeFileInStartUpFolder.A!" .. L2_2)
return mp.INFECTED
