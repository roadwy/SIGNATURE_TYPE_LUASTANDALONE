local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_LOWERCASE)
if MpCommon.QueryPersistContext(L1_1, "DllDroppedByMsiexec") then
  if L0_0 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/MsiexecDropRundllLoad")
  elseif L0_0 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/MsiexecDropRegsvrLoad")
  end
end
return mp.CLEAN
