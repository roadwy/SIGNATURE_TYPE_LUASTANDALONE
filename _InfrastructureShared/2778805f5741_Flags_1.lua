local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_DEBUG
L0_0 = L0_0[L1_1]
L0_0 = L0_0.Size
if L0_0 ~= 0 then
  L0_0 = pehdr
  L0_0 = L0_0.DataDirectory
  L1_1 = pe
  L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_DEBUG
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Size
  if L0_0 ~= 0 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
