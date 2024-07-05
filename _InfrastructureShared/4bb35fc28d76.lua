local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if L0_0 == nil or #L0_0 < 12 then
  return mp.CLEAN
end
if ({
  [".exe"] = true,
  [".scr"] = true,
  [".dll"] = true,
  [".com"] = true,
  [".bat"] = true,
  [".cmd"] = true,
  [".cpl"] = true,
  [".ocx"] = true,
  [".ps1"] = true,
  [".vbs"] = true,
  [".jse"] = true,
  [".vbe"] = true,
  [".wsf"] = true,
  [".wsh"] = true
})[string.sub(L0_0, -4)] == nil or string.sub(L0_0, -3) ~= ".js" then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
if tonumber(string.match(bm.get_current_process_startup_info().ppid, "pid:(%w+),ProcessStart:%w+")) ~= nil and tonumber(string.match(bm.get_current_process_startup_info().ppid, "pid:(%w+),ProcessStart:%w+")) <= 4 then
  MpCommon.AppendPersistContext(L0_0, "SystemDropToUserProfile.A", 1800)
  return mp.INFECTED
end
return mp.CLEAN
