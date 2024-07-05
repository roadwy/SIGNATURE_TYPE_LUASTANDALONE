local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "InEmail"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_parent_filehandle
  L0_0 = L0_0()
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L1_1(false)
  L1_1 = mp
  L1_1 = L1_1.GetNormalizedScript
  L1_1 = L1_1(mp.readfile_by_handle(L0_0, 0, 8192))
  mp.readprotection(true)
  if string.gsub(L1_1, "%<meta", "", 4) < 3 and string.gsub(L1_1, "%<pclass=", "", 4) < 3 then
    mp.set_mpattribute("SCRIPT:JS/ObfusScript_C.guardpassed")
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
