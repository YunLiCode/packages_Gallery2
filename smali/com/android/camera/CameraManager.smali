.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$1;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersIsDirty:Z

.field private mParamsToSet:Landroid/hardware/Camera$Parameters;

.field private mReconnectIOException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraManager;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraManager;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/camera/CameraManager;->mParametersIsDirty:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mParametersIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 275
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2    # "cb":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 276
    return-void
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraManager;->mParametersIsDirty:Z

    .line 290
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    .line 293
    :cond_0
    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    .line 295
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
