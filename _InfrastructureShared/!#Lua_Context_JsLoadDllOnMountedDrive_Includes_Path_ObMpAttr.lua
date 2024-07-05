local L0_0, L1_1, L2_2, L3_3
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
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.image_path
if L3_3 == nil then
  return mp.CLEAN
end
if L0_0 == "rundll32.exe" and string.match(L3_3, "([^\\]+)$") == "wscript.exe" then
  mp.set_mpattribute("Lua:Context/WscriptRundllLoadDllOnMountedDrive")
elseif L0_0 == "regsvr32.exe" and string.match(L3_3, "([^\\]+)$") == "wscript.exe" then
  mp.set_mpattribute("Lua:Context/WscriptRegsvrLoadDllOnMountedDrive")
elseif L0_0 == "rundll32.exe" and string.match(L3_3, "([^\\]+)$") == "cscript.exe" then
  mp.set_mpattribute("Lua:Context/CscriptRundllLoadDllOnMountedDrive")
elseif L0_0 == "regsvr32.exe" and string.match(L3_3, "([^\\]+)$") == "cscript.exe" then
  mp.set_mpattribute("Lua:Context/CscriptRegsvrLoadDllOnMountedDrive")
end
return mp.CLEAN
