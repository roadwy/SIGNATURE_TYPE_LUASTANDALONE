local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "ca.dev.cor.fi",
  "bit.ly/ltposh",
  "labtech",
  "install-lsagent"
}
if contains(L0_0, L1_1) then
  return mp.CLEAN
end
if contains(L0_0, "powershell") and contains(L0_0, "downloadstring") then
  return mp.INFECTED
end
return mp.CLEAN
