import os
import shutil
from YaDiskClient import YaDisk

try:
	os.remove(os.getenv('YA_DST'))
except OSError:
    pass	

shutil.rmtree('tmp', ignore_errors=True, onerror=None)	
	
disk = YaDisk(os.getenv('YA_LOGIN'), os.getenv('YA_PASS'))
disk.download(os.getenv('YA_SRC'), os.getenv('YA_DST'))