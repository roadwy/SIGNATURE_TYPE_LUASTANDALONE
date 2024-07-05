local L0_0, L1_1
L0_0 = "suid_file_taint"
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if not L1_1 or not isTainted(L1_1, L0_0) then
  return mp.CLEAN
end
if versioning.GetCloudBlockLevel() >= 4 then
  return mp.INFECTED
end
return mp.CLEAN
