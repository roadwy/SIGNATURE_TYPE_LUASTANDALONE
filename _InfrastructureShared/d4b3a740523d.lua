local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  elseif L1_1 then
    L1_1 = {
      L2_2,
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      "lynx",
      "apache"
    }
    L5_5 = "wget"
    L6_6 = "curl"
    for L5_5, L6_6 in L2_2(L3_3) do
      if string.find(L0_0, L6_6, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
