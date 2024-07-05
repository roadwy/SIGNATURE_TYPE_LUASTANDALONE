local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.no_exports
  if not L0_0 then
    L0_0 = {}
    L0_0["rsasec.dll"] = true
    L0_0["secctp.dll"] = true
    L0_0["module_ls.dll"] = true
    L0_0["deploy.dll"] = true
    L0_0["deplay.dll"] = true
    L0_0["jpicom.dll"] = true
    L0_0["nbdcom.dll"] = true
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_FNAME
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
    if L1_1 then
      L2_2 = L0_0[L1_1]
      if L2_2 then
        L2_2 = mp
        L2_2 = L2_2.INFECTED
        return L2_2
      end
    end
    L2_2 = pe
    L2_2 = L2_2.get_versioninfo
    L2_2 = L2_2()
    if L2_2 then
      L3_3 = L2_2.OriginalFilename
      if L3_3 and L0_0[string.lower(L3_3)] then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
