local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = ""
L2_2 = ""
L3_3 = ""
L4_4 = {}
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == 16385 then
    L9_9 = sigattr_tail
    L9_9 = L9_9[L8_8]
    L9_9 = L9_9.utf8p2
    if L9_9 ~= 0 then
      L9_9 = sigattr_tail
      L9_9 = L9_9[L8_8]
      L9_9 = L9_9.utf8p2
      if L9_9 ~= "" then
        L9_9 = sigattr_tail
        L9_9 = L9_9[L8_8]
        L9_9 = L9_9.utf8p2
        L9_9 = L9_9.lower
        L9_9 = L9_9(L9_9)
        for _FORV_14_, _FORV_15_ in string.gmatch(L9_9, "(%w+):(%w+)") do
          ({})[_FORV_14_] = _FORV_15_
        end
        L1_1 = scrubData(({}).usrname)
        L2_2 = scrubData(({}).domain)
        L3_3 = ({}).remoteip
        if L1_1 ~= nil and L2_2 ~= nil and L3_3 ~= nil then
          table.insert(L4_4, {
            RemoteClientUser = L1_1,
            RemoteClientDomain = L2_2,
            RemoteClientIP = L3_3
          })
        end
      end
    end
  end
end
if L5_5 > 0 then
  L8_8 = L4_4
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
  L5_5()
  return L5_5
end
return L5_5
