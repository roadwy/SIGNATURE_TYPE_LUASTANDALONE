if peattributes.isdll and peattributes.amd64_image then
  if mp.HSTR_WEIGHT >= 4 then
    if not hstrlog[7].matched and not hstrlog[8].matched and not hstrlog[9].matched and not hstrlog[10].matched then
      mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G")
    end
    if not hstrlog[6].matched and hstrlog[7].matched ^ hstrlog[8].matched then
      mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G2")
      return mp.CLEAN
    end
    if mp.HSTR_WEIGHT >= 6 then
      mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G3")
      return mp.CLEAN
    elseif mp.HSTR_WEIGHT == 4 or mp.HSTR_WEIGHT == 5 then
      if hstrlog[6].matched then
      end
      if hstrlog[7].matched then
      end
      if hstrlog[8].matched then
      end
      if hstrlog[9].matched then
      end
      if hstrlog[10].matched then
      end
      if hstrlog[11].matched then
      end
      if 0 + 1 + 1 + 1 + 1 + 1 + 1 <= 3 then
        mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G5")
        return mp.CLEAN
      end
    end
    mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G4")
    return mp.CLEAN
  end
  pe.set_peattribute("hstr_exhaustive", true)
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.G1")
end
return mp.CLEAN
