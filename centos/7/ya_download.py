import os
from YaDiskClient import YaDisk

disk = YaDisk(os.getenv('YA_LOGIN'), os.getenv('YA_PASS'))
disk.download(os.getenv('YA_SRC'), os.getenv('YA_DST'))