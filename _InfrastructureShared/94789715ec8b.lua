local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.dirty_wx_branch
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.hstr_exhaustive
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.hasappendeddata
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = peattributes
L0_0 = L0_0.suspicious_timestamp
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.suspicious_image_version
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
