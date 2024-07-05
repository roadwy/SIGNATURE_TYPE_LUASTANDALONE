local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]
L1_1 = L1_1.Size
if L0_0 == 0 or L1_1 == 0 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 and pehdr.Machine ~= 34404 then
  return mp.CLEAN
end
if mp.getfilesize() < 3072 or mp.getfilesize() >= 5242880 then
  return mp.CLEAN
end
mp.set_mpattribute("SIGATTR:SIGATTR_LOG_ALL_FIRED")
mp.set_mpattribute("SIGATTR:SIGATTR_EXTENDED_LOG")
return mp.CLEAN
