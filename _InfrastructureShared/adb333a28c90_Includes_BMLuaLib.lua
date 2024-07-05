local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.CLEAN
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = reportGenericRansomware
    L1_1 = L1_1(this_sigattrlog[3].utf8p2)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.utf8p2
    if L1_1 then
      L1_1 = reportGenericRansomware
      L1_1 = L1_1(this_sigattrlog[4].utf8p2)
      L0_0 = L1_1
    end
  end
end
L1_1 = ""
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[2].utf8p1
end
if L1_1 ~= "" then
  extractRansomNote(L1_1)
end
if L0_0 == mp.INFECTED then
  reportTimingData()
  sms_untrusted_process()
  return mp.INFECTED
end
return mp.CLEAN
