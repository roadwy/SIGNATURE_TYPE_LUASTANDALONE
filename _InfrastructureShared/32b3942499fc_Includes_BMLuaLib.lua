local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
    L1_1 = nil
    if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
      L1_1 = sysio.GetFileSize(L0_0)
      if L1_1 ~= nil and L1_1 > 30000 and L1_1 < 40000 then
        sms_untrusted_process()
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
