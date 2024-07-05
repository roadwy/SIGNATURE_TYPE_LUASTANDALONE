local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.match
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L2_2 = "\\\\BitTorrent$"
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 ~= nil then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
    L0_0 = string
    L0_0 = L0_0.match
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L2_2 = "\\\\uTorrent$"
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 ~= nil then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.match
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L2_2 = "%a:[^:\"]+%.exe"
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 then
      L1_1 = bm
      L1_1 = L1_1.add_related_file
      L2_2 = mp
      L2_2 = L2_2.ContextualExpandEnvironmentVariables
      L3_3 = L0_0
      L3_3 = L2_2(L3_3)
      L1_1(L2_2, L3_3, L2_2(L3_3))
    end
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L3_3 = "%a:[^:\"]+%.ps1"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L3_3 = mp
      L3_3 = L3_3.ContextualExpandEnvironmentVariables
      L3_3 = L3_3(L1_1)
      L2_2(L3_3, L3_3(L1_1))
    end
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3, "%a:[^:\"]+%.bat")
    if L2_2 then
      L3_3 = bm
      L3_3 = L3_3.add_related_file
      L3_3(mp.ContextualExpandEnvironmentVariables(L2_2))
    end
    L3_3 = string
    L3_3 = L3_3.match
    L3_3 = L3_3(this_sigattrlog[1].utf8p2, "%a:[^:\"]+%.dll")
    if L3_3 then
      bm.add_related_file(mp.ContextualExpandEnvironmentVariables(L3_3))
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
