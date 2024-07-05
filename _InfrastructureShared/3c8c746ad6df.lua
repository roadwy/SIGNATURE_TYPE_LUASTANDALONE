local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 15728640 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_ELF_EXEC_FILE"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L1_1 == nil or L0_0 == "" or L1_1 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "/tmp/", 1, true) == 1 or string.find(L0_0, "/var/tmp/", 1, true) == 1 or string.find(L0_0, "/root/", 1, true) == 1 or string.find(L0_0, "/home/", 1, true) == 1 or string.find(L0_0, "/run/shm/", 1, true) == 1 or string.find(L0_0, "/dev/shm/", 1, true) == 1 or string.find(L1_1, ".", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN
