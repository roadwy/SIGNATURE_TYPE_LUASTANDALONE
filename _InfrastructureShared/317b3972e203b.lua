local L0_0, L1_1, L2_2
L0_0 = "DoplikM"
L1_1 = nil
L2_2 = 300
if this_sigattrlog[1].matched then
  L1_1 = "A"
elseif this_sigattrlog[2].matched then
  L1_1 = "B"
elseif this_sigattrlog[3].matched then
  L1_1 = "C"
elseif this_sigattrlog[4].matched then
  L1_1 = "D"
elseif this_sigattrlog[5].matched then
  L1_1 = "E"
elseif this_sigattrlog[6].matched then
  L1_1 = "F"
elseif this_sigattrlog[7].matched then
  L1_1 = "G"
elseif this_sigattrlog[8].matched then
  L1_1 = "H"
elseif this_sigattrlog[9].matched then
  L1_1 = "I"
elseif this_sigattrlog[10].matched then
  L1_1 = "J"
elseif this_sigattrlog[11].matched then
  L1_1 = "K"
elseif this_sigattrlog[12].matched then
  L1_1 = "L"
end
if not MpCommon.QueryPersistContextNoPath(L0_0, L1_1) then
  MpCommon.AppendPersistContextNoPath(L0_0, L1_1, L2_2)
end
if 4 <= MpCommon.GetPersistContextCountNoPath(L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
