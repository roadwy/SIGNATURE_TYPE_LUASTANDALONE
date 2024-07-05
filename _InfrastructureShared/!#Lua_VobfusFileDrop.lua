local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILENAME
  L4_4 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L2_2 = L2_2 - 4
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, -4)
  if L3_3 == ".exe" and L2_2 >= 5 and L2_2 <= 7 then
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L1_1
    L3_3 = L3_3(L4_4, 1, L2_2)
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if L3_3 == string.reverse(string.sub(L4_4, -L2_2)) and mp.get_contextdata(mp.CONTEXT_DATA_FILE_ATTRIBUTES) == 7 then
      mp.set_mpattribute("Lua:VobfusFileDrop")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
