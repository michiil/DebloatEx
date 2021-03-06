.class public final Lcom/android/nfc/snep/SnepServer;
.super Ljava/lang/Object;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/snep/SnepServer$Callback;,
        Lcom/android/nfc/snep/SnepServer$ConnectionThread;,
        Lcom/android/nfc/snep/SnepServer$ServerThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_MIU:I = 0xf8

.field public static final DEFAULT_PORT:I = 0x4

.field private static final DEFAULT_RW_SIZE:I = 0x1

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "SnepServer"


# instance fields
.field final mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mFragmentLength:I

.field final mMiu:I

.field final mRwSize:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

.field final mServiceName:Ljava/lang/String;

.field final mServiceSap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 63
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 64
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 67
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V
    .registers 5
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 81
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 82
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 85
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 86
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "fragmentLength"    # I
    .param p4, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 90
    iput-object p4, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 91
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 93
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 94
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 72
    iput-object p3, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 73
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 76
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 78
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    return v0
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    .registers 9
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x3e

    const/4 v2, 0x1

    .line 145
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_6
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_3 .. :try_end_6} :catch_1b

    move-result-object v1

    .line 157
    .local v1, "request":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    if-eq v3, v2, :cond_32

    .line 159
    const/16 v3, -0x1f

    .line 158
    invoke-static {v3}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 171
    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :goto_1a
    return v2

    .line 146
    :catch_1b
    move-exception v0

    .line 147
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    sget-boolean v2, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v2, :cond_27

    const-string v2, "SnepServer"

    const-string v3, "Bad snep message"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :cond_27
    const/16 v2, -0x3e

    .line 149
    :try_start_29
    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_a2

    .line 154
    :goto_30
    const/4 v2, 0x0

    goto :goto_1a

    .line 160
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :cond_32
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-ne v3, v2, :cond_48

    .line 161
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v3

    .line 162
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 161
    invoke-interface {p1, v3, v4}, Lcom/android/nfc/snep/SnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_1a

    .line 163
    :cond_48
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_77

    .line 164
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_6b

    const-string v3, "SnepServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putting message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_6b
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/nfc/snep/SnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_1a

    .line 167
    :cond_77
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_99

    const-string v3, "SnepServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown request ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_99
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_1a

    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    .restart local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catch_a2
    move-exception v2

    goto :goto_30
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "SnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start, thread = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-nez v0, :cond_39

    .line 269
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "SnepServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2a
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepServer$ServerThread;-><init>(Lcom/android/nfc/snep/SnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 271
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->start()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 266
    :cond_39
    monitor-exit p0

    .line 275
    return-void

    .line 266
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "SnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop, thread = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-eqz v0, :cond_35

    .line 281
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "SnepServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->shutdown()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 278
    :cond_35
    monitor-exit p0

    .line 287
    return-void

    .line 278
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method
