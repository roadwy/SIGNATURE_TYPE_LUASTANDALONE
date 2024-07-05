local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = bm
    L1_1 = L1_1.get_process_relationships
    L2_2 = L1_1()
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
      if MpCommon.QueryPersistContext(L8_8, "PsExecServiceStandardName") then
        mp.ReportLowfi(L0_0, 2705434468)
        bm.add_related_file(L0_0)
        return mp.INFECTED
      end
      if MpCommon.QueryPersistContext(L8_8, "PsExecServiceNonStandardName") then
        mp.ReportLowfi(L0_0, 2705434468)
        bm.add_related_file(L0_0)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
