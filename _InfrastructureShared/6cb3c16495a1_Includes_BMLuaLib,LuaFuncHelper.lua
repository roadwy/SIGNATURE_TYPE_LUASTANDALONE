local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = safeJsonDeserialize
    L0_0 = L0_0(this_sigattrlog[2].utf8p2)
    if not isnull(L0_0) and not isnull(L0_0.rename_ext) then
      if ({
        [".loop"] = true
      })[L0_0.rename_ext:lower()] == true then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
