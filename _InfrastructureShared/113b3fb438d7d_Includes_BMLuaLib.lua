local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p2
    end
  end
end
L1_1 = bm_AddRelatedFileFromCommandLine
L1_1(L0_0, nil, nil, 6)
L1_1 = sms_untrusted_process
L1_1()
L1_1 = mp
L1_1 = L1_1.CLEAN
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 then
  L1_1 = reportGenericRansomware(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 then
  L1_1 = reportGenericRansomware(this_sigattrlog[5].utf8p2)
end
if L1_1 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
