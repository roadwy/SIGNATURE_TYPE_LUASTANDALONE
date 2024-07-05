local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = NormalizeCmdline
L1_1 = L1_1("powershell", L0_0)
if L1_1 == nil then
  return mp.CLEAN
end
if not contains(L1_1, {
  "VMWare",
  "Hyper-V",
  "Parallels",
  "Oracle VM VirtualBox",
  "Citrix Hypervisor",
  "QEMU",
  "Proxmox VE",
  "Docker"
}) then
  return mp.CLEAN
end
return mp.INFECTED
