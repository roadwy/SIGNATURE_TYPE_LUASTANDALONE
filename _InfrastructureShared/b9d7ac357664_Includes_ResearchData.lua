local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = sysio
L0_0 = L0_0.RegExpandUserKey
L0_0 = L0_0(L1_1)
if L0_0 then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = string
    L7_7 = L7_7.lower
    L8_8 = L5_5
    L7_7 = L7_7(L8_8)
    L8_8 = "hkcu@s-1-5-21-"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 then
      L6_6 = sysio
      L6_6 = L6_6.RegOpenKey
      L7_7 = L5_5
      L6_6 = L6_6(L7_7)
      if L6_6 then
        L7_7 = sysio
        L7_7 = L7_7.GetRegValueAsString
        L8_8 = L6_6
        L9_9 = "COR_PROFILER"
        L7_7 = L7_7(L8_8, L9_9)
        if L7_7 then
          L8_8 = sysio
          L8_8 = L8_8.GetRegValueAsString
          L9_9 = L6_6
          L10_10 = "COR_PROFILER_PATH"
          L8_8 = L8_8(L9_9, L10_10)
          if L8_8 then
            L9_9 = set_research_data
            L10_10 = "cor_prof_path"
            L11_11 = L8_8
            L12_12 = false
            L9_9(L10_10, L11_11, L12_12)
            L9_9 = mp
            L9_9 = L9_9.INFECTED
            return L9_9
          end
          L9_9 = string
          L9_9 = L9_9.match
          L10_10 = L5_5
          L11_11 = "(HKCU.-)\\"
          L9_9 = L9_9(L10_10, L11_11)
          if L9_9 then
            L10_10 = L9_9
            L11_11 = "\\Software\\Classes\\CLSID\\"
            L12_12 = L7_7
            L10_10 = L10_10 .. L11_11 .. L12_12 .. "\\InprocServer32"
            L11_11 = sysio
            L11_11 = L11_11.RegOpenKey
            L12_12 = L10_10
            L11_11 = L11_11(L12_12)
            if L11_11 then
              L12_12 = sysio
              L12_12 = L12_12.GetRegValueAsString
              L12_12 = L12_12(L11_11, "")
              if L12_12 then
                if string.len(L12_12) < 4 and string.lower(L12_12) ~= "cmd" then
                  return mp.CLEAN
                end
                set_research_data("inprocserver32", L12_12, false)
                mp.set_mpattribute("MpDisableCaching")
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
return L1_1
