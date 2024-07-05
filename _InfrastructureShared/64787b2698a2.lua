local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_SECURITY
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
if L0_0 == 0 then
  L1_1 = mp
  L1_1 = L1_1.LOWFI
  return L1_1
end
L1_1 = L0_0 + 4096
if L1_1 > mp.getfilesize() then
  L1_1 = mp
  L1_1 = L1_1.LOWFI
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(L0_0 + 3904, 27)
if L1_1 == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
L1_1 = mp.readfile(L0_0 + 3876, 27)
if L1_1 == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
L1_1 = mp.readfile(L0_0 + 3602, 27)
if L1_1 == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
return mp.LOWFI
