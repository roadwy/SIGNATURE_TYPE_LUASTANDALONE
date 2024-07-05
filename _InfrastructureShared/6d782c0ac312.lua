if mp.HSTR_WEIGHT == 4 then
  return mp.SUSPICIOUS
end
if hstrlog[1].matched and hstrlog[2].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.AMY")
end
return mp.LOWFI
