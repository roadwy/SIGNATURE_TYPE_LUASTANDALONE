local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L3_3 = 1
L4_4 = true
if L0_0 then
  for L3_3, L4_4 in L0_0(L1_1) do
    L5_5 = L4_4.Schema
    if L5_5 == "file" then
      L5_5 = string
      L5_5 = L5_5.match
      L6_6 = L4_4.Path
      L7_7 = "(.+\\)([^\\]+)$"
      L6_6 = L5_5(L6_6, L7_7)
      L7_7 = string
      L7_7 = L7_7.find
      L7_7 = L7_7(string.lower(L6_6), "g..gl. .hr.m.%.lnk")
      if L7_7 == 1 then
        L7_7 = sysio
        L7_7 = L7_7.RegOpenKey
        L7_7 = L7_7("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome")
        L7_7 = L7_7 or sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome")
        if L7_7 then
          if sysio.GetRegValueAsString(L7_7, "InstallLocation") == "C:\\Program Files (x86)\\Google\\Chrome\\Application" then
            MpCommon.SetGlobalMpAttribute("LUA:HopadefChromex86")
          elseif sysio.GetRegValueAsString(L7_7, "InstallLocation") == "C:\\Program Files\\Google\\Chrome\\Application" then
            MpCommon.SetGlobalMpAttribute("LUA:HopadefChromeNox86")
          end
        end
      else
        L7_7 = string
        L7_7 = L7_7.find
        L7_7 = L7_7(string.lower(L6_6), "int.rn.t ...l.r.r%.lnk")
        if L7_7 ~= 1 then
          L7_7 = string
          L7_7 = L7_7.find
          L7_7 = L7_7(string.lower(L6_6), "int.rn.t ...l.r.r (n. .dd-.ns)%.lnk")
          if L7_7 ~= 1 then
            L7_7 = string
            L7_7 = L7_7.find
            L7_7 = L7_7(string.lower(L6_6), "int.rn.t ...l.r.r (64-bit)%.lnk")
          end
        elseif L7_7 == 1 then
          L7_7 = MpCommon
          L7_7 = L7_7.ExpandEnvironmentVariables
          L7_7 = L7_7("%program_files%")
          if string.find(string.lower(L7_7), " (x86)", 1, true) ~= nil then
            MpCommon.SetGlobalMpAttribute("LUA:HopadefIEx86")
          else
            MpCommon.SetGlobalMpAttribute("LUA:HopadefIENox86")
          end
        end
      end
    end
  end
end
