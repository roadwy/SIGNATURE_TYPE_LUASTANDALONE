local L0_0, L1_1
L0_0 = IsADConnectRole
L0_0 = L0_0()
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L1_1 = false
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  L1_1 = mp
  L1_1 = L1_1.readfile
  L1_1 = L1_1(0, L0_0)
  L1_1 = string.lower(L1_1)
  if string.find(L1_1, "microsoft.directoryservices.metadirectoryservices.cryptography.keymanager", 1, true) ~= nil and string.find(L1_1, ".loadkeyset(", 1, true) ~= nil and string.find(L1_1, ".getactivecredentialkey(", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
