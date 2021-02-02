@echo off

%EW_COMMON_DIR%\bin\cspybat --silent ^
                            %EW_TOOL_DIR%\bin\armproc.dll ^
                            %EW_TOOL_DIR%\bin\armsim2.dll ^
                            --plugin %EW_TOOL_DIR%\bin\armbat.dll ^
                            --debug_file=%EW_BUILD_DIR%\Sources\Tutorial.elf ^
                            --backend ^
                            --endian=little ^
                            --cpu=Cortex-M4 ^
                            --fpu=VFPv4_sp ^
                            --semihosting ^
                            --multicore_nr_of_cores=1