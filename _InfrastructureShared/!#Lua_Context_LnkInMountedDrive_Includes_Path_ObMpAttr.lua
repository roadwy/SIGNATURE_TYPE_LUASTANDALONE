local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "PACKED_WITH:[CMDEmbedded]"
L1_1 = L1_1(L2_2)
if L1_1 and L0_0 < 1048576 then
  L1_1 = nil
  if L0_0 <= 4096 then
    L2_2 = tostring
    L3_3 = headerpage
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  else
    L2_2 = mp
    L2_2 = L2_2.readprotection
    L3_3 = false
    L2_2(L3_3)
    L2_2 = mp
    L2_2 = L2_2.readfile
    L3_3 = 0
    L4_4 = mp
    L4_4 = L4_4.getfilesize
    L4_4 = L4_4()
    L2_2 = L2_2(L3_3, L4_4, L4_4())
    L1_1 = L2_2
  end
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "regsvr32[.%a]*%s+([%a%d\\.]*)"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == nil then
    L4_4 = L1_1
    L3_3 = L1_1.match
    L3_3 = L3_3(L4_4, "rundll32[.%a]*%s+([%a%d\\.]*)")
    L2_2 = L3_3
  end
  if L2_2 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
    L3_3 = L3_3(L4_4)
    L4_4 = L3_3.match
    L4_4 = L4_4(L3_3, "(.*)\\")
    L3_3 = L4_4 .. "\\" .. L2_2
    L4_4 = normalize_path
    L4_4 = L4_4(L3_3)
    L3_3 = L4_4
    L4_4 = "DllLoadedViaLnk"
    if not MpCommon.QueryPersistContext(L3_3, L4_4) then
      MpCommon.AppendPersistContext(L3_3, L4_4, 100)
    end
  end
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
