local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
L2_2 = L0_0.sub
L2_2 = L2_2(L0_0, 2, 9)
if L2_2 ~= "window" then
  L2_2 = L0_0.sub
  L2_2 = L2_2(L0_0, 2, 9)
  if L2_2 ~= "progra" then
    L2_2 = "Evaluation:"
    L2_2 = L2_2 .. L0_0
    MpCommon.AppendPersistContextNoPath(L2_2, L1_1, 6000)
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
