local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "windows\\explorer.exe", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\system32\\svchost.exe", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\syswow64\\svchost.exe", 1, true)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[6].utf8p2)
elseif this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[7].utf8p2)
end
if 4 > string.len(L1_1) and string.lower(L1_1) ~= "cmd" then
  return mp.CLEAN
end
if string.find(L1_1, "%1", 1, true) then
  return mp.CLEAN
elseif string.find(L1_1, "cmd.exe", 1, true) or string.find(L1_1, "cmd ", 1, true) or string.find(L1_1, "powershell", 1, true) or string.find(L1_1, "schtasks", 1, true) or string.find(L1_1, "cscript", 1, true) or string.find(L1_1, "wscript", 1, true) or string.find(L1_1, "mshta", 1, true) or string.find(L1_1, "reg add", 1, true) or string.find(L1_1, "reg.exe add", 1, true) or string.find(L1_1, "regedit.exe", 1, true) or string.find(L1_1, "bypass", 1, true) or string.find(L1_1, "\\appdata\\roaming\\", 1, true) or string.find(L1_1, "\\appdata\\local\\", 1, true) or string.find(L1_1, "\\users\\public\\", 1, true) or string.find(L1_1, "\\programdata\\", 1, true) or string.find(L1_1, "vssadmin.exe", 1, true) or string.find(L1_1, "%.bat$") or string.find(L1_1, "%.cmd$") or string.find(L1_1, "%.js$") or string.find(L1_1, "%.vbs$") or string.find(L1_1, "%.wsf$") or L1_1 == "cmd" then
  TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
  return mp.INFECTED
end
return mp.CLEAN
