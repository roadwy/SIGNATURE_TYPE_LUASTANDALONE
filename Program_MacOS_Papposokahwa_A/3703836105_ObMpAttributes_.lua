local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = {}
  L1_1["acrobat reader"] = ""
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
  L3_3 = L1_1[L2_2]
  if L3_3 then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L4_4 = L4_4("BM_MACHO64_FILE")
    if not L4_4 then
      L4_4 = mp
      L4_4 = L4_4.get_mpattribute
      L4_4 = L4_4("BM_MACHO32_FILE")
    elseif L4_4 then
      L4_4 = string
      L4_4 = L4_4.lower
      L4_4 = L4_4(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
      if string.find(L4_4, "/applications/adobe acrobat reader dc.app/contents", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
