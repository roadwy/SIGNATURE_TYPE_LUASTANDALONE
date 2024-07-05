local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "ftp",
  "sftp-server",
  "vsftpd",
  "netkit-fp",
  "sshd",
  "smbclient",
  "wget",
  "curl"
}
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if L1_1 == _FORV_7_ then
    mp.set_mpattribute("MpForceScanArchives")
    return mp.INFECTED
  end
end
return mp.CLEAN
