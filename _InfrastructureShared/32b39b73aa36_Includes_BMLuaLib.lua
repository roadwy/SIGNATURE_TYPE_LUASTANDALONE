local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
  if string.find(string.lower(L0_0), "d0nut.html") ~= nil then
    extractRansomNote(L0_0)
    sms_untrusted_process()
    return mp.INFECTED
  end
end
return mp.CLEAN
