local L0_0, L1_1, L2_2, L3_3, L4_4
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
if L0_0 ~= "cscript.exe" and L0_0 ~= "wscript.exe" and L0_0 ~= "mshta.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
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
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L4_4 = L4_4(L3_3, "([^\\]+)$")
if L4_4 == nil then
  return mp.CLEAN
end
L4_4 = string.lower(L4_4)
if L0_0 == "wscript.exe" and L4_4 == "onenote.exe" then
  mp.set_mpattribute("Lua:Context/OnenoteDropWscriptLoad")
elseif L0_0 == "cscript.exe" and L4_4 == "onenote.exe" then
  mp.set_mpattribute("Lua:Context/OnenoteDropCscriptLoad")
elseif L0_0 == "mshta.exe" and L4_4 == "onenote.exe" then
  mp.set_mpattribute("Lua:Context/OnenoteDropMshtaLoad")
end
return mp.CLEAN
