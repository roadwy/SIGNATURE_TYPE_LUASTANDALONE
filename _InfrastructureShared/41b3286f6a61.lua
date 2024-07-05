local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  L1_1 = nil
  if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
    L1_1 = this_sigattrlog[1].utf8p1
  end
  if L1_1 ~= nil then
    if ({
      ["uacmonitor.exe"] = true,
      ["issuser.exe"] = true,
      ["wdg.automation.agenthost.exe"] = true,
      ["cmd.exe"] = true,
      ["powershell.exe"] = true
    })[string.lower(string.sub(L1_1, -30)):match("\\system32\\([^\\]+%.exe)$")] then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
