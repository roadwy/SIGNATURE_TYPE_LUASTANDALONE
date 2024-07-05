local L0_0
if this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[7].utf8p2)
end
if L0_0 ~= nil and (L0_0:sub(1, 2) == "\\\\" or L0_0:sub(1, 3) == "\"\\\\" or L0_0:sub(1, 3) == "'\\\\") then
  if IsPidExcluded(this_sigattrlog[7].ppid) then
    return mp.CLEAN
  end
  if L0_0:find("\\sysvol", 1, true) or L0_0:find("\\netlogon", 1, true) or L0_0:find("\\ccm", 1, true) or L0_0:find("\\sccm", 1, true) then
    return mp.CLEAN
  end
  if L0_0:find("\\release\\", 1, true) or L0_0:find("\\debug\\", 1, true) or L0_0:find("\\apps\\", 1, true) then
    return mp.CLEAN
  end
  if ({
    ["node.exe"] = true,
    ["java.exe"] = true,
    ["ruby.exe"] = true,
    ["cefsharp.browsersubprocess.exe"] = true
  })[L0_0:match("\\([^\\]+)$")] then
    return mp.CLEAN
  end
  if is_excluded_parent_proc_auto() then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM(this_sigattrlog[7].ppid, "T1021.002", "exec_from_remoteshare")
  return mp.INFECTED
end
return mp.CLEAN
