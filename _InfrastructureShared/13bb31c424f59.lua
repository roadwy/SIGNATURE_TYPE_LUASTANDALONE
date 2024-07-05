local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[6]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.match
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[3].utf8p1)
        L1_1 = L1_1(L2_2, "^(.+)\\\\imagepath")
        if L0_0 ~= L1_1 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[3].utf8p2)
        if L2_2 == nil or string.len(L2_2) <= 8 or string.find(L2_2, "\\tweaking_ras.exe", 1, true) then
          return mp.CLEAN
        elseif string.find(L2_2, "powershell", 1, true) or string.find(L2_2, "wscript", 1, true) or string.find(L2_2, "cscript", 1, true) or string.find(L2_2, "mshta", 1, true) or string.find(L2_2, "cmd.exe /c ", 1, true) or string.find(L2_2, "cmd.exe /q /c ", 1, true) or string.find(L2_2, "cmd /c ", 1, true) or string.find(L2_2, "cmd /q /c ", 1, true) or string.find(L2_2, "%comspec% ", 1, true) or string.find(L2_2, "/c start ", 1, true) then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
