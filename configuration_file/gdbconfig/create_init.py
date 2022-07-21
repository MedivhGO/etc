#!/bin/python3
import sys
import os
print (os.path)
pwd = os.path.dirname(os.path.realpath(sys.argv[0]));
file_name = "gdbinit"
binaryfile_bin_complie_path = "/mnt/disk1/release/git_repository/release_2105";
binaryfile_real_complie_path = "/home/dailybuild09/111/111";
ofs = open(pwd + os.path.sep + file_name, "w");
gdb_str = '''
python
import sys 
sys.path.insert(0, \'''' + pwd + os.path.sep + "python" + os.path.sep + '''python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
echo source ''' + pwd + os.path.sep + '''stl-views-1.0.3.gdb \\n
source ''' + pwd + os.path.sep + '''stl-views-1.0.3.gdb 
echo handle SIGSEGV nostop noprint \\n
handle SIGSEGV nostop noprint
echo handle SIGPIPE stop print \\n
handle SIGPIPE stop print
echo source gdb.cfg \\n
source gdb.cfg
echo set soure code path \\n
set substitute-path  ''' + binaryfile_bin_complie_path + " " + binaryfile_real_complie_path
print(gdb_str);
ofs.write(gdb_str);
