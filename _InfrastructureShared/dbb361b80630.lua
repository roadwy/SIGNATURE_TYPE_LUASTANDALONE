local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = {}
L0_0["explorer.exe"] = ""
L0_0["hh.exe"] = ""
L0_0["isuninst.exe"] = ""
L0_0["notepad.exe"] = ""
L0_0["regedit.exe"] = ""
L0_0["slrundll.exe"] = ""
L0_0["taskman.exe"] = ""
L0_0["twunk_16.exe"] = ""
L0_0["twunk_32.exe"] = ""
L0_0["winhelp.exe"] = ""
L0_0["winhlp32.exe"] = ""
L0_0["bfsvc.exe"] = ""
L0_0["fveupdate.exe"] = ""
L0_0["helppane.exe"] = ""
L0_0["write.exe"] = ""
L0_0["splwow64.exe"] = ""
L1_1, L2_2, L3_3, L4_4 = nil, nil, nil, nil
if this_sigattrlog[1].matched and this_sigattrlog[2].matched and this_sigattrlog[3].matched then
  L1_1 = string.lower(this_sigattrlog[1].utf8p1)
  L4_4 = string.lower(this_sigattrlog[2].utf8p2)
  L3_3 = string.lower(this_sigattrlog[3].utf8p1)
  if L1_1 ~= nil and L4_4 ~= nil and L3_3 ~= nil and L1_1 == L3_3 then
    L2_2 = string.match(L1_1, "\\([^\\]+)$")
    if L0_0[L2_2] and string.find(L4_4, L2_2) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
