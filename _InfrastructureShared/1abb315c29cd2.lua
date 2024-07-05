local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
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
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L3_3 = L4_4.ppid
  else
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.matched
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L3_3 = L4_4.ppid
    else
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L4_4 = L4_4.matched
      if L4_4 then
        L4_4 = this_sigattrlog
        L4_4 = L4_4[4]
        L3_3 = L4_4.ppid
      else
        L4_4 = this_sigattrlog
        L4_4 = L4_4[5]
        L4_4 = L4_4.matched
        if L4_4 then
          L4_4 = this_sigattrlog
          L4_4 = L4_4[5]
          L3_3 = L4_4.ppid
        else
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
      end
    end
  end
end
L4_4 = nil
L5_5 = false
if L6_6 then
  L11_11 = L7_7(L8_8)
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
  for _FORV_15_, _FORV_16_ in ipairs(L11_11) do
    if _FORV_16_.image_path ~= nil and _FORV_16_.reason == 1 then
      if _FORV_16_.ppid == L4_4 then
        return mp.CLEAN
      end
      if L0_0[string.lower(string.match(_FORV_16_.image_path, "\\([^\\]+)$"))] == true or L1_1[string.lower(string.match(_FORV_16_.image_path, "\\([^\\]+)$"))] == true or L2_2[string.lower(string.match(_FORV_16_.image_path, "\\([^\\]+)$"))] == true then
        if L5_5 == true then
          return mp.INFECTED
        else
          mp.ReportLowfi(_FORV_16_.image_path, 1694283818)
        end
      end
      bm.add_related_file(_FORV_16_.image_path)
      L3_3 = _FORV_16_.ppid
    end
  end
end
return L6_6
