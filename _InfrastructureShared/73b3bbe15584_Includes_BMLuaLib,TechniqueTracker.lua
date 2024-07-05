local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil or L0_0 > 10485760 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = isParentPackageManager
L3_3 = L1_1.ppid
L2_2 = L2_2(L3_3, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(this_sigattrlog[1].utf8p1)
    L2_2 = L3_3
  end
end
if L2_2 ~= nil then
  L3_3 = #L2_2
elseif L3_3 < 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  "/var/tmp/",
  "/tmp/",
  "/dev/shm/",
  "/root/",
  "/run/",
  "/var/run/"
}
for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
  if L2_2:sub(1, #_FORV_8_) == _FORV_8_ then
    bm.add_related_file(L2_2)
    return mp.INFECTED
  end
end
return mp.CLEAN
