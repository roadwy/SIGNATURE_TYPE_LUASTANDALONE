local L0_0, L1_1
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if not L1_1 then
  return mp.CLEAN
end
if StringEndsWith(L1_1, "/smbclient") or StringEndsWith(L1_1, "/vsftpd") or StringEndsWith(L1_1, "/ftp") or StringEndsWith(L1_1, "/netkit-fp") or StringEndsWith(L1_1, "/sftp-server") or StringEndsWith(L1_1, "/sshd") then
  if this_sigattrlog[1].matched then
    L0_0 = this_sigattrlog[1].utf8p2
  elseif this_sigattrlog[2].matched then
    L0_0 = this_sigattrlog[2].utf8p2
  end
  if not L0_0 then
    return mp.CLEAN
  end
  taint(L0_0, "remote_file_created_taint", 3600)
  mp.ReportLowfi(L0_0, 3672992343)
end
return mp.CLEAN
