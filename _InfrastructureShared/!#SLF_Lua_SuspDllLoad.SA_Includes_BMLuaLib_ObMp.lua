local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 ~= "rundll32.exe" and L0_0 ~= "regsvr32.exe " then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "\\programdata\\(.+)$")
if L2_2 == nil or #L2_2 < 1 or string.find(L2_2, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):lower() == L2_2:lower() then
  mp.set_mpattribute("Lua:SuspDllLoad.SA")
  return mp.INFECTED
end
return mp.CLEAN
