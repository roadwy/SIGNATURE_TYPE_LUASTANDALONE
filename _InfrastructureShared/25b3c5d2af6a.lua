local L0_0, L1_1, L2_2
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
function L2_2(A0_3, A1_4)
  return A1_4 == "" or A0_3:sub(-#A1_4) == A1_4
end
ends_with = L2_2
function L2_2()
  local L0_5, L1_6, L2_7, L3_8, L4_9, L5_10, L6_11, L7_12
  L0_5 = bm
  L0_5 = L0_5.get_process_relationships
  L1_6 = L0_5()
  for L5_10, L6_11 in L2_7(L3_8) do
    L7_12 = L6_11.reason
    if L7_12 == bm.RELATIONSHIP_INJECTION then
      L7_12 = string
      L7_12 = L7_12.lower
      L7_12 = L7_12(L6_11.image_path)
      if string.find(L7_12, "\\windows\\system32\\svchost.exe", 1, true) or string.find(L7_12, "\\windows\\system32\\lsass.exe", 1, true) or string.find(L7_12, "\\windows\\system32\\services.exe", 1, true) or string.find(L7_12, "\\windows\\system32\\winlogon.exe", 1, true) or string.find(L7_12, "\\windows\\explorer.exe", 1, true) or string.find(L7_12, "\\windows defender\\", 1, true) then
        return
      else
        bm.add_threat_process(L6_11.ppid)
      end
    end
  end
end
process_injtarget = L2_2
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(MpCommon.PathToWin32Path(bm.get_imagepath()))
if ends_with(L2_2, "\\powershell.exe") then
  process_injtarget()
  return mp.INFECTED
end
if ends_with(L2_2, "\\pwsh.exe") then
  process_injtarget()
  return mp.INFECTED
end
if ends_with(L2_2, "\\powershell_ise.exe") then
  process_injtarget()
  return mp.INFECTED
end
return mp.CLEAN
