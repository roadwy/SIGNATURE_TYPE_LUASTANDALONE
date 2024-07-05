local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.wp2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "/admin$", 1, true)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "-c", 1, true)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "put ", 1, true)
      if L1_1 then
        L1_1 = "|.exe|.dll|.bat|.cmd|.vbs|.js|.jse|.vbe|.scr|.com|.cpl|.hta|.ps1|.psc1"
        L2_2 = string
        L2_2 = L2_2.match
        L2_2 = L2_2(L0_0, "[^\\]+(%.%w+).*$")
        if L2_2 and string.find(L1_1, L2_2, 1, true) then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
