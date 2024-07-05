local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L1_1 = L1_1(L0_0)
    if L1_1 > 3 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0)
      if string.find(L1_1, "shell32", 1, true) ~= nil and string.find(L1_1, "shellexec_rundll", 1, true) ~= nil and string.find(L1_1, ":\\programdata\\", 1, true) ~= nil and (string.find(L1_1, "msiexec", 1, true) ~= nil or string.find(L1_1, "odbcconf", 1, true) ~= nil or string.find(L1_1, "control.exe", 1, true) ~= nil) then
        bm_AddRelatedFileFromCommandLine(L0_0)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
