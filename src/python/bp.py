import iris

from grongier.pex import BusinessProcess

from msg import BenchMsgStr,BenchMsgObj

import time

from obj import BenchObj

class BenchBp(BusinessProcess):
    
    def on_request(self, message):
        if isinstance(message, BenchMsgStr):
            start = time.perf_counter()
            for i in range(0,1000):
                msg = BenchMsgStr()
                msg.prop1 = "prop1"
                msg.prop2 = "prop2"
                msg.prop3 = "prop3"
                msg.prop4 = "prop4"
                msg.prop5 = "prop5"
                msg.prop6 = "prop6"
                msg.prop7 = "prop7"
                msg.prop8 = "prop8"
                msg.prop9 = "prop9"
                msg.prop10 = "prop10"
                resp = self.send_request_sync("Python.BenchBo",msg)
            end = time.perf_counter()
            self.log_info(str(end - start))

        if isinstance(message, BenchMsgObj):
            start = time.perf_counter()
            for i in range(0,1000):
                msg = BenchMsgObj()
                msg.prop1 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop2 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop3 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop4 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop5 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop6 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop7 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop8 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop9 = BenchObj("str",1,1.1,["1","2","3"])
                msg.prop10 = BenchObj("str",1,1.1,["1","2","3"])
                resp = self.send_request_sync("Python.BenchBo",msg)
            end = time.perf_counter()
            self.log_info(str(end - start))

        return None