local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.amd64_image
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 > 1703936 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
      L0_0 = mp
      L0_0 = L0_0.GetCertificateInfo
      L0_0 = L0_0()
      for _FORV_4_, _FORV_5_ in L1_1(L2_2) do
        if _FORV_5_.Signers ~= nil then
          return mp.CLEAN
        end
      end
      if L1_1 >= 2 and L1_1 <= 10 then
        for _FORV_9_ = 1, L2_2 do
          if L2_2()[_FORV_9_].rva <= 12288 then
          else
          end
        end
        if 1 == 1 and 1 == 1 then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
