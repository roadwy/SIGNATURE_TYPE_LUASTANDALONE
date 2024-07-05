local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  return A1_4 == "" or A0_3:sub(-#A1_4) == A1_4
end
ends_with = L0_0
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\\microsoft\\windows defender advanced threat protection\\datacollection\\", 1, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "\\imecache\\", 1, true)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(MpCommon.PathToWin32Path(bm.get_imagepath()))
if ends_with(L2_2, "\\powershell.exe") then
  return mp.INFECTED
end
if ends_with(L2_2, "\\pwsh.exe") then
  return mp.INFECTED
end
if ends_with(L2_2, "\\powershell_ise.exe") then
  return mp.INFECTED
end
return mp.CLEAN
