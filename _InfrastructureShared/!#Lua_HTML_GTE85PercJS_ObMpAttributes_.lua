local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "%-%>%(script000%d%)", -15)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_parent_filehandle
L1_1 = L1_1()
if L1_1 ~= nil and mp.getfilesize() > mp.get_filesize_by_handle(L1_1) * 85 / 100 then
  return mp.INFECTED
end
return mp.CLEAN
