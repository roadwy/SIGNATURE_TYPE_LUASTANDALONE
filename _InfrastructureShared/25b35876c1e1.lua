local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_connection_string
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L2_2 = ""
if L1_1 == nil then
  return mp.CLEAN
end
if L1_1 == "" then
  return mp.CLEAN
end
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0 == "" then
  return mp.CLEAN
end
L2_2 = string.lower(L1_1)
if 25 == tonumber(string.match(L0_0, "DestPort=(%d+);")) or 465 == tonumber(string.match(L0_0, "DestPort=(%d+);")) or 587 == tonumber(string.match(L0_0, "DestPort=(%d+);")) then
  if L2_2:find("explorer.exe") or L2_2:find("svchost.exe") or L2_2:find("cmd.exe") or L2_2:find("calc.exe") or L2_2:find("notepad.exe") then
    return mp.INFECTED
  end
  if L2_2:find("mrt.exe") or L2_2:find("msmpeng.exe") or L2_2:find("services.exe") or L2_2:find("smss.exe") or L2_2:find("winlogon.exe") then
    return mp.INFECTED
  end
  if L2_2:find("wuauclt.exe") or L2_2:find("wininit.exe") or L2_2:find("lsass.exe") or L2_2:find("taskhost.exe") or L2_2:find("rundll32.exe") then
    return mp.INFECTED
  end
end
return mp.CLEAN
