local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.utf8p1
if not L0_0 then
  return mp.CLEAN
end
if not bm.get_current_process_startup_info() or bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.CLEAN
end
L0_0 = L0_0:lower()
if this_sigattrlog[1].matched and (L0_0:find("__psscriptpolicytest_[^\\]*%.ps1") or L0_0:find("[^%.]+%.[^%.]+%.ps1$")) then
  return mp.CLEAN
end
if L0_0:find("\\amazon\\elasticbeanstalk\\", 1, true) then
  return mp.CLEAN
end
if not mp.IsKnownFriendlyFile(L0_0, false, false) then
  if not string.match(L0_0, "(%.[^%.]+)$") then
    return mp.INFECTED
  end
  if ({
    [".dat"] = true,
    [".pif"] = true,
    [".js"] = true,
    [".jse"] = true,
    [".ps1"] = true,
    [".vbs"] = true,
    [".vbe"] = true,
    [".hta"] = true,
    [".wsf"] = true,
    [".cmd"] = true,
    [".bat"] = true
  })[string.match(L0_0, "(%.[^%.]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
