local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "imagepath:([^;]+)")
  if L1_1 then
    if isTainted(L1_1, "upx_file_created_taint") then
      bm.add_related_file(L1_1)
      return mp.INFECTED
    end
    if isTainted(L1_1, "remote_file_created_taint") then
      bm.add_related_file(L1_1)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
