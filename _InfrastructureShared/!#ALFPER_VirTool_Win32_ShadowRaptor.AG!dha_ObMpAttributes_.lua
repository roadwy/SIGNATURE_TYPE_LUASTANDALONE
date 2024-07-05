local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L6_6 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 34 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L3_3 = "ole db"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 == nil then
      L2_2 = L0_0
      L1_1 = L0_0.find
      L3_3 = "migwiz"
      L4_4 = 1
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if L1_1 == nil then
        L2_2 = L0_0
        L1_1 = L0_0.find
        L3_3 = "aspdotnet"
        L4_4 = 1
        L5_5 = true
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      end
    elseif L1_1 ~= nil then
      L1_1 = "\\common files\\system\\ole db\\oledbjbn.inc"
      L2_2 = "\\common files\\system\\ole db\\oledbjml.inc"
      L3_3 = "\\windows\\system32\\migwiz\\sfcbn.dat"
      L4_4 = "\\windows\\system32\\migwiz\\sfcml.dat"
      L5_5 = "\\windows\\microsoft.net\\framework\\v2.0.50727\\asp.netwebadminfiles\\images\\aspdotnet_logo.gif"
      L6_6 = "\\windows\\microsoft.net\\framework\\v2.0.50727\\asp.netwebadminfiles\\images\\aspdotnet_logo_small.gif"
      if L0_0:sub(-string.len(L1_1)) == L1_1 or L0_0:sub(-string.len(L2_2)) == L2_2 or L0_0:sub(-string.len(L3_3)) == L3_3 or L0_0:sub(-string.len(L4_4)) == L4_4 or L0_0:sub(-string.len(L5_5)) == L5_5 or L0_0:sub(-string.len(L6_6)) == L6_6 then
        mp.set_mpattribute("MpNonPIIFileType")
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
