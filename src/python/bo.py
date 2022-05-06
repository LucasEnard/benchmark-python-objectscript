import iris

from grongier.pex import BusinessOperation

from msg import BenchMsgStr,BenchMsgObj

class BenchBo(BusinessOperation):

    def on_message(self, message):
        return None

    def on_msg_str(self,message: BenchMsgStr):
        ret = BenchMsgStr()
        ret.prop1 = message.prop1
        ret.prop2 = message.prop2
        ret.prop3 = message.prop3
        ret.prop4 = message.prop4
        ret.prop5 = message.prop5
        ret.prop6 = message.prop6
        ret.prop7 = message.prop7
        ret.prop8 = message.prop8
        ret.prop9 = message.prop9
        ret.prop10 = message.prop10
        return ret

    def on_msg_obj(self,message: BenchMsgObj):
        ret = BenchMsgObj()
        ret.prop1 = message.prop1
        ret.prop2 = message.prop2
        ret.prop3 = message.prop3
        ret.prop4 = message.prop4
        ret.prop5 = message.prop5
        ret.prop6 = message.prop6
        ret.prop7 = message.prop7
        ret.prop8 = message.prop8
        ret.prop9 = message.prop9
        ret.prop10 = message.prop10
        return ret
