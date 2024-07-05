local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = L0_0.len
L1_1 = L1_1(L0_0)
if L1_1 < 6 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(L0_0, -5)
if L1_1 ~= "->CMT" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_parent_filehandle
L1_1 = L1_1()
if mp.is_handle_nil(L1_1) then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile_by_handle(L1_1, 0, 7) ~= "Rar!\026\a\000" then
  return mp.CLEAN
end
return mp.INFECTED
