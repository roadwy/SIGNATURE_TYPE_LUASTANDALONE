local L0_0
L0_0 = ""
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
extractRansomNote(L0_0)
sms_untrusted_process()
return mp.INFECTED
