local L0_0
L0_0 = string
L0_0 = L0_0.format
L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.ZG!upk.1_%08X_%08X", hstrlog[1].VA, hstrlog[2].VA)
mp.set_mpattribute(L0_0)
return mp.SUSPICIOUS
