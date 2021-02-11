/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/

#include "timer_intr.h"

volatile int TcpTmrFlag;


static void TimerIntrHandler(void *CallBackRef)
{

    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;
    XScuTimer_ClearInterruptStatus(TimerInstancePtr);
	TcpTmrFlag = 1;
	//isrDone++;
}
void Timer_start(XScuTimer *TimerPtr)
{
	    XScuTimer_Start(TimerPtr);
}

void Timer_Setup_Intr_System(XScuGic *GicInstancePtr,XScuTimer *TimerInstancePtr, u16 TimerIntrId)
{
        XScuGic_Connect(GicInstancePtr, TimerIntrId,
                        (Xil_ExceptionHandler)TimerIntrHandler,//set up the timer interrupt
                        (void *)TimerInstancePtr);

        XScuGic_Enable(GicInstancePtr, TimerIntrId);//enable the interrupt for the Timer at GIC
        XScuTimer_EnableInterrupt(TimerInstancePtr);//enable interrupt on the timer
 }

int Timer_init(XScuTimer *TimerPtr,u32 Load_Value,u32 DeviceId)
{
     XScuTimer_Config *TMRConfigPtr;     //timer config
     //私有定时器初始化
     TMRConfigPtr = XScuTimer_LookupConfig(DeviceId);
     XScuTimer_CfgInitialize(TimerPtr, TMRConfigPtr,TMRConfigPtr->BaseAddr);
     //XScuTimer_SelfTest(&Timer);
     //加载计数周期，私有定时器的时钟为CPU的一半，为333MHZ,如果计数1S,加载值为1sx(333x1000x1000)(1/s)-1=0x13D92D3F
     XScuTimer_LoadTimer(TimerPtr, Load_Value);//F8F00600+0=reg=F8F00600
     //自动装载
     XScuTimer_EnableAutoReload(TimerPtr);//F8F00600+8=reg=F8F00608

     return 1;
}
