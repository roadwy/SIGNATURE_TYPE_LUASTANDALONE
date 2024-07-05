local L0_0
L0_0 = 0
if hstrlog[11].matched or hstrlog[12].matched or hstrlog[13].matched or hstrlog[14].matched or hstrlog[15].matched or hstrlog[16].matched or hstrlog[17].matched or hstrlog[18].matched or hstrlog[19].matched then
  L0_0 = L0_0 + 1
end
if mp.HSTR_WEIGHT == 1 then
  if L0_0 == 1 then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.ALT1")
    return mp.CLEAN
  end
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.ALT2")
  return mp.CLEAN
end
if hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched or hstrlog[9].matched or hstrlog[10].matched then
  L0_0 = L0_0 + 1
end
if L0_0 == 2 then
  if not mp.get_mpattribute("LoD:VirTool:Win32/Obfuscator.ACV.3") then
    pe.set_peattribute("disable_apicall_limit", true)
    mp.set_mpattribute("LoD:VirTool:Win32/Obfuscator.ACV.3")
    pe.reemulate()
  end
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.ALT3")
return mp.CLEAN
