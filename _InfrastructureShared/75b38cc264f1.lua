local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
if not L0_0 or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 then
  L2_2 = L1_1.integrity_level
  L3_3 = MpCommon
  L3_3 = L3_3.SECURITY_MANDATORY_HIGH_RID
  if L2_2 < L3_3 then
    L2_2 = bm
    L2_2 = L2_2.get_imagepath
    L2_2 = L2_2()
    if L2_2 then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = MpCommon
      L4_4 = L4_4.PathToWin32Path
      L5_5 = L2_2
      L9_9 = L4_4(L5_5)
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5))
      L2_2 = L3_3
      if L2_2 then
        L3_3 = mp
        L3_3 = L3_3.IsKnownFriendlyFile
        L4_4 = L2_2
        L5_5 = false
        L3_3 = L3_3(L4_4, L5_5, L6_6)
        if L3_3 then
          L3_3 = string
          L3_3 = L3_3.sub
          L4_4 = L2_2
          L5_5 = -15
          L3_3 = L3_3(L4_4, L5_5)
          if L3_3 ~= "\\powershell.exe" then
            L3_3 = string
            L3_3 = L3_3.sub
            L4_4 = L2_2
            L5_5 = -8
            L3_3 = L3_3(L4_4, L5_5)
          end
        elseif L3_3 == "\\cmd.exe" then
          L3_3 = sysio
          L3_3 = L3_3.QuerySymbolicLinkObject
          L4_4 = "\\??\\globalroot\\device\\BootPartition"
          L3_3 = L3_3(L4_4)
          if L3_3 then
            L4_4 = string
            L4_4 = L4_4.sub
            L5_5 = L0_0
            L4_4 = L4_4(L5_5, L6_6, L7_7)
            L5_5 = sysio
            L5_5 = L5_5.GetObjectDir
            L5_5 = L5_5(L6_6)
            if L5_5 then
              for L9_9, _FORV_10_ in L6_6(L7_7) do
                if string.find(L9_9, "Partition", 1, true) and sysio.QuerySymbolicLinkObject(L4_4 .. "\\" .. L9_9) == L3_3 then
                  return mp.INFECTED
                end
              end
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
