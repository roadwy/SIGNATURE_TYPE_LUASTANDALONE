local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
end
if string.len(L0_0) < 2048 then
  return mp.CLEAN
end
if string.find(L0_0, "%.ps1") then
  return mp.CLEAN
end
TrackCustomPersistContextNameByPPID("set", bm.get_current_process_startup_info().ppid, "MimikatzTrigger")
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
return mp.INFECTED
