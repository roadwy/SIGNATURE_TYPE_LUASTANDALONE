local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(this_sigattrlog[3].utf8p1)
  MpCommon.AppendPersistContextNoPath("CreatedAppDataMsi", L0_0, 10)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
