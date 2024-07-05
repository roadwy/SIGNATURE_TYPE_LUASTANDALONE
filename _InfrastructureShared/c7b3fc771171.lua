local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == ".php" then
    L1_1 = {
      L2_2,
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      "/misc",
      "/photo",
      "/assets",
      "/upload"
    }
    L6_6 = "/gallery"
    for L5_5, L6_6 in L2_2(L3_3) do
      if string.find(L0_0, L6_6, 1, true) then
        return mp.INFECTED
      end
    end
  else
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.sub
      L1_1 = L1_1(L2_2, L3_3)
      L1_1 = L2_2
      L6_6 = "gif"
      for L6_6, _FORV_7_ in L3_3(L4_4) do
        if _FORV_7_ == L1_1 then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
