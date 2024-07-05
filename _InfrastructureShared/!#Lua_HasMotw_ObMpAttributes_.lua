local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_HAS_MOTW_ADS
L0_0 = L0_0(L1_1)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.GetMOTWZone
  L0_0 = L0_0()
  if L0_0 ~= nil and L0_0 >= 3 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L3_3 = L2_2()
    L1_1 = L1_1(L2_2, L3_3, L2_2())
    if L1_1 ~= nil then
      L2_2 = string
      L2_2 = L2_2.len
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      if L2_2 >= 4 then
        L2_2 = string
        L2_2 = L2_2.sub
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, -4)
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(MpCommon.PathToWin32Path(L1_1))
        if L2_2 == ".iso" then
          MpCommon.AppendPersistContext(L3_3, "IsoWithMotw", 5)
        elseif L2_2 == ".vhd" then
          MpCommon.AppendPersistContext(L3_3, "VhdWithMotw", 5)
        elseif L2_2 == ".img" then
          MpCommon.AppendPersistContext(L3_3, "ImgWithMotw", 5)
        end
      end
    end
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
