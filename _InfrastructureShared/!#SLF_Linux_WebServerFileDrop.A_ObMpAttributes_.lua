local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_FULL
L0_0 = L0_0(L1_1)
L1_1 = false
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContextNoPath
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  if L3_3 > 0 then
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = string
      L8_8 = L8_8.match
      L8_8 = L8_8(L0_0, L7_7)
      if L8_8 then
        L1_1 = true
        break
      end
    end
  end
elseif L3_3 then
  L1_1 = true
end
if L1_1 then
  L7_7 = "/run/httpd/httpd.pid"
  for L7_7, L8_8 in L4_4(L5_5) do
    if sysio.IsFileExists(L8_8) then
      return mp.INFECTED
    end
  end
end
return L3_3
