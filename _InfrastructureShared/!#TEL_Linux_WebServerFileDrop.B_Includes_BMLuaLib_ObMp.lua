local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = {
    {"", "apache2"},
    {"", "nginx"},
    {"", "httpd"},
    {"", "php-fpm"}
  }
  if checkParentCmdline(L0_0, L2_2, 5) then
    mp.set_mpattribute("BM_WebServerFileDrop")
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
