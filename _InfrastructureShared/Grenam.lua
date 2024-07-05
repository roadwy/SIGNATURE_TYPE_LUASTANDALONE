local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = Remediation
L0_0 = L0_0.Threat
if L1_1 ~= "Virus:Win32/Grenam.A" then
elseif L1_1 == "Virus:Win32/Grenam.B" then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = L5_5.Schema
    if L6_6 == "file" then
      L6_6 = sysio
      L6_6 = L6_6.IsFileExists
      L7_7 = L5_5.Path
      L6_6 = L6_6(L7_7)
      if L6_6 then
        L6_6 = L5_5.Path
        L7_7 = L6_6
        L6_6 = L6_6.match
        L8_8 = "(.+\\)([^\\]+)$"
        L7_7 = L6_6(L7_7, L8_8)
        L8_8 = nil
        L9_9 = L0_0.Name
        if L9_9 == "Virus:Win32/Grenam.A" then
          L8_8 = "g"
        else
          L9_9 = L0_0.Name
          if L9_9 == "Virus:Win32/Grenam.B" then
            L8_8 = "v"
          end
        end
        L9_9 = L6_6
        L9_9 = L9_9 .. L8_8 .. string.sub(L7_7, 0, -4) .. "ico"
        if sysio.IsFileExists(L9_9) then
          sysio.DeleteFile(L9_9)
        end
      end
    end
  end
end
