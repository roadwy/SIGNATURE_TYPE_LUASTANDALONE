local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in pairs(L0_0) do
  if _FORV_5_.Signers ~= nil then
    return mp.CLEAN
  end
end
if this_sigattrlog[1].matched and this_sigattrlog[2].matched and this_sigattrlog[3].matched and (this_sigattrlog[1].p1:lower() .. this_sigattrlog[2].p1:lower() .. this_sigattrlog[3].p1:lower() == "unsafe" or this_sigattrlog[1].p1:lower() .. this_sigattrlog[3].p1:lower() .. this_sigattrlog[2].p1:lower() == "unsafe") then
  return mp.INFECTED
end
return mp.LOWFI
