local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  else
    L1_1 = {
      L2_2,
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      ".mysql_history",
      "backup",
      "priv",
      "config"
    }
    L5_5 = ".bash_history"
    L6_6 = ".htpasswd"
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
