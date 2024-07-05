local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.gsub
  L2_2 = L2_2(L0_0, "\\\\", "\\")
  L0_0 = L2_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L2_2 = L2_2(L1_1, "\\\\", "\\")
  L1_1 = L2_2
  if L0_0 == L1_1 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(bm.get_imagepath())
    if L2_2 then
      if ({
        ["powershell.exe"] = true,
        ["wscript.exe"] = true,
        ["cscript.exe"] = true,
        ["mshta.exe"] = true,
        ["cmd.exe"] = true,
        ["rundll32.exe"] = true,
        ["regsvr32.exe"] = true,
        ["msbuild.exe"] = true,
        ["vbcscompiler.exe"] = true,
        ["csc.exe"] = true,
        ["python.exe"] = true,
        ["pythonw.exe"] = true,
        ["winword.exe"] = true,
        ["excel.exe"] = true,
        ["powerpnt.exe"] = true
      })[string.match(L2_2, "\\([^\\]+)$")] then
        TrackCustomPersistContextNameByPPID("set", "bm", "MimikatzTrigger")
        return mp.INFECTED
      end
      if string.find(L2_2, "\\windows\\", 1, true) or string.find(L2_2, "\\program files", 1, true) or string.find(L2_2, "\\scanner\\", 1, true) or string.find(L2_2, "\\chrome", 1, true) or string.find(L2_2, "\\programfiles\\", 1, true) then
        return mp.CLEAN
      end
      TrackCustomPersistContextNameByPPID("set", "bm", "MimikatzTrigger")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
