local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.image_path ~= nil and string.find(string.lower(_FORV_6_.image_path), "jobagent.host.exe", -17, true) then
    return mp.CLEAN
  end
end
if L3_3 then
elseif L3_3 then
elseif L3_3 then
else
end
L5_5 = "\\inetpub\\wwwroot\\"
if not L3_3 then
  L5_5 = "\\microsoft\\exchange server\\v%d%d\\"
  if not L3_3 then
    L5_5 = "\\microsoft shared\\web server extensions\\%d%d\\"
    if not L3_3 then
      return L3_3
    end
  end
end
if L4_4 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[9]
  L5_5 = L5_5.utf8p1
elseif L4_4 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[10]
  L5_5 = L5_5.utf8p1
elseif L4_4 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[11]
  L5_5 = L5_5.utf8p1
elseif L4_4 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[12]
  L5_5 = L5_5.utf8p1
end
if L3_3 ~= nil then
  L5_5 = L3_3
  L5_5 = "|.asp|aspx|ashx|"
  if string.find(L5_5, L4_4, 1, true) then
    if sysio.IsFileExists(L3_3) then
      bm.add_related_file(L3_3)
    end
    return mp.INFECTED
  end
end
return L4_4
