local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
for L3_3 = 1, L1_1.SIGATTR_LOG_SZ do
  L4_4 = sigattr_tail
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sigattr_tail
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.attribute
    if L4_4 == 16393 then
      L4_4 = sigattr_tail
      L4_4 = L4_4[L3_3]
      L4_4 = L4_4.utf8p1
      if L4_4 then
        L5_5 = string
        L5_5 = L5_5.lower
        L5_5 = L5_5(L4_4)
        L4_4 = L5_5
        if L4_4 then
          L5_5 = string
          L5_5 = L5_5.find
          L5_5 = L5_5(L4_4, "mbam.exe")
          if not L5_5 then
            L5_5 = string
            L5_5 = L5_5.find
            L5_5 = L5_5(L4_4, "mbamscheduler.exe")
            if not L5_5 then
              L5_5 = string
              L5_5 = L5_5.find
              L5_5 = L5_5(L4_4, "mbamservice.exe")
              if not L5_5 then
                L5_5 = string
                L5_5 = L5_5.find
                L5_5 = L5_5(L4_4, "bgscan.exe")
                if not L5_5 then
                  L5_5 = string
                  L5_5 = L5_5.find
                  L5_5 = L5_5(L4_4, "bullguard.exe")
                  if not L5_5 then
                    L5_5 = string
                    L5_5 = L5_5.find
                    L5_5 = L5_5(L4_4, "bullguardbhvscanner.exe")
                    if not L5_5 then
                      L5_5 = string
                      L5_5 = L5_5.find
                      L5_5 = L5_5(L4_4, "bullguarscanner.exe")
                      if not L5_5 then
                        L5_5 = string
                        L5_5 = L5_5.find
                        L5_5 = L5_5(L4_4, "littlehook.exe")
                        if not L5_5 then
                          L5_5 = string
                          L5_5 = L5_5.find
                          L5_5 = L5_5(L4_4, "bullguardupdate.exe")
                          if not L5_5 then
                            L5_5 = string
                            L5_5 = L5_5.find
                            L5_5 = L5_5(L4_4, "clamscan.exe")
                            if not L5_5 then
                              L5_5 = string
                              L5_5 = L5_5.find
                              L5_5 = L5_5(L4_4, "clamtray.exe")
                              if not L5_5 then
                                L5_5 = string
                                L5_5 = L5_5.find
                                L5_5 = L5_5(L4_4, "clamwin.exe")
                                if not L5_5 then
                                  L5_5 = string
                                  L5_5 = L5_5.find
                                  L5_5 = L5_5(L4_4, "freshclam.exe")
                                  if not L5_5 then
                                    L5_5 = string
                                    L5_5 = L5_5.find
                                    L5_5 = L5_5(L4_4, "freshclamwrap.exe")
                                    if not L5_5 then
                                      L5_5 = string
                                      L5_5 = L5_5.find
                                      L5_5 = L5_5(L4_4, "cis.exe")
                                      if not L5_5 then
                                        L5_5 = string
                                        L5_5 = L5_5.find
                                        L5_5 = L5_5(L4_4, "cistray.exe")
                                        if not L5_5 then
                                          L5_5 = string
                                          L5_5 = L5_5.find
                                          L5_5 = L5_5(L4_4, "cmdagent.exe")
                                          if not L5_5 then
                                            L5_5 = string
                                            L5_5 = L5_5.find
                                            L5_5 = L5_5(L4_4, "cavwp.exe")
                                            if not L5_5 then
                                              L5_5 = string
                                              L5_5 = L5_5.find
                                              L5_5 = L5_5(L4_4, "dragon_updater.exe")
                                              if not L5_5 then
                                                L5_5 = string
                                                L5_5 = L5_5.find
                                                L5_5 = L5_5(L4_4, "mwagent.exe")
                                                if not L5_5 then
                                                  L5_5 = string
                                                  L5_5 = L5_5.find
                                                  L5_5 = L5_5(L4_4, "mwaswer.exe")
                                                  if not L5_5 then
                                                    L5_5 = string
                                                    L5_5 = L5_5.find
                                                    L5_5 = L5_5(L4_4, "consctlx.exe")
                                                    if not L5_5 then
                                                      L5_5 = string
                                                      L5_5 = L5_5.find
                                                      L5_5 = L5_5(L4_4, "avpmapp.exe")
                                                      if not L5_5 then
                                                        L5_5 = string
                                                        L5_5 = L5_5.find
                                                        L5_5 = L5_5(L4_4, "econceal.exe")
                                                        if not L5_5 then
                                                          L5_5 = string
                                                          L5_5 = L5_5.find
                                                          L5_5 = L5_5(L4_4, "escanmon.exe")
                                                          if not L5_5 then
                                                            L5_5 = string
                                                            L5_5 = L5_5.find
                                                            L5_5 = L5_5(L4_4, "escanpro.exe")
                                                            if not L5_5 then
                                                              L5_5 = string
                                                              L5_5 = L5_5.find
                                                              L5_5 = L5_5(L4_4, "traysser.exe")
                                                              if not L5_5 then
                                                                L5_5 = string
                                                                L5_5 = L5_5.find
                                                                L5_5 = L5_5(L4_4, "trayicos.exe")
                                                                if not L5_5 then
                                                                  L5_5 = string
                                                                  L5_5 = L5_5.find
                                                                  L5_5 = L5_5(L4_4, "econser.exe")
                                                                  if not L5_5 then
                                                                    L5_5 = string
                                                                    L5_5 = L5_5.find
                                                                    L5_5 = L5_5(L4_4, "fshdll64.exe")
                                                                    if not L5_5 then
                                                                      L5_5 = string
                                                                      L5_5 = L5_5.find
                                                                      L5_5 = L5_5(L4_4, "fsgk32.exe")
                                                                      if not L5_5 then
                                                                        L5_5 = string
                                                                        L5_5 = L5_5.find
                                                                        L5_5 = L5_5(L4_4, "fhoster32.exe")
                                                                        if not L5_5 then
                                                                          L5_5 = string
                                                                          L5_5 = L5_5.find
                                                                          L5_5 = L5_5(L4_4, "fsma32.exe")
                                                                          if not L5_5 then
                                                                            L5_5 = string
                                                                            L5_5 = L5_5.find
                                                                            L5_5 = L5_5(L4_4, "fsorsp.exe")
                                                                            if not L5_5 then
                                                                              L5_5 = string
                                                                              L5_5 = L5_5.find
                                                                              L5_5 = L5_5(L4_4, "fssm32.exe")
                                                                              if not L5_5 then
                                                                                L5_5 = string
                                                                                L5_5 = L5_5.find
                                                                                L5_5 = L5_5(L4_4, "fsm32.exe")
                                                                                if not L5_5 then
                                                                                  L5_5 = string
                                                                                  L5_5 = L5_5.find
                                                                                  L5_5 = L5_5(L4_4, "trigger.exe")
                                                                                  if not L5_5 then
                                                                                    L5_5 = string
                                                                                    L5_5 = L5_5.find
                                                                                    L5_5 = L5_5(L4_4, "fprottray.exe")
                                                                                    if not L5_5 then
                                                                                      L5_5 = string
                                                                                      L5_5 = L5_5.find
                                                                                      L5_5 = L5_5(L4_4, "fpwin.exe")
                                                                                      if not L5_5 then
                                                                                        L5_5 = string
                                                                                        L5_5 = L5_5.find
                                                                                        L5_5 = L5_5(L4_4, "fpavserver.exe")
                                                                                        if not L5_5 then
                                                                                          L5_5 = string
                                                                                          L5_5 = L5_5.find
                                                                                          L5_5 = L5_5(L4_4, "avk.exe")
                                                                                          if not L5_5 then
                                                                                            L5_5 = string
                                                                                            L5_5 = L5_5.find
                                                                                            L5_5 = L5_5(L4_4, "gdbginx64.exe")
                                                                                            if not L5_5 then
                                                                                              L5_5 = string
                                                                                              L5_5 = L5_5.find
                                                                                              L5_5 = L5_5(L4_4, "avkproxy.exe")
                                                                                              if not L5_5 then
                                                                                                L5_5 = string
                                                                                                L5_5 = L5_5.find
                                                                                                L5_5 = L5_5(L4_4, "gdscan.exe")
                                                                                                if not L5_5 then
                                                                                                  L5_5 = string
                                                                                                  L5_5 = L5_5.find
                                                                                                  L5_5 = L5_5(L4_4, "avkwctlx64.exe")
                                                                                                  if not L5_5 then
                                                                                                    L5_5 = string
                                                                                                    L5_5 = L5_5.find
                                                                                                    L5_5 = L5_5(L4_4, "avkservice.exe")
                                                                                                    if not L5_5 then
                                                                                                      L5_5 = string
                                                                                                      L5_5 = L5_5.find
                                                                                                      L5_5 = L5_5(L4_4, "avktray.exe")
                                                                                                      if not L5_5 then
                                                                                                        L5_5 = string
                                                                                                        L5_5 = L5_5.find
                                                                                                        L5_5 = L5_5(L4_4, "gdkbfltexe32.exe")
                                                                                                        if not L5_5 then
                                                                                                          L5_5 = string
                                                                                                          L5_5 = L5_5.find
                                                                                                          L5_5 = L5_5(L4_4, "gdsc.exe")
                                                                                                          if not L5_5 then
                                                                                                            L5_5 = string
                                                                                                            L5_5 = L5_5.find
                                                                                                            L5_5 = L5_5(L4_4, "virusutilities.exe")
                                                                                                            if not L5_5 then
                                                                                                              L5_5 = string
                                                                                                              L5_5 = L5_5.find
                                                                                                              L5_5 = L5_5(L4_4, "guardxservice.exe")
                                                                                                              if not L5_5 then
                                                                                                                L5_5 = string
                                                                                                                L5_5 = L5_5.find
                                                                                                                L5_5 = L5_5(L4_4, "guardxkickoff_x64.exe")
                                                                                                                if not L5_5 then
                                                                                                                  L5_5 = string
                                                                                                                  L5_5 = L5_5.find
                                                                                                                  L5_5 = L5_5(L4_4, "iptray.exe")
                                                                                                                  if not L5_5 then
                                                                                                                    L5_5 = string
                                                                                                                    L5_5 = L5_5.find
                                                                                                                    L5_5 = L5_5(L4_4, "k7rtscan.exe")
                                                                                                                    if not L5_5 then
                                                                                                                      L5_5 = string
                                                                                                                      L5_5 = L5_5.find
                                                                                                                      L5_5 = L5_5(L4_4, "k7fwsrvc.exe")
                                                                                                                      if not L5_5 then
                                                                                                                        L5_5 = string
                                                                                                                        L5_5 = L5_5.find
                                                                                                                        L5_5 = L5_5(L4_4, "k7pssrvc.exe")
                                                                                                                        if not L5_5 then
                                                                                                                          L5_5 = string
                                                                                                                          L5_5 = L5_5.find
                                                                                                                          L5_5 = L5_5(L4_4, "k7emlpxy.exe")
                                                                                                                          if not L5_5 then
                                                                                                                            L5_5 = string
                                                                                                                            L5_5 = L5_5.find
                                                                                                                            L5_5 = L5_5(L4_4, "k7tsecurity.exe")
                                                                                                                            if not L5_5 then
                                                                                                                              L5_5 = string
                                                                                                                              L5_5 = L5_5.find
                                                                                                                              L5_5 = L5_5(L4_4, "k7avscan.exe")
                                                                                                                              if not L5_5 then
                                                                                                                                L5_5 = string
                                                                                                                                L5_5 = L5_5.find
                                                                                                                                L5_5 = L5_5(L4_4, "k7crvsvc.exe")
                                                                                                                                if not L5_5 then
                                                                                                                                  L5_5 = string
                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                  L5_5 = L5_5(L4_4, "k7sysmon.exe")
                                                                                                                                  if not L5_5 then
                                                                                                                                    L5_5 = string
                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                    L5_5 = L5_5(L4_4, "k7tsmain.exe")
                                                                                                                                    if not L5_5 then
                                                                                                                                      L5_5 = string
                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                      L5_5 = L5_5(L4_4, "k7tsmngr.exe")
                                                                                                                                      if not L5_5 then
                                                                                                                                        L5_5 = string
                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                        L5_5 = L5_5(L4_4, "nanosvc.exe")
                                                                                                                                        if not L5_5 then
                                                                                                                                          L5_5 = string
                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                          L5_5 = L5_5(L4_4, "nanoav.exe")
                                                                                                                                          if not L5_5 then
                                                                                                                                            L5_5 = string
                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                            L5_5 = L5_5(L4_4, "nnf.exe")
                                                                                                                                            if not L5_5 then
                                                                                                                                              L5_5 = string
                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                              L5_5 = L5_5(L4_4, "nvcsvc.exe")
                                                                                                                                              if not L5_5 then
                                                                                                                                                L5_5 = string
                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                L5_5 = L5_5(L4_4, "nbrowser.exe")
                                                                                                                                                if not L5_5 then
                                                                                                                                                  L5_5 = string
                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                  L5_5 = L5_5(L4_4, "nseupdatesvc.exe")
                                                                                                                                                  if not L5_5 then
                                                                                                                                                    L5_5 = string
                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                    L5_5 = L5_5(L4_4, "nfservice.exe")
                                                                                                                                                    if not L5_5 then
                                                                                                                                                      L5_5 = string
                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                      L5_5 = L5_5(L4_4, "nwscmon.exe")
                                                                                                                                                      if not L5_5 then
                                                                                                                                                        L5_5 = string
                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                        L5_5 = L5_5(L4_4, "nfservice.exe")
                                                                                                                                                        if not L5_5 then
                                                                                                                                                          L5_5 = string
                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                          L5_5 = L5_5(L4_4, "njeeves2.exe")
                                                                                                                                                          if not L5_5 then
                                                                                                                                                            L5_5 = string
                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                            L5_5 = L5_5(L4_4, "nvcod.exe")
                                                                                                                                                            if not L5_5 then
                                                                                                                                                              L5_5 = string
                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                              L5_5 = L5_5(L4_4, "nvoy.exe")
                                                                                                                                                              if not L5_5 then
                                                                                                                                                                L5_5 = string
                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                L5_5 = L5_5(L4_4, "zllh.exe")
                                                                                                                                                                if not L5_5 then
                                                                                                                                                                  L5_5 = string
                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                  L5_5 = L5_5(L4_4, "zlh.exe")
                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                    L5_5 = string
                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                    L5_5 = L5_5(L4_4, "nprosec.exe")
                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                      L5_5 = string
                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                      L5_5 = L5_5(L4_4, "zanda.exe")
                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                        L5_5 = string
                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                        L5_5 = L5_5(L4_4, "ns.exe")
                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                          L5_5 = string
                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                          L5_5 = L5_5(L4_4, "acs.exe")
                                                                                                                                                                          if not L5_5 then
                                                                                                                                                                            L5_5 = string
                                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                                            L5_5 = L5_5(L4_4, "op_mon.exe")
                                                                                                                                                                            if not L5_5 then
                                                                                                                                                                              L5_5 = string
                                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                                              L5_5 = L5_5(L4_4, "psanhost.exe")
                                                                                                                                                                              if not L5_5 then
                                                                                                                                                                                L5_5 = string
                                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                                L5_5 = L5_5(L4_4, "psuaservice.exe")
                                                                                                                                                                                if not L5_5 then
                                                                                                                                                                                  L5_5 = string
                                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                                  L5_5 = L5_5(L4_4, "psuamain.exe")
                                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                                    L5_5 = string
                                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                                    L5_5 = L5_5(L4_4, "agentsvc.exe")
                                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                                      L5_5 = string
                                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                                      L5_5 = L5_5(L4_4, "bdssvc.exe")
                                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                                        L5_5 = string
                                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                                        L5_5 = L5_5(L4_4, "emlproxy.exe")
                                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                                          L5_5 = string
                                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                                          L5_5 = L5_5(L4_4, "opssvc.exe")
                                                                                                                                                                                          if not L5_5 then
                                                                                                                                                                                            L5_5 = string
                                                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                                                            L5_5 = L5_5(L4_4, "onlinent.exe")
                                                                                                                                                                                            if not L5_5 then
                                                                                                                                                                                              L5_5 = string
                                                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                                                              L5_5 = L5_5(L4_4, "quhlpsvc.exe")
                                                                                                                                                                                              if not L5_5 then
                                                                                                                                                                                                L5_5 = string
                                                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                                                L5_5 = L5_5(L4_4, "sapissvc.exe")
                                                                                                                                                                                                if not L5_5 then
                                                                                                                                                                                                  L5_5 = string
                                                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                                                  L5_5 = L5_5(L4_4, "scanner.exe")
                                                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                                                    L5_5 = string
                                                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                                                    L5_5 = L5_5(L4_4, "scanwscs.exe")
                                                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                                                      L5_5 = string
                                                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                                                      L5_5 = L5_5(L4_4, "scproxysrv.exe")
                                                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                                                        L5_5 = string
                                                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                                                        L5_5 = L5_5(L4_4, "scsecsvc.exe")
                                                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                                                          L5_5 = string
                                                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                                                          L5_5 = L5_5(L4_4, "superantispyware.exe")
                                                                                                                                                                                                          if not L5_5 then
                                                                                                                                                                                                            L5_5 = string
                                                                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                                                                            L5_5 = L5_5(L4_4, "sascore64.exe")
                                                                                                                                                                                                            if not L5_5 then
                                                                                                                                                                                                              L5_5 = string
                                                                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                                                                              L5_5 = L5_5(L4_4, "ssupdate64.exe")
                                                                                                                                                                                                              if not L5_5 then
                                                                                                                                                                                                                L5_5 = string
                                                                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                                                                L5_5 = L5_5(L4_4, "uiseagnt.exe")
                                                                                                                                                                                                                if not L5_5 then
                                                                                                                                                                                                                  L5_5 = string
                                                                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                                                                  L5_5 = L5_5(L4_4, "ptwatchdog.exe")
                                                                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                                                                    L5_5 = string
                                                                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                                                                    L5_5 = L5_5(L4_4, "ptsvchost.exe")
                                                                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                                                                      L5_5 = string
                                                                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                                                                      L5_5 = L5_5(L4_4, "ptsessionagent.exe")
                                                                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                                                                        L5_5 = string
                                                                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                                                                        L5_5 = L5_5(L4_4, "coreframeworkhost.exe")
                                                                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                                                                          L5_5 = string
                                                                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                                                                          L5_5 = L5_5(L4_4, "coreserviceshell.exe")
                                                                                                                                                                                                                          if not L5_5 then
                                                                                                                                                                                                                            L5_5 = string
                                                                                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                                                                                            L5_5 = L5_5(L4_4, "uiupdatetray.exe")
                                                                                                                                                                                                                            if not L5_5 then
                                                                                                                                                                                                                              L5_5 = string
                                                                                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                                                                                              L5_5 = L5_5(L4_4, "vipreui.exe")
                                                                                                                                                                                                                              if not L5_5 then
                                                                                                                                                                                                                                L5_5 = string
                                                                                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                                                                                L5_5 = L5_5(L4_4, "sbamsvc.exe")
                                                                                                                                                                                                                                if not L5_5 then
                                                                                                                                                                                                                                  L5_5 = string
                                                                                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                                                                                  L5_5 = L5_5(L4_4, "sbamtray.exe")
                                                                                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                                                                                    L5_5 = string
                                                                                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                                                                                    L5_5 = L5_5(L4_4, "sbpimsvc.exe")
                                                                                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                                                                                      L5_5 = string
                                                                                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                                                                                      L5_5 = L5_5(L4_4, "bavhm.exe")
                                                                                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                                                                                        L5_5 = string
                                                                                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                                                                                        L5_5 = L5_5(L4_4, "bavsvc.exe")
                                                                                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                                                                                          L5_5 = string
                                                                                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                                                                                          L5_5 = L5_5(L4_4, "bavtray.exe")
                                                                                                                                                                                                                                          if not L5_5 then
                                                                                                                                                                                                                                            L5_5 = string
                                                                                                                                                                                                                                            L5_5 = L5_5.find
                                                                                                                                                                                                                                            L5_5 = L5_5(L4_4, "bav.exe")
                                                                                                                                                                                                                                            if not L5_5 then
                                                                                                                                                                                                                                              L5_5 = string
                                                                                                                                                                                                                                              L5_5 = L5_5.find
                                                                                                                                                                                                                                              L5_5 = L5_5(L4_4, "bavwebclient.exe")
                                                                                                                                                                                                                                              if not L5_5 then
                                                                                                                                                                                                                                                L5_5 = string
                                                                                                                                                                                                                                                L5_5 = L5_5.find
                                                                                                                                                                                                                                                L5_5 = L5_5(L4_4, "bavupdater.exe")
                                                                                                                                                                                                                                                if not L5_5 then
                                                                                                                                                                                                                                                  L5_5 = string
                                                                                                                                                                                                                                                  L5_5 = L5_5.find
                                                                                                                                                                                                                                                  L5_5 = L5_5(L4_4, "sdscan.exe")
                                                                                                                                                                                                                                                  if not L5_5 then
                                                                                                                                                                                                                                                    L5_5 = string
                                                                                                                                                                                                                                                    L5_5 = L5_5.find
                                                                                                                                                                                                                                                    L5_5 = L5_5(L4_4, "sdfssvc.exe")
                                                                                                                                                                                                                                                    if not L5_5 then
                                                                                                                                                                                                                                                      L5_5 = string
                                                                                                                                                                                                                                                      L5_5 = L5_5.find
                                                                                                                                                                                                                                                      L5_5 = L5_5(L4_4, "sdtray.exe")
                                                                                                                                                                                                                                                      if not L5_5 then
                                                                                                                                                                                                                                                        L5_5 = string
                                                                                                                                                                                                                                                        L5_5 = L5_5.find
                                                                                                                                                                                                                                                        L5_5 = L5_5(L4_4, "unthreat.exe")
                                                                                                                                                                                                                                                        if not L5_5 then
                                                                                                                                                                                                                                                          L5_5 = string
                                                                                                                                                                                                                                                          L5_5 = L5_5.find
                                                                                                                                                                                                                                                          L5_5 = L5_5(L4_4, "utsvc.exe")
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          elseif L5_5 then
            L5_5 = sigattr_tail
            L5_5 = L5_5[L3_3]
            L5_5 = L5_5.utf8p2
            if 1 < string.len(L5_5) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
return L0_0
