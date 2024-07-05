local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = ":\\windows"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "%windir%"
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\"%windows%"
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = bm
L1_1 = L1_1.get_imagepath
L8_8 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1())
L1_1 = mp
L1_1 = L1_1.IsKnownFriendlyFile
L2_2 = L0_0
L3_3 = true
L1_1 = L1_1(L2_2, L3_3, L4_4)
if L1_1 == false then
  L1_1 = bm
  L1_1 = L1_1.add_related_file
  L2_2 = L0_0
  L1_1(L2_2)
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L1_1 = L1_1.ppid
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.GetProcessCommandLine
  L8_8 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
  if L2_2 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.GetExecutablesFromCommandLine
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      if sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
