local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
if this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].utf8p1
  L3_3 = string.match(L1_1, "\\([^\\]+)$")
  L0_0 = this_sigattrlog[4].ppid
elseif this_sigattrlog[5].matched then
  L2_2 = this_sigattrlog[5].utf8p1
  L4_4 = string.match(L2_2, "\\([^\\]+)$")
  L0_0 = this_sigattrlog[5].ppid
elseif this_sigattrlog[6].matched then
  L5_5 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L6_6 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
else
end
if L1_1 == nil and L2_2 == nil or L5_5 == nil and L6_6 == nil or this_sigattrlog[8].utf8p1 == nil and this_sigattrlog[9].utf8p1 == nil or L3_3 == nil and L4_4 == nil or L0_0 == nil then
  return mp.CLEAN
end
if L3_3 == L5_5 or L3_3 == L6_6 or L4_4 == L5_5 or L4_4 == L6_6 then
  bm.request_SMS(L0_0, "h+")
  TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
  return mp.INFECTED
end
return mp.CLEAN
