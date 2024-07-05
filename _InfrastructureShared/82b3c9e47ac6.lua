local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = -15
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = L2_2
  L2_2 = L2_2.match
  L4_4 = "\\([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = {}
  L3_3["svchost.exe"] = true
  L3_3["taskeng.exe"] = true
  L3_3["taskhostw.exe"] = true
  L4_4 = L3_3[L2_2]
  if L4_4 then
    L4_4 = nil
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.matched
    if L5_5 then
      L5_5 = this_sigattrlog
      L5_5 = L5_5[1]
      L4_4 = L5_5.utf8p2
    end
    if L4_4 ~= nil then
      L5_5 = mp
      L5_5 = L5_5.GetExecutablesFromCommandLine
      L5_5 = L5_5(L6_6)
      for L9_9, L10_10 in L6_6(L7_7) do
        if L10_10 ~= nil and L10_10:len() > 3 and sysio.IsFileExists(L10_10) and string.sub(L10_10, -4) == ".wsf" then
          if string.sub(L10_10, -15) == "iislogclean.wsf" then
            return mp.CLEAN
          end
          bm.add_threat_file(L10_10)
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
