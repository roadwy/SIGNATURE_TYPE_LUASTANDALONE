local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(this_sigattrlog[1].utf8p2)
        if string.lower(this_sigattrlog[2].utf8p2) ~= string.match(L0_0, "\\classes\\(.+)\\shell") then
          return mp.CLEAN
        end
        if string.len(L1_1) < 4 then
          return mp.CLEAN
        end
        if string.find(L1_1, "%1", 1, true) then
          return mp.CLEAN
        elseif string.find(L1_1, "cmd.exe", 1, true) or string.find(L1_1, "cmd ", 1, true) or string.find(L1_1, "powershell", 1, true) or string.find(L1_1, "schtasks", 1, true) or string.find(L1_1, "cscript", 1, true) or string.find(L1_1, "wscript", 1, true) or string.find(L1_1, "mshta", 1, true) or string.find(L1_1, "reg add", 1, true) or string.find(L1_1, "reg.exe add", 1, true) or string.find(L1_1, "regedit.exe", 1, true) or string.find(L1_1, "bypass", 1, true) or string.find(L1_1, "\\appdata\\roaming\\", 1, true) or string.find(L1_1, "\\appdata\\local\\", 1, true) or string.find(L1_1, "\\users\\public\\", 1, true) or string.find(L1_1, "\\programdata\\", 1, true) or string.find(L1_1, "%.bat$") or string.find(L1_1, "%.cmd$") or string.find(L1_1, "%.js$") or string.find(L1_1, "%.vbs$") or string.find(L1_1, "%.wsf$") then
          TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
