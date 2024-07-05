local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "GenericAllowlist"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "docker-compose.exe",
  "docker-compose-Windows-x86_64",
  "dbRecord",
  "iotedgehubdev"
}
if contains(L0_0, L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
