local L0_0, L1_1, L2_2
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L1_1 = L0_0(L1_1, L2_2)
if L0_0 then
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L1_1, -5)
  if L2_2 ~= ".lili" and L2_2 ~= ".hoho" and L2_2 ~= ".mama" and L2_2 ~= ".crcr" then
    L2_2 = string.sub(L1_1, -4)
    if L2_2 ~= ".log" then
      return mp.CLEAN
    end
  end
  if headerpage[1] > 2 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 18) ~= mp.getfilesize() - 21 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 18) == 0 then
    return mp.CLEAN
  end
  mp.set_mpattribute("BM_KnotCryptDataFile")
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
