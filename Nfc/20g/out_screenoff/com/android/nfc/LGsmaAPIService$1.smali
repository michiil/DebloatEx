.class Lcom/android/nfc/LGsmaAPIService$1;
.super Landroid/content/BroadcastReceiver;
.source "LGsmaAPIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LGsmaAPIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LGsmaAPIService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LGsmaAPIService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService$1;->this$0:Lcom/android/nfc/LGsmaAPIService;

    .line 756
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 760
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 761
    :cond_4
    const-string v1, "LGsmaAPIService"

    const-string v2, "invaild sequence (context of intent is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_b
    :goto_b
    return-void

    .line 764
    :cond_c
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService$1;->this$0:Lcom/android/nfc/LGsmaAPIService;

    # getter for: Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/nfc/LGsmaAPIService;->access$0(Lcom/android/nfc/LGsmaAPIService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 765
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/nfc/LGsmaAPIService;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LGsmaAPIService;->access$1()Z

    move-result v1

    const-string v2, "LGsmaAPIService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Broadcast receiver action : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v1, "com.lge.nfc.action.GSMA_NFC_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 768
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService$1;->this$0:Lcom/android/nfc/LGsmaAPIService;

    iget-object v1, v1, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    if-eqz v1, :cond_b

    .line 771
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService$1;->this$0:Lcom/android/nfc/LGsmaAPIService;

    iget-object v1, v1, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    goto :goto_b
.end method
