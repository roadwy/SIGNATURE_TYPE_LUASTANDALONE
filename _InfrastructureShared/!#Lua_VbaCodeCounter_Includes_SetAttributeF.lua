local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "MpVBAPCodeRoutines"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = SetAttributeFromClassifierScoresEx
  L2_2 = L0_0
  L1_1(L2_2, {
    90,
    80,
    70,
    60,
    30,
    20,
    10,
    8,
    4,
    2,
    1,
    0
  }, "Lua:VbaPcodeApproxCount:")
end
L1_1 = mp
L1_1 = L1_1.get_mpattributevalue
L2_2 = "MpVBASourceRoutines"
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = SetAttributeFromClassifierScoresEx
  L2_2(L1_1, {
    90,
    80,
    70,
    60,
    30,
    20,
    10,
    8,
    4,
    2,
    1,
    0
  }, "Lua:VbaSourceApproxCount:")
end
if L0_0 and L1_1 then
  L2_2 = nil
  if L0_0 >= L1_1 then
    L2_2 = (L0_0 - L1_1) * 100 / (L0_0 + L1_1)
  else
    L2_2 = (L1_1 - L0_0) * 100 / (L0_0 + L1_1)
  end
  SetAttributeFromClassifierScoresEx(L2_2, {
    90,
    80,
    70,
    60,
    30,
    20,
    10,
    8,
    4,
    2,
    1,
    0
  }, "Lua:VbaRelativeDiff:")
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
