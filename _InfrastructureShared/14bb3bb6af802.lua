local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = {}
L0_0["cmd.exe"] = true
L0_0["powershell.exe"] = true
L1_1 = {}
L1_1["cscript.exe"] = true
L1_1["wscript.exe"] = true
L2_2 = {}
L2_2["python.exe"] = true
L2_2["perl.exe"] = true
L2_2["java.exe"] = true
L3_3 = nil
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L3_3 = L4_4.ppid
else
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
L5_5 = false
if L6_6 then
  L18_18 = L7_7(L8_8)
  L9_9 = "/query"
  L10_10 = 1
  L11_11 = true
  if L7_7 == nil then
    L9_9 = "/delete"
    L10_10 = 1
    L11_11 = true
    if L7_7 == nil then
      L5_5 = true
    end
  end
  L4_4 = L7_7.ppid
elseif L6_6 then
  L5_5 = true
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
elseif L6_6 then
  L4_4 = L6_6.ppid
else
  return L6_6
end
for L9_9 = 1, 6 do
  if L9_9 > 7 then
    L10_10 = mp
    L10_10 = L10_10.CLEAN
    return L10_10
  end
  L10_10 = bm
  L10_10 = L10_10.get_process_relationships
  L11_11 = L3_3
  L11_11 = L10_10(L11_11)
  for L15_15, L16_16 in L12_12(L13_13) do
    L17_17 = L16_16.image_path
    if L17_17 ~= nil then
      L17_17 = L16_16.reason
      if L17_17 == 1 then
        L17_17 = L16_16.ppid
        if L17_17 == L4_4 then
          L17_17 = mp
          L17_17 = L17_17.CLEAN
          return L17_17
        end
        L17_17 = string
        L17_17 = L17_17.lower
        L18_18 = string
        L18_18 = L18_18.match
        L18_18 = L18_18(L16_16.image_path, "\\([^\\]+)$")
        L17_17 = L17_17(L18_18, L18_18(L16_16.image_path, "\\([^\\]+)$"))
        L18_18 = L0_0[L17_17]
        if L18_18 ~= true then
          L18_18 = L1_1[L17_17]
          if L18_18 ~= true then
            L18_18 = L2_2[L17_17]
          end
        elseif L18_18 == true then
          L18_18 = string
          L18_18 = L18_18.lower
          L18_18 = L18_18(mp.GetProcessCommandLine(L16_16.ppid))
          if L18_18 == nil or L18_18 == "" or string.find(L18_18, "\\windows\\ccm\\systemtemp\\", 1, true) == nil and string.find(L18_18, "\\windows\\ccmcache\\", 1, true) == nil then
            if L5_5 == true then
              return mp.INFECTED
            else
              mp.ReportLowfi(L16_16.image_path, 864567885)
            end
          end
        end
        L18_18 = bm
        L18_18 = L18_18.add_related_file
        L18_18(L16_16.image_path)
        L3_3 = L16_16.ppid
      end
    end
  end
end
return L6_6
