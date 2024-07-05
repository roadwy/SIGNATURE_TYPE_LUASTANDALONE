local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and (L0_0:sub(1, 2) == "\\\\" or L0_0:sub(1, 3) == "\"\\\\" or L0_0:sub(1, 3) == "'\\\\") then
  if L0_0:find("remoteauditservice.exe$") then
    return mp.CLEAN
  end
  if L0_0:find("sartorius.com\\.+\\smstsvc") then
    return mp.CLEAN
  end
  if L0_0:find("\\\\.+\\c%$\\") or L0_0:find("\\\\.+\\admin%$\\") then
    bm.add_threat_file(L0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN
