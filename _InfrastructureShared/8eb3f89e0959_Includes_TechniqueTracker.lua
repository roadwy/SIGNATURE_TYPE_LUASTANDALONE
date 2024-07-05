local L0_0, L1_1, L2_2
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
        L1_1 = L1_1.utf8p2
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[2].utf8p2)
        if L0_0 ~= string.match(L1_1, "\\classes\\(.+)\\shell") then
          return mp.CLEAN
        end
        if string.len(L2_2) < 4 then
          return mp.CLEAN
        end
        if string.find(L2_2, "%1", 1, true) then
          return mp.CLEAN
        elseif string.find(L2_2, "cmd.exe", 1, true) or string.find(L2_2, "cmd ", 1, true) or string.find(L2_2, "powershell", 1, true) or string.find(L2_2, "schtasks", 1, true) or string.find(L2_2, "cscript", 1, true) or string.find(L2_2, "wscript", 1, true) or string.find(L2_2, "mshta", 1, true) or string.find(L2_2, "reg add", 1, true) or string.find(L2_2, "reg.exe add", 1, true) or string.find(L2_2, "regedit.exe", 1, true) or string.find(L2_2, "bypass", 1, true) or string.find(L2_2, "\\appdata\\roaming\\", 1, true) or string.find(L2_2, "\\appdata\\local\\", 1, true) or string.find(L2_2, "\\users\\public\\", 1, true) or string.find(L2_2, "\\programdata\\", 1, true) or string.find(L2_2, "%.bat$") or string.find(L2_2, "%.cmd$") or string.find(L2_2, "%.js$") or string.find(L2_2, "%.vbs$") or string.find(L2_2, "%.wsf$") then
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
