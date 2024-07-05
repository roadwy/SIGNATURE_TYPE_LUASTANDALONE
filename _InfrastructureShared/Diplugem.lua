local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = Remediation
L0_0 = L0_0.Threat
if L1_1 == "BrowserModifier:Win32/Diplugem" then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = L5_5.Schema
    if L6_6 == "file" then
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L5_5.Path
      L6_6 = L6_6(L7_7, ".dll$")
      if not L6_6 then
        L6_6 = string
        L6_6 = L6_6.find
        L7_7 = L5_5.Path
        L6_6 = L6_6(L7_7, ".exe$")
      elseif L6_6 then
        L6_6 = nil
        L7_7 = string
        L7_7 = L7_7.sub
        L7_7 = L7_7(L5_5.Path, 0, -4)
        if string.find(L7_7, "%.x64%.$") then
          L7_7 = string.sub(L7_7, 0, -5)
          L6_6 = L7_7 .. "dll"
        else
          L6_6 = L7_7 .. "x64.dll"
        end
        if sysio.IsFileExists(L6_6) then
          sysio.DeleteFile(L6_6)
        end
        L6_6 = L7_7 .. "dat"
        if sysio.IsFileExists(L6_6) then
          sysio.DeleteFile(L6_6)
        end
        L6_6 = L7_7 .. "tlb"
        if sysio.IsFileExists(L6_6) then
          sysio.DeleteFile(L6_6)
        end
      end
    end
  end
end
