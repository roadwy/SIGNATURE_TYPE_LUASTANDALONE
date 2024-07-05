local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L0_0 = L0_0(footerpage, 4025)
  if L0_0 ~= 17780832 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L0_0 = L0_0(footerpage, 4029)
  if L0_0 ~= 1493050444 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = nil
  if mp.crc32(-1, footerpage, 4033, 64) == 1763915979 then
    L0_0 = 3426
  elseif mp.crc32(-1, footerpage, 4033, 64) == 2558714366 then
    L0_0 = 3057
  elseif mp.crc32(-1, footerpage, 4033, 64) == 2981753981 then
    L0_0 = 3055
  else
    return mp.CLEAN
  end
  if mp.crc32(-1, footerpage, L0_0, 400) == 3208132055 then
  else
    return mp.CLEAN
  end
  if true == true then
    if ((pevars.epsec < pehdr.NumberOfSections or mp.readu_u32(epcode, 1) ~= 2030270560 or peattributes.epoutofimage or peattributes.amd64_image) and true) == true then
      mp.changedetectionname(805306412)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
